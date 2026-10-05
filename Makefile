# The permuter imports with generated per-TU settings (see DECOMP_DEV.md).
# Refuse its generic dry-run discovery: a Python recipe is not a compiler command.
ifeq ($(PERMUTER),1)
$(error Generate per-TU settings with tools/permuter_compile.py and pass --settings to the permuter importer)
endif

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
define newline


endef
BUILD_CONFIG := $(shell python3 -B tools/build_config.py make-config)
ifneq ($(.SHELLSTATUS),0)
$(error Failed to read compiler profiles)
endif
$(eval $(subst |,$(newline),$(BUILD_CONFIG)))

ifneq ($(filter-out clean print-compile-contract print-build-settings,$(MAKECMDGOALS)),)
READ_BUILD_DEPS := 1
else ifeq ($(MAKECMDGOALS),)
READ_BUILD_DEPS := 1
endif
ifeq ($(READ_BUILD_DEPS),1)
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


# Profiles and stable TU assignments come from config/. The Python executor
# shares ordered commands and postprocessing with candidate/report tooling.
# Make still owns scheduling, dependency files, link order and output paths.
%.o: %.c
	python3 -B tools/build_compile.py compile $< -o $@

asm/%.o: src/%.c
	python3 -B tools/build_compile.py compile $< -o $@

%.o: %.s
	python3 -B tools/build_compile.py compile $< -o $@

# src/lib/m4a/ excluded from the default gcc296 C_SRCS (built by the rule above).
C_SRCS  := $(filter-out src/lib/m4a/% src/non_matching/% build/%,$(wildcard *.c */*.c */*/*.c))
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

# Host tool build; explicit rules so they override the generic %.o:%.c
# (which points at the gcc-2.96 target pipeline above). The tools/ prefix
# makes these rules more-specific than the generic ones.
tools/%.o: tools/%.c
	python3 -B tools/build_compile.py compile $< -o $@

tools/%: tools/%.o
	python3 -B tools/build_compile.py link-host $@

$(TOOLS):

TOOL_SRCS := $(wildcard tools/*.c)
TOOL_OBJS := $(TOOL_SRCS:.c=.o)
TOOL_DEPS := $(TOOL_OBJS:.o=.d)
.SECONDARY: $(TOOL_OBJS)

ifeq ($(READ_BUILD_DEPS),1)
-include $(TOOL_DEPS)
endif

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

# Read-only compatibility adapter; stdout remains exactly six lines.
.PHONY: print-compile-contract print-build-settings
print-compile-contract:
	@python3 -B tools/build_config.py legacy $(SOURCE)

print-build-settings:
	@python3 -B tools/build_config.py settings

# Fingerprints change only when tool contents or command settings change.
# A phony prerequisite runs the inexpensive check each invocation; unchanged
# stamp mtimes do not rebuild their consumers. Failed recipes cannot leave a
# newly truncated object that a later invocation treats as current.
.DELETE_ON_ERROR:
.PHONY: FORCE
FORCE:
.build/%.stamp: FORCE
	@python3 -B tools/build_compile.py stamp $*
.build/binutils.stamp: FORCE
	@python3 tools/build_deps.py stamp $@ --tool arm-none-eabi-as --tool arm-none-eabi-ld --tool arm-none-eabi-objcopy --value='$(LINK_BASE_FLAGS)'
$(ELFS): .build/binutils.stamp
$(TOOLS): .build/host-c.stamp
clean::
	-$(RM) -r .build
