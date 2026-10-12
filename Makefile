# Default target. Verify the checksums of the built ROM and overlays.
# Every generated file goes under build/: target output in build/usa and
# host tools in build/host.
.DEFAULT_GOAL := compare
SHELL := /bin/bash
.SHELLFLAGS := -eu -o pipefail -c
MAKEFLAGS += --no-builtin-rules
.SUFFIXES:
.DELETE_ON_ERROR:

BUILD  := build/usa
HOST   := build/host
OBJ    := $(BUILD)/obj
STAMPS := $(BUILD)/stamps
ROM    := $(BUILD)/goldensun.gba
ELF    := $(BUILD)/goldensun.elf
STAGE1 := $(BUILD)/stage1.o

AS      := arm-none-eabi-as
LD      := arm-none-eabi-ld
OBJCOPY := arm-none-eabi-objcopy
ARM_ASFLAGS   := -mcpu=arm7tdmi -Iinclude
THUMB_ASFLAGS := -mcpu=arm7tdmi -mthumb-interwork -Iinclude

OVERLAY_IDS       := $(patsubst linker/overlays/%.ld,%,$(wildcard linker/overlays/*.ld))
OVERLAY_ELFS      := $(OVERLAY_IDS:%=$(BUILD)/overlays/%/overlay.elf)
OVERLAY_BINS      := $(OVERLAY_ELFS:.elf=.bin)
OVERLAY_LZS       := $(OVERLAY_ELFS:.elf=.lz)
OVERLAY_ORIGINALS := $(OVERLAY_IDS:%=$(BUILD)/reference/overlays/%/orig.bin)

.PHONY: compare compare-rom compare-overlays
compare: compare-rom compare-overlays

compare-rom: $(ROM) goldensun.sha1
	sed 's|goldensun.gba|$(ROM)|' goldensun.sha1 | sha1sum -c -

compare-overlays: $(OVERLAY_BINS) $(OVERLAY_ORIGINALS)
	@for id in $(OVERLAY_IDS); do \
	    cmp $(BUILD)/reference/overlays/$$id/orig.bin $(BUILD)/overlays/$$id/overlay.bin; \
	done
	@echo "All $(words $(OVERLAY_IDS)) overlays: OK"


# The ROM image includes compressed code overlays.
# The overlays reference symbols defined in the main executable.
# We partially link the main executable; build the overlays against it;
# compress the overlays; and then link the final image.
# The linker scripts name every object, so they also define what gets built.

SYMBOLS           := $(wildcard linker/symbols/*.sym)

linked_objects = $(shell grep -ohE '$(OBJ)/[A-Za-z0-9_./-]+\.o' $(1))
OBJS := $(sort $(call linked_objects,linker/*.ld linker/overlays/*.ld))

$(STAGE1): linker/stage1.ld $(SYMBOLS) $(call linked_objects,linker/stage1.ld) $(STAMPS)/binutils.stamp
	$(LD) -r -T $< -Map $(@:.o=.map) -o $@

# Overlays reference symbols defined in main code
$(foreach id,$(OVERLAY_IDS),$(eval $(BUILD)/overlays/$(id)/overlay.elf: $(call linked_objects,linker/overlays/$(id).ld)))
$(OVERLAY_ELFS): $(BUILD)/overlays/%/overlay.elf: linker/overlays/%.ld $(STAGE1) $(STAMPS)/binutils.stamp
	@mkdir -p $(@D)
	$(LD) -T $< -R $(STAGE1) -Map $(@:.elf=.map) -o $@

$(OVERLAY_BINS): %.bin: %.elf
	$(OBJCOPY) -O binary $< $@

$(OVERLAY_LZS): %.lz: %.bin $(HOST)/pack_overlay
	$(HOST)/pack_overlay -i $< -o $@

# Final fully linked executable
$(ELF): linker/goldensun.ld $(SYMBOLS) $(STAGE1) $(call linked_objects,linker/goldensun.ld) $(STAMPS)/binutils.stamp
	$(LD) -T $< -Map $(@:.elf=.map) -o $@

$(ROM): $(ELF)
	$(OBJCOPY) -O binary $< $@


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
# -fno-strict-aliasing is the gcc-2.96 default. goma_cave's
# OvlFunc_906_20084f4 reproduces the ROM only with type-based alias analysis off,
# and the flag is byte-compatible across the rest of the C codebase: the full ROM
# builds byte-exact under it. Gaia has a documented reconstruction exception.
GCC296_CFLAGS  := -B$(GCC296_DIR)/ -O2 -mthumb -mthumb-interwork -mcpu=arm7tdmi \
                  -fno-builtin -nostdinc -ffreestanding \
                  -fcall-used-r4 -Iinclude -fno-strict-aliasing

# Gaia's cleaned reconstruction needs type-based alias analysis for its final
# scale-store schedule. This is a matching exception, not evidence of Camelot's
# original flags. Keep other animation TUs on the project default.
GAIA_CFLAGS := $(filter-out -fno-strict-aliasing,$(GCC296_CFLAGS)) -fstrict-aliasing
$(OBJ)/src/battle_anim/moves/gaia.o: private GCC296_CFLAGS := $(GAIA_CFLAGS)

# The common2 shared object was compiled WITHOUT -mthumb-interwork in the original
# ROM: its common2_c* functions return `pop {pc}` (the non-interwork epilogue),
# unique in the corpus; every other TU returns `bx`-form. The rest of the
# consolidated TU (common2_b) is interwork-INSENSITIVE (byte-identical either way,
# verified), so the whole common2.c compiles non-interwork.
COMMON2_CFLAGS := $(filter-out -mthumb-interwork,$(GCC296_CFLAGS))
$(OBJ)/src/maps/common/common2.o: private GCC296_CFLAGS := $(COMMON2_CFLAGS)

# Overlay data .incbin's the extracted originals, so extract them before any
# object assembles; assembler depfiles track the actual inputs afterwards.
$(OBJ)/%.o: %.c $(STAMPS)/gcc296.stamp $(STAMPS)/binutils.stamp | $(OVERLAY_ORIGINALS)
	@mkdir -p $(@D)
	python3 tools/build_deps.py c $@ $(GCC296_CC) $(GCC296_CFLAGS) -M $<
	$(GCC296_CC) $(GCC296_CFLAGS) -S -o $(@:.o=.s) $<
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	$(AS) $(THUMB_ASFLAGS) -MD $(@:.o=.d) -o $@ $(@:.o=.s)
	@python3 tools/build_deps.py phony $(@:.o=.d)

# src/lib/m4a/ is the stock m4a / "Sappy" engine, prebuilt by Nintendo with
# old_agbcc (signed char, old ABI), NOT Camelot's gcc296. Per-file rule mirrors
# sa2/Makefile's CC1_OLD override. -D M4A_SIGNED_CHAR gives the engine a signed
# s8 (its ROM loads are signed) without touching the rest of the unsigned-char
# corpus. See INSTALL.md for compiler setup.
AGBCC_DIR     ?= tools/agbcc
AGBCC_CC      := $(AGBCC_DIR)/bin/old_agbcc
M4A_CPPFLAGS  := -nostdinc -I$(AGBCC_DIR)/include -Iinclude -D PLATFORM_GBA=1 -D M4A_SIGNED_CHAR
M4A_CC1FLAGS  := -Wimplicit -Wparentheses -fhex-asm -mthumb-interwork -O2
M4A_OBJS      := $(OBJ)/src/lib/m4a/m4a.o
$(M4A_OBJS): private SDK_CPPFLAGS := $(M4A_CPPFLAGS)
$(M4A_OBJS): private SDK_CC1FLAGS := $(M4A_CC1FLAGS)

# src/lib/agb_flash/ is the launch-SDK "Flash v123" save library. Like m4a it is a
# prebuilt Nintendo lib (old_agbcc, stock r4-callee-save ABI); but -O not -O2, and
# unsigned char (no M4A_SIGNED_CHAR). The lone gcc-2.96 holdout agb_flash_verify.c
# (VerifyEraseSector) rides the default gcc-2.96 rule instead.
AGBFLASH_CPPFLAGS := -nostdinc -I$(AGBCC_DIR)/include -Iinclude -D PLATFORM_GBA=1
AGBFLASH_CC1FLAGS := -Wimplicit -Wparentheses -fhex-asm -mthumb-interwork -O
FLASH_OBJS := $(addprefix $(OBJ)/src/lib/agb_flash/,agb_flash.o agb_flash_mx.o agb_flash_at.o)
$(FLASH_OBJS): private SDK_CPPFLAGS := $(AGBFLASH_CPPFLAGS)
$(FLASH_OBJS): private SDK_CC1FLAGS := $(AGBFLASH_CC1FLAGS)

$(M4A_OBJS) $(FLASH_OBJS): $(OBJ)/%.o: %.c $(STAMPS)/agbcc.stamp $(STAMPS)/binutils.stamp | $(OVERLAY_ORIGINALS)
	@mkdir -p $(@D)
	python3 tools/build_deps.py c $@ gcc $(SDK_CPPFLAGS) -M $<
	gcc -E $(SDK_CPPFLAGS) $< -o $(@:.o=.i)
	$(AGBCC_CC) $(SDK_CC1FLAGS) -o $(@:.o=.s) $(@:.o=.i)
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	$(AS) $(THUMB_ASFLAGS) -MD $(@:.o=.d) -o $@ $(@:.o=.s)
	@python3 tools/build_deps.py phony $(@:.o=.d)

# Assemble ARM code and generate dependencies
$(OBJ)/%.o: %.s $(STAMPS)/binutils.stamp | $(OVERLAY_ORIGINALS)
	@mkdir -p $(@D)
	$(AS) $(ARM_ASFLAGS) -MD $(@:.o=.d) -o $@ $<
	@python3 tools/build_deps.py phony $(@:.o=.d)

# The overlay table data .incbin's every compressed overlay.
$(OBJ)/data/map_overlays/rom_320000.o: $(OVERLAY_LZS)

-include $(OBJS:.o=.d) $(OBJS:.o=.c.d)


# Strings are extracted from the reference ROM and repacked.
STRINGS      := $(BUILD)/generated/strings
STRINGS_TEXT := $(BUILD)/reference/strings.txt

$(STRINGS_TEXT): baserom.gba $(HOST)/unpack_strings
	@mkdir -p $(@D)
	$(HOST)/unpack_strings -r $< -o $@

$(STRINGS)/strings.s: $(STRINGS_TEXT) $(HOST)/pack_strings
	rm -rf $(STRINGS)
	mkdir -p $(STRINGS)
	$(HOST)/pack_strings -i $< -o $(STRINGS)

$(OBJ)/generated/strings/strings.o: $(STRINGS)/strings.s $(STAMPS)/binutils.stamp
	@mkdir -p $(@D)
	$(AS) $(ARM_ASFLAGS) -MD $(@:.o=.d) -o $@ $<
	@python3 tools/build_deps.py phony $(@:.o=.d)


# We need the uncompressed overlays for incbin statements in overlay
# sources. They're also convenient for comparing our build outputs.
$(BUILD)/reference/overlays/rom_%/orig.bin: baserom.gba $(HOST)/unpack_overlay
	@mkdir -p $(@D)
	$(HOST)/unpack_overlay -r $< -a 0x$* -o $@


# Tools are compiled for the host and used during the build.
HOST_TOOLS := $(patsubst tools/%.c,$(HOST)/%,$(wildcard tools/*.c))
CPPFLAGS += -MMD
CFLAGS ?= -O2 -Wall

$(HOST)/%.o: tools/%.c $(STAMPS)/host.stamp
	@mkdir -p $(@D)
	$(CC) $(CPPFLAGS) $(CFLAGS) -c -o $@ $<

$(HOST_TOOLS): $(HOST)/%: $(HOST)/%.o
	$(CC) -o $@ $<

.SECONDARY: $(HOST_TOOLS:=.o)
-include $(HOST_TOOLS:=.d)


# Fingerprints change only when tool contents or command settings change.
# A phony prerequisite runs the inexpensive check each invocation; unchanged
# stamp mtimes do not rebuild their consumers.
.PHONY: FORCE
FORCE:
$(STAMPS)/gcc296.stamp: FORCE
	@python3 tools/build_deps.py stamp $@ --tool $(GCC296_CC) --tool $(GCC296_DIR)/cc1 --tool $(GCC296_DIR)/cpp --tool $(GCC296_DIR)/tradcpp --value='$(GCC296_CFLAGS)' --value='$(COMMON2_CFLAGS)' --value='$(GAIA_CFLAGS)'
$(STAMPS)/agbcc.stamp: FORCE
	@python3 tools/build_deps.py stamp $@ --tool $(AGBCC_CC) --tool gcc --value='$(M4A_CPPFLAGS) $(M4A_CC1FLAGS)' --value='$(AGBFLASH_CPPFLAGS) $(AGBFLASH_CC1FLAGS)'
$(STAMPS)/binutils.stamp: FORCE
	@python3 tools/build_deps.py stamp $@ --tool $(AS) --tool $(LD) --tool $(OBJCOPY) --value='$(ARM_ASFLAGS)' --value='$(THUMB_ASFLAGS)'
$(STAMPS)/host.stamp: FORCE
	@python3 tools/build_deps.py stamp $@ --tool $(firstword $(CC)) --value='$(CC) $(CPPFLAGS) $(CFLAGS)'


.PHONY: clean tags print-compile-contract
clean:
	rm -rf build

# Builds ctags using custom parsing on top of asm.
# Ensure https://github.com/universal-ctags/ctags is installed to use.
tags:
	@mkdir -p $(BUILD)
	ctags -R -f $(BUILD)/tags --options=.opts.ctags --exclude=build .

# Machine-readable compilation settings for external comparison tools.
# SOURCE is the src/... C path, even when compiling a scratch copy.
print-compile-contract:
	@printf '%s\n' '$(if $(filter src/lib/m4a/% src/lib/agb_flash/agb_flash.c src/lib/agb_flash/agb_flash_mx.c src/lib/agb_flash/agb_flash_at.c,$(SOURCE)),agbcc,gcc296)' '$(GCC296_CC)' '$(if $(filter src/battle_anim/moves/gaia.c,$(SOURCE)),$(GAIA_CFLAGS),$(if $(filter src/maps/common/common2.c,$(SOURCE)),$(COMMON2_CFLAGS),$(GCC296_CFLAGS)))' '$(AGBCC_CC)' '$(if $(filter src/lib/m4a/%,$(SOURCE)),$(M4A_CPPFLAGS),$(AGBFLASH_CPPFLAGS))' '$(if $(filter src/lib/m4a/%,$(SOURCE)),$(M4A_CC1FLAGS),$(AGBFLASH_CC1FLAGS))'
