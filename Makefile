# Default target. Verify the checksums of the built ROM and overlays.

ROM := goldensun.gba
OVERLAYS := $(patsubst %.ld,%.bin,$(wildcard overlays/*/overlay.ld))

.PHONY: compare compare-rom compare-overlays
compare: compare-rom compare-overlays

compare-rom: goldensun.sha1 $(ROM)
	sha1sum -c $<

COMPARE_OVERLAYS := $(OVERLAYS:%/overlay.bin=compare-%)

compare-overlays: $(COMPARE_OVERLAYS)

$(COMPARE_OVERLAYS): compare-%: %/orig.bin %/overlay.bin
	cmp $*/orig.bin $*/overlay.bin

# Empty clean target. Recipes will be added below.
.PHONY: clean
clean::

# The ROM image includes compressed code overlays.
# The overlays reference symbols defined in the main executable.
# We partially link the main executable; build the overlays against it;
# compress the overlays; and then link the final image.

ARM_LDFLAGS :=
ARM_LDLIBS :=
LINK_BASE_FLAGS := $(ARM_LDFLAGS) $(ARM_LDLIBS)

# Partially linked relocatable object
STAGE1 := stage1.o
$(STAGE1): %.o: %.ld
$(STAGE1): private ARM_LDFLAGS += -r

# Overlays reference symbols defined in main code
OVERLAY_ELFS := $(OVERLAYS:.bin=.elf)
$(OVERLAY_ELFS): %.elf: %.ld $(STAGE1)
$(OVERLAY_ELFS): private ARM_LDLIBS += -R $(STAGE1)

# Final fully linked executable
ELF := $(ROM:.gba=.elf)
$(ELF): %.elf: %.ld

# All of the above
ELFS := $(STAGE1) $(ELF) $(OVERLAY_ELFS)
$(ELFS):
	arm-none-eabi-ld $(ARM_LDFLAGS) -T $< $(ARM_LDLIBS) -Map $(<:.ld=.map) -o $@

# Include recursive linker-script inputs as well as explicitly linked objects.
# Querying compiler settings and cleaning do not need a configured build tree.
ifneq ($(filter-out clean print-compile-contract,$(MAKECMDGOALS)),)
READ_BUILD_DEPS := 1
else ifeq ($(MAKECMDGOALS),)
READ_BUILD_DEPS := 1
endif
ifeq ($(READ_BUILD_DEPS),1)
define newline


endef
LINK_DEP_RULES := $(shell python3 tools/build_deps.py linker $(ELFS))
ifneq ($(.SHELLSTATUS),0)
$(error Failed to read linker dependencies)
endif
$(eval $(subst |,$(newline),$(LINK_DEP_RULES)))
endif

# Convert executables to free-standing binaries
$(ROM) $(OVERLAYS):
	arm-none-eabi-objcopy -O binary $< $@

$(ROM): %.gba: %.elf

$(OVERLAYS): %.bin: %.elf


# Compile target C with the patched gcc-2.96 build from the camelot-gcc
# repository (install via camelot-gcc/install.sh). Produces byte-identical
# output for the reconstructed sources (see INSTALL.md).
# Pipeline: xgcc -S (driver internal cpp -> cc1) -> trailing .align -> as.
# Karathan's -fcall-used-r4 flag is required for byte match. -ffixed-r7 is
# NOT needed under gcc-2.96; the compiler naturally avoids r7 for the same
# allocation patterns Camelot did. Trailing .align 2, 0 is required because
# gcc emits .align with zero-fill BETWEEN functions (via the elf.h patch)
# but NOT AFTER the last function in a TU, so the assembler's default
# Thumb-nop fill leaks in without this explicit append.
GCC296_DIR     ?= tools/gcc296
GCC296_CC      := $(GCC296_DIR)/xgcc
# -fno-strict-aliasing is applied to every gcc-2.96 TU. goma_cave's
# OvlFunc_906_20084f4 reproduces the ROM only with type-based alias analysis off,
# and the flag is byte-compatible across the rest of the C codebase: the full ROM
# builds byte-exact under it. Per-file overrides below vary other axes.
GCC296_CFLAGS  := -B$(GCC296_DIR)/ -O2 -mthumb -mthumb-interwork -mcpu=arm7tdmi \
                  -fno-builtin -nostdinc -ffreestanding \
                  -fcall-used-r4 -Iinclude -fno-strict-aliasing

%.o: %.c .build/gcc296.stamp .build/binutils.stamp
	python3 tools/build_deps.py c $@ $(GCC296_CC) $(GCC296_CFLAGS) -M $<
	$(GCC296_CC) $(GCC296_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -MD $(@:.o=.d) -o $@ $(@:.o=.s)
	@python3 tools/build_deps.py phony $(@:.o=.d)

# Cross-dir rule: build asm/<path>/X.o from src/<path>/X.c. Load-bearing for the
# consolidated map overlays: each overlays/rom_*/overlay.ld references
# asm/maps/<name>.o, whose matched-C source-of-truth lives at src/maps/<name>.c.
# Generates asm/<path>/X.s as a build intermediate alongside the .o.
asm/%.o: src/%.c .build/gcc296.stamp .build/binutils.stamp
	mkdir -p $(dir $@)
	python3 tools/build_deps.py c $@ $(GCC296_CC) $(GCC296_CFLAGS) -M $<
	$(GCC296_CC) $(GCC296_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -MD $(@:.o=.d) -o $@ $(@:.o=.s)
	@python3 tools/build_deps.py phony $(@:.o=.d)

# The common2 shared object was compiled WITHOUT -mthumb-interwork in the original
# ROM: its common2_c* functions return `pop {pc}` (the non-interwork epilogue),
# unique in the corpus; every other TU returns `bx`-form. The rest of the
# consolidated TU (common2_b) is interwork-INSENSITIVE (byte-identical either way,
# verified), so the whole common2.c compiles non-interwork. Mirrors the
# src/lib/m4a/%.o per-file override precedent below.
COMMON2_CFLAGS := $(filter-out -mthumb-interwork,$(GCC296_CFLAGS))
asm/maps/common/common2.o: src/maps/common/common2.c .build/gcc296.stamp .build/binutils.stamp
	python3 tools/build_deps.py c $@ $(GCC296_CC) $(COMMON2_CFLAGS) -M $<
	$(GCC296_CC) $(COMMON2_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -MD $(@:.o=.d) -o $@ $(@:.o=.s)
	@python3 tools/build_deps.py phony $(@:.o=.d)

# src/lib/m4a/ is the stock m4a / "Sappy" engine, prebuilt by Nintendo with
# old_agbcc (signed char, old ABI), NOT Camelot's gcc296. Per-file rule mirrors
# sa2/Makefile's CC1_OLD override. -D M4A_SIGNED_CHAR gives the engine a signed
# s8 (its ROM loads are signed) without touching the rest of the unsigned-char
# corpus. See INSTALL.md for compiler setup.
AGBCC_DIR     ?= tools/agbcc
M4A_CPPFLAGS  := -nostdinc -I$(AGBCC_DIR)/include -Iinclude -D PLATFORM_GBA=1 -D M4A_SIGNED_CHAR
M4A_CC1FLAGS  := -Wimplicit -Wparentheses -fhex-asm -mthumb-interwork -O2

src/lib/m4a/%.o: src/lib/m4a/%.c .build/agbcc.stamp .build/binutils.stamp
	python3 tools/build_deps.py c $@ gcc $(M4A_CPPFLAGS) -M $<
	gcc -E $(M4A_CPPFLAGS) $< -o $(@:.o=.i)
	$(AGBCC_DIR)/bin/old_agbcc $(M4A_CC1FLAGS) -o $(@:.o=.s) $(@:.o=.i)
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -MD $(@:.o=.d) -o $@ $(@:.o=.s)
	@python3 tools/build_deps.py phony $(@:.o=.d)

# src/lib/agb_flash/ is the launch-SDK "Flash v123" save library. Like m4a it is a
# prebuilt Nintendo lib (old_agbcc, stock r4-callee-save ABI); but -O not -O2, and
# unsigned char (no M4A_SIGNED_CHAR). The lone gcc-2.96 holdout agb_flash_verify.c
# (VerifyEraseSector) rides the default %.o:%.c rule instead.
AGBFLASH_CPPFLAGS := -nostdinc -I$(AGBCC_DIR)/include -Iinclude -D PLATFORM_GBA=1
AGBFLASH_CC1FLAGS := -Wimplicit -Wparentheses -fhex-asm -mthumb-interwork -O

src/lib/agb_flash/agb_flash.o: src/lib/agb_flash/agb_flash.c .build/agbcc.stamp .build/binutils.stamp
	python3 tools/build_deps.py c $@ gcc $(AGBFLASH_CPPFLAGS) -M $<
	gcc -E $(AGBFLASH_CPPFLAGS) $< -o $(@:.o=.i)
	$(AGBCC_DIR)/bin/old_agbcc $(AGBFLASH_CC1FLAGS) -o $(@:.o=.s) $(@:.o=.i)
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -MD $(@:.o=.d) -o $@ $(@:.o=.s)
	@python3 tools/build_deps.py phony $(@:.o=.d)

src/lib/agb_flash/agb_flash_mx.o: src/lib/agb_flash/agb_flash_mx.c .build/agbcc.stamp .build/binutils.stamp
	python3 tools/build_deps.py c $@ gcc $(AGBFLASH_CPPFLAGS) -M $<
	gcc -E $(AGBFLASH_CPPFLAGS) $< -o $(@:.o=.i)
	$(AGBCC_DIR)/bin/old_agbcc $(AGBFLASH_CC1FLAGS) -o $(@:.o=.s) $(@:.o=.i)
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -MD $(@:.o=.d) -o $@ $(@:.o=.s)
	@python3 tools/build_deps.py phony $(@:.o=.d)

src/lib/agb_flash/agb_flash_at.o: src/lib/agb_flash/agb_flash_at.c .build/agbcc.stamp .build/binutils.stamp
	python3 tools/build_deps.py c $@ gcc $(AGBFLASH_CPPFLAGS) -M $<
	gcc -E $(AGBFLASH_CPPFLAGS) $< -o $(@:.o=.i)
	$(AGBCC_DIR)/bin/old_agbcc $(AGBFLASH_CC1FLAGS) -o $(@:.o=.s) $(@:.o=.i)
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -MD $(@:.o=.d) -o $@ $(@:.o=.s)
	@python3 tools/build_deps.py phony $(@:.o=.d)

# Assemble ARM code and generate dependencies
%.o: %.s .build/binutils.stamp
	arm-none-eabi-as -mcpu=arm7tdmi -Iinclude -MD $(@:.o=.d) -o $@ $<
	@python3 tools/build_deps.py phony $(@:.o=.d)


# src/lib/m4a/ excluded from the default gcc296 C_SRCS (built by the rule above).
C_SRCS  := $(filter-out src/lib/m4a/%,$(wildcard *.c */*.c */*/*.c))
C_OBJS  := $(C_SRCS:.c=.o)
C_GEN_S := $(C_SRCS:.c=.s)
C_GEN_I := $(C_SRCS:.c=.i)

# Both compiler and assembler dependencies, at arbitrary source depth.
ifeq ($(READ_BUILD_DEPS),1)
DEPS := $(shell find asm src data exports overlays -name '*.d' -type f 2>/dev/null)
-include $(DEPS)
endif

# Clean target.
#
# The legacy wildcard-derived lists (OBJS, C_OBJS, C_GEN_S, C_GEN_I) only go
# to depth 3, so they silently miss overlay sources at depth 4 and the
# cross-dir-rule .s artifacts at asm/<rel>/<name>.s. Replaced with a
# find-based sweep that's depth-agnostic. DEPS is still computed above
# because -include needs it; we don't reference it here (find catches .d).
.PHONY: clean
LDS  := $(wildcard *.ld */*/*.ld)
MAPS := $(LDS:.ld=.map)
clean::
	-$(RM) $(ROM) $(OVERLAYS) $(ELFS) $(MAPS) tags
	-find asm src overlays -type f \( -name '*.o' -o -name '*.d' -o -name '*.i' \) -delete 2>/dev/null
	-find src -name '*.c' -printf '%P\n' 2>/dev/null | sed 's|\.c$$|.s|' | \
	    while read rel; do $(RM) "src/$$rel" "asm/$$rel"; done

# Builds ctags using custom parsing on top of asm.
# Ensure https://github.com/universal-ctags/ctags is installed to use.
# Generates build artifact `tags`. .PHONY so the index refreshes as
# matches land (the recipe writes a file literally named `tags`).
.PHONY: tags
tags:
	ctags -R --options=.opts.ctags .

# Tools are compiled for the host and used during the build.

TOOLS := tools/pack_overlay \
	 tools/pack_strings \
	 tools/unpack_overlay \
	 tools/unpack_strings

CPPFLAGS += -MMD
CFLAGS ?= -O2 -Wall

# Host tool build; explicit rules so they override the generic %.o:%.c
# (which points at the gcc-2.96 target pipeline above). The tools/ prefix
# makes these rules more-specific than the generic ones.
tools/%.o: tools/%.c .build/host.stamp
	$(CC) $(CPPFLAGS) $(CFLAGS) -c -o $@ $<

tools/%: tools/%.o
	$(CC) -o $@ $<

$(TOOLS):

TOOL_SRCS := $(wildcard tools/*.c)
TOOL_OBJS := $(TOOL_SRCS:.c=.o)
TOOL_DEPS := $(TOOL_OBJS:.o=.d)
.SECONDARY: $(TOOL_OBJS)

-include $(TOOL_DEPS)

clean::
	-$(RM) $(TOOLS) $(TOOL_OBJS) $(TOOL_DEPS)


data/strings/strings.s: data/strings/strings.txt tools/pack_strings
	tools/pack_strings -i $< -o $(dir $@)

data/strings/strings.txt: baserom.gba tools/unpack_strings
	mkdir -p $(dir $@)
	tools/unpack_strings -r $< -o $@


OVERLAY_LZS := $(OVERLAYS:.bin=.lz)

$(OVERLAY_LZS): %.lz: %.bin tools/pack_overlay
	tools/pack_overlay -i $< -o $@

data/rom_320000/rom_320000.s: $(OVERLAY_LZS)

clean::
	-$(RM) -r data/strings $(OVERLAY_LZS)


# We need the uncompressed overlays for incbin statements in overlay
# sources. They're also convenient for comparing our build outputs.

OVERLAY_DIRS := $(dir $(OVERLAYS))

define overlay_orig_deps
$(patsubst %.s,%.o,$(wildcard asm/$(strip $(1))*.s)): %.o: $(strip $(1))orig.bin
endef
$(foreach overlay_dir,$(OVERLAY_DIRS),$(eval $(call overlay_orig_deps, $(overlay_dir))))

# The shared common objects .incbin an overlay's orig.bin (common0 directly;
# common1/common2 via the data fragment INCLUDE_ASM'd into their consolidated TU),
# so each needs that orig.bin extracted before it assembles under `make -j`.
asm/maps/common/common0.o: overlays/rom_78ef88/orig.bin
asm/maps/common/common1.o: overlays/rom_7db0c8/orig.bin
asm/maps/common/common2.o: overlays/rom_7bf5a8/orig.bin

# Consolidated map TUs (src/maps/<name>.c) pull their unmatched .data/.bss via an
# INCLUDE_ASM'd asm/maps/<name>/*.s body that .incbin's the overlay's orig.bin.
# The object is asm/maps/<name>.o, not under asm/overlays/, so the macro above
# does not reach it; declare the dep by scanning each body for its incbin target
# (empty for bodies that don't incbin -> harmless). Fixes `make clean && make`.
define map_orig_deps
asm/maps/$(1).o: $(shell grep -hoE 'overlays/rom_[0-9a-f]+/orig\.bin' asm/maps/$(1)/*.s 2>/dev/null | sort -u)
endef
$(foreach n,$(patsubst src/maps/%.c,%,$(wildcard src/maps/*.c)),$(eval $(call map_orig_deps,$(n))))

overlays/rom_%/orig.bin: baserom.gba tools/unpack_overlay
	tools/unpack_overlay -r $< -a 0x$* -o $@

clean::
	-$(RM) $(addsuffix orig.bin,$(OVERLAY_DIRS))

# Machine-readable compilation settings for external comparison tools.
# SOURCE is the original src/... C path, even when compiling a scratch copy.
.PHONY: print-compile-contract
print-compile-contract:
	@printf '%s\n' '$(if $(filter src/lib/m4a/% src/lib/agb_flash/agb_flash.c src/lib/agb_flash/agb_flash_mx.c src/lib/agb_flash/agb_flash_at.c,$(SOURCE)),agbcc,gcc296)' '$(GCC296_CC)' '$(if $(filter src/maps/common/common2.c,$(SOURCE)),$(COMMON2_CFLAGS),$(GCC296_CFLAGS))' '$(AGBCC_DIR)/bin/old_agbcc' '$(if $(filter src/lib/m4a/%,$(SOURCE)),$(M4A_CPPFLAGS),$(AGBFLASH_CPPFLAGS))' '$(if $(filter src/lib/m4a/%,$(SOURCE)),$(M4A_CC1FLAGS),$(AGBFLASH_CC1FLAGS))'

# Fingerprints change only when tool contents or command settings change.
# A phony prerequisite runs the inexpensive check each invocation; unchanged
# stamp mtimes do not rebuild their consumers. Failed recipes cannot leave a
# newly truncated object that a later invocation treats as current.
.DELETE_ON_ERROR:
.PHONY: FORCE
FORCE:
.build/gcc296.stamp: FORCE
	@python3 tools/build_deps.py stamp $@ --tool $(GCC296_CC) --tool $(GCC296_DIR)/cc1 --tool $(GCC296_DIR)/cpp --tool $(GCC296_DIR)/tradcpp --value='$(GCC296_CFLAGS)' --value='$(COMMON2_CFLAGS)'
.build/agbcc.stamp: FORCE
	@python3 tools/build_deps.py stamp $@ --tool $(AGBCC_DIR)/bin/old_agbcc --tool gcc --value='$(M4A_CPPFLAGS) $(M4A_CC1FLAGS)' --value='$(AGBFLASH_CPPFLAGS) $(AGBFLASH_CC1FLAGS)'
.build/binutils.stamp: FORCE
	@python3 tools/build_deps.py stamp $@ --tool arm-none-eabi-as --tool arm-none-eabi-ld --tool arm-none-eabi-objcopy --value='$(LINK_BASE_FLAGS)'
.build/host.stamp: FORCE
	@python3 tools/build_deps.py stamp $@ --tool $(firstword $(CC)) --value='$(CC) $(CPPFLAGS) $(CFLAGS)'
$(ELFS): .build/binutils.stamp
$(TOOLS): .build/host.stamp
clean::
	-$(RM) -r .build
