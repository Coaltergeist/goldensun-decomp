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

# Partially linked relocatable object
STAGE1 := stage1.o
$(STAGE1): %.o: %.ld
$(STAGE1): ARM_LDFLAGS += -r

# Overlays reference symbols defined in main code
OVERLAY_ELFS := $(OVERLAYS:.bin=.elf)
$(OVERLAY_ELFS): %.elf: %.ld $(STAGE1)
$(OVERLAY_ELFS): ARM_LDLIBS += -R $(STAGE1)

# Final fully linked executable
ELF := $(ROM:.gba=.elf)
$(ELF): %.elf: %.ld

# All of the above
ELFS := $(STAGE1) $(ELF) $(OVERLAY_ELFS)
$(ELFS):
	arm-none-eabi-ld $(ARM_LDFLAGS) -T $< $(ARM_LDLIBS) -Map $(<:.ld=.map) -o $@

# Read dependencies from the linker scripts
define elf_deps
$(1): $(shell grep -o '[A-Za-z0-9/_-]\+\.o' $(addsuffix .ld,$(basename $(1))))
endef
$(foreach elf,$(ELFS),$(eval $(call elf_deps,$(elf))))


# Convert executables to free-standing binaries
$(ROM) $(OVERLAYS):
	arm-none-eabi-objcopy -O binary $< $@

$(ROM): %.gba: %.elf

$(OVERLAYS): %.bin: %.elf


# Assemble ARM code and generate dependencies
%.o: %.s
	arm-none-eabi-as -mcpu=arm7tdmi -Iinclude -MD $(@:.o=.d) -o $@ $<

# Compile target C with the patched gcc-2.96 build from the camelot-gcc
# submodule (install via camelot-gcc/install-296.sh). Produces byte-identical
# output to Camelot's original compiler (see compiler.md).
# Pipeline: xgcc -S (driver internal cpp -> cc1) -> trailing .align -> as.
# Karathan's -fcall-used-r4 flag is required for byte match. -ffixed-r7 is
# NOT needed under gcc-2.96; the compiler naturally avoids r7 for the same
# allocation patterns Camelot did. Trailing .align 2, 0 is required because
# gcc emits .align with zero-fill BETWEEN functions (via the elf.h patch)
# but NOT AFTER the last function in a TU, so the assembler's default
# Thumb-nop fill leaks in without this explicit append.
GCC296_DIR     ?= tools/gcc296
GCC296_CC      := $(GCC296_DIR)/xgcc
GCC296_CFLAGS  := -B$(GCC296_DIR)/ -O2 -mthumb -mthumb-interwork -mcpu=arm7tdmi \
                  -fno-builtin -nostdinc -ffreestanding \
                  -fcall-used-r4 -Iinclude

%.o: %.c
	$(GCC296_CC) $(GCC296_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)

# Cross-dir rule: build asm/<bank>/X.o from src/<bank>/X.c. Used by the
# split-multifn workflow (tools/split_multifn_s.py); matched .c source-of-
# truth lives at src/<bank>/X.c per the 3.5c layout, but the linker keeps
# referencing asm/<bank>/X.o. Generates asm/<bank>/X.s as a build
# intermediate alongside the .o; safe to commit per the existing matched-
# corpus convention, or leave as a build artifact (regenerable from the .c).
asm/%.o: src/%.c
	$(GCC296_CC) $(GCC296_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)

# overlays/common/common2_c was compiled WITHOUT -mthumb-interwork in the
# original ROM: all 14 of its functions return `pop {pc}` (the non-interwork
# epilogue), unique in the corpus; every other TU returns `bx`-form. Drop
# interwork for this one stem so the epilogue byte-matches. Pattern (not explicit)
# so it also covers the splitter's matched _b children (common2_c_b.o, ...). Mirrors
# the src/lib/m4a/%.o per-file override precedent below. Verified: a common2 fn compiled
# without -mthumb-interwork emits `pop {pc}`.
COMMON2_CFLAGS := $(filter-out -mthumb-interwork,$(GCC296_CFLAGS))
asm/overlays/common/common2_c%.o: src/overlays/common/common2_c%.c
	$(GCC296_CC) $(COMMON2_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)

# Two overlay TUs verify byte-exact only at -O1 (probed 2026-07-15: the same
# C bodies sit at a stable 2-line diff under -O2 and byte-match the ROM the
# moment -O2 becomes -O1; every other candidate in the corpus stays a fail at
# -O1/-Os, so this is a per-file flag choice in the original build, not a
# global alternative). Pattern form covers the splitter's future children of
# these stems, mirroring the common2_c precedent above.
O1_CFLAGS := $(subst -O2,-O1,$(GCC296_CFLAGS))
asm/overlays/rom_7ed0a0/ovl_30_c_c_c_a_a%.o: src/overlays/rom_7ed0a0/ovl_30_c_c_c_a_a%.c
	$(GCC296_CC) $(O1_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)
asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_c%.o: src/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_c%.c
	$(GCC296_CC) $(O1_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)
asm/overlays/rom_7ed0a0/ovl_30_a_c_a_a%.o: src/overlays/rom_7ed0a0/ovl_30_a_c_a_a%.c
	$(GCC296_CC) $(O1_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)
# 2026-07-16 fakematch de-hack sweep: the TUs below verify byte-exact with
# their asm scaffolds removed only at -O1 (equivalently
# -O2 -fno-schedule-insns2); the same per-file flag choice in the original
# build as the rules above. Pattern form covers the splitter's future
# children of a stem; exact-file form is used where a sibling under the
# same stem verifies only at -O2 (per-file flag mixing).
# TODO: consolidate the TUs 
# Exact-file form (2026-07-17): the pattern ovl_30_c_c_c_a_c% swallowed the
# new split child ovl_30_c_c_c_a_c_c_c_b.c, whose match verifies only at -O2
# (judge -O2 pass, in-tree -O1 build failed compare-rom); per-file flag
# mixing inside this chain, so the TU boundary sits between _c_c_b and _c_c_c.
asm/overlays/rom_77dd1c/ovl_30_c_c_c_a_c_b.o: src/overlays/rom_77dd1c/ovl_30_c_c_c_a_c_b.c
	$(GCC296_CC) $(O1_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)
asm/overlays/rom_77dd1c/ovl_30_c_c_c_a_c_c_b.o: src/overlays/rom_77dd1c/ovl_30_c_c_c_a_c_c_b.c
	$(GCC296_CC) $(O1_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)
asm/overlays/rom_78603c/ovl_30_c_c_a_c_a%.o: src/overlays/rom_78603c/ovl_30_c_c_a_c_a%.c
	$(GCC296_CC) $(O1_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)
asm/overlays/rom_7987ac/ovl_30_c_c_a_a_c_a%.o: src/overlays/rom_7987ac/ovl_30_c_c_a_a_c_a%.c
	$(GCC296_CC) $(O1_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)
asm/overlays/rom_7aa430/ovl_e90_c_c_a_a%.o: src/overlays/rom_7aa430/ovl_e90_c_c_a_a%.c
	$(GCC296_CC) $(O1_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)
asm/overlays/rom_7b4558/ovl_30_c_c_a_c_a%.o: src/overlays/rom_7b4558/ovl_30_c_c_a_c_a%.c
	$(GCC296_CC) $(O1_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)
asm/overlays/rom_7b7f1c/ovl_30_c_c_a_c_c_c_a%.o: src/overlays/rom_7b7f1c/ovl_30_c_c_a_c_c_c_a%.c
	$(GCC296_CC) $(O1_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)
asm/overlays/rom_7b7f1c/ovl_30_c_c_a_c_c_c_c%.o: src/overlays/rom_7b7f1c/ovl_30_c_c_a_c_c_c_c%.c
	$(GCC296_CC) $(O1_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)
asm/overlays/rom_7ed0a0/ovl_30_c_c_c_a%.o: src/overlays/rom_7ed0a0/ovl_30_c_c_c_a%.c
	$(GCC296_CC) $(O1_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)
asm/overlays/rom_7ef4f4/ovl_30_a_c_c_c_c_c%.o: src/overlays/rom_7ef4f4/ovl_30_a_c_c_c_c_c%.c
	$(GCC296_CC) $(O1_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)
asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_a%.o: src/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_a%.c
	$(GCC296_CC) $(O1_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)
asm/overlays/rom_7ac2d8/ovl_35b8_a_a_a_b.o: src/overlays/rom_7ac2d8/ovl_35b8_a_a_a_b.c
	$(GCC296_CC) $(O1_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)
asm/overlays/rom_7ac2d8/ovl_35b8_a_a_a_c_b.o: src/overlays/rom_7ac2d8/ovl_35b8_a_a_a_c_b.c
	$(GCC296_CC) $(O1_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)

# src/lib/m4a/ is the stock m4a / "Sappy" engine, prebuilt by Nintendo with
# old_agbcc (signed char, old ABI), NOT Camelot's gcc296. Per-file rule mirrors
# sa2/Makefile's CC1_OLD override. -D M4A_SIGNED_CHAR gives the engine a signed
# s8 (its ROM loads are signed) without touching the rest of the unsigned-char
# corpus. See SAPPY_IMPORT_PLAN.md.
AGBCC_DIR     ?= tools/agbcc
M4A_CPPFLAGS  := -nostdinc -I$(AGBCC_DIR)/include -Iinclude -D PLATFORM_GBA=1 -D M4A_SIGNED_CHAR
M4A_CC1FLAGS  := -Wimplicit -Wparentheses -fhex-asm -mthumb-interwork -O2

src/lib/m4a/%.o: src/lib/m4a/%.c
	gcc -E $(M4A_CPPFLAGS) $< -o $(@:.o=.i)
	$(AGBCC_DIR)/bin/old_agbcc $(M4A_CC1FLAGS) -o $(@:.o=.s) $(@:.o=.i)
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)

# src/lib/agb_flash/ is the launch-SDK "Flash v123" save library. Like m4a it is a
# prebuilt Nintendo lib (old_agbcc, stock r4-callee-save ABI); but -O not -O2, and
# unsigned char (no M4A_SIGNED_CHAR). The lone gcc-2.96 holdout agb_flash_verify.c
# (VerifyEraseSector) rides the default %.o:%.c rule instead.
AGBFLASH_CPPFLAGS := -nostdinc -I$(AGBCC_DIR)/include -Iinclude -D PLATFORM_GBA=1
AGBFLASH_CC1FLAGS := -Wimplicit -Wparentheses -fhex-asm -mthumb-interwork -O

src/lib/agb_flash/agb_flash.o: src/lib/agb_flash/agb_flash.c
	gcc -E $(AGBFLASH_CPPFLAGS) $< -o $(@:.o=.i)
	$(AGBCC_DIR)/bin/old_agbcc $(AGBFLASH_CC1FLAGS) -o $(@:.o=.s) $(@:.o=.i)
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)

src/lib/agb_flash/agb_flash_mx.o: src/lib/agb_flash/agb_flash_mx.c
	gcc -E $(AGBFLASH_CPPFLAGS) $< -o $(@:.o=.i)
	$(AGBCC_DIR)/bin/old_agbcc $(AGBFLASH_CC1FLAGS) -o $(@:.o=.s) $(@:.o=.i)
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)

src/lib/agb_flash/agb_flash_at.o: src/lib/agb_flash/agb_flash_at.c
	gcc -E $(AGBFLASH_CPPFLAGS) $< -o $(@:.o=.i)
	$(AGBCC_DIR)/bin/old_agbcc $(AGBFLASH_CC1FLAGS) -o $(@:.o=.s) $(@:.o=.i)
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)

# src/lib/m4a/ excluded from the default gcc296 C_SRCS (built by the rule above).
C_SRCS  := $(filter-out src/lib/m4a/%,$(wildcard *.c */*.c */*/*.c))
C_OBJS  := $(C_SRCS:.c=.o)
C_GEN_S := $(C_SRCS:.c=.s)
C_GEN_I := $(C_SRCS:.c=.i)

# Read additional dependencies (besides .o => .s) from .d files
# generated by the assembler.
SRCS := $(wildcard *.s */*.s */*/*.s)
DEPS := $(SRCS:.s=.d)
-include $(DEPS)


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
tools/%.o: tools/%.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -c -o $@ $<

tools/%: tools/%.o
	$(CC) -o $@ $<

$(TOOLS):

TOOL_SRCS := $(wildcard tools/*.c)
TOOL_OBJS := $(TOOL_SRCS:.c=.o)
TOOL_DEPS := $(TOOL_OBJS:.o=.d)

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

asm/rom_320000/rom_320000.s: $(OVERLAY_LZS)

clean::
	-$(RM) -r data/strings $(OVERLAY_LZS)


# We need the uncompressed overlays for incbin statements in overlay
# sources. They're also convenient for comparing our build outputs.

OVERLAY_DIRS := $(dir $(OVERLAYS))

define overlay_orig_deps
$(patsubst %.s,%.o,$(wildcard asm/$(strip $(1))*.s)): %.o: $(strip $(1))orig.bin
endef
$(foreach overlay_dir,$(OVERLAY_DIRS),$(eval $(call overlay_orig_deps, $(overlay_dir))))

asm/overlays/common/common0.o: overlays/rom_78ef88/orig.bin

asm/overlays/common/common1_c.o: overlays/rom_7db0c8/orig.bin

asm/overlays/common/common2.o: overlays/rom_7bf5a8/orig.bin

overlays/rom_%/orig.bin: baserom.gba tools/unpack_overlay
	tools/unpack_overlay -r $< -a 0x$* -o $@

clean::
	-$(RM) $(addsuffix orig.bin,$(OVERLAY_DIRS))
