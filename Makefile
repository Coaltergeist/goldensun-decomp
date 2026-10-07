# GNU Make 4.3+. All generated files stay under build/usa or build/host.
.DEFAULT_GOAL := compare
.NOTPARALLEL:
.DELETE_ON_ERROR:
.SUFFIXES:
.ONESHELL:
MAKEFLAGS += --no-builtin-rules
SHELL := /bin/bash
.SHELLFLAGS := -eu -o pipefail -c

include config/toolchain.mk

TARGET := build/usa
HOST := build/host
STAMPS := $(TARGET)/stamps
ROM := $(TARGET)/goldensun.gba
ELF := $(TARGET)/goldensun.elf
STAGE1 := $(TARGET)/stage1.o
STRINGS := $(TARGET)/generated/strings
STRINGS_TEXT := $(TARGET)/reference/strings.txt
STRINGS_STAMP := $(STRINGS)/complete.stamp

ifeq ($(PERMUTER),1)
$(error Generate per-TU settings with tools/permuter_compile.py and pass --settings to the importer)
endif

ifneq ($(filter clean clean-dry-run,$(MAKECMDGOALS)),)
ifneq ($(words $(MAKECMDGOALS)),1)
$(error Run clean separately from other targets)
endif
endif

# Queries and cleanup work without a ROM, compilers or generated dependencies.
UTILITY_GOALS := clean clean-dry-run tags print-build-settings print-compile-contract
READ_BUILD_INPUTS := $(filter-out $(UTILITY_GOALS),$(MAKECMDGOALS))
ifeq ($(MAKECMDGOALS),)
READ_BUILD_INPUTS := compare
endif

ifneq ($(READ_BUILD_INPUTS),)
INPUTS_READY := $(shell python3 -B tools/build_inventory.py)
ifneq ($(.SHELLSTATUS),0)
$(error Failed to read build inputs)
endif
include $(TARGET)/inputs.mk

ALL_GCC_OBJECTS := $(GCC_OBJECTS) $(GAIA_OBJECTS) $(COMMON2_OBJECTS)
SDK_OBJECTS := $(M4A_OBJECTS) $(FLASH_OBJECTS)
C_OBJECTS := $(ALL_GCC_OBJECTS) $(SDK_OBJECTS)
ALL_OBJECTS := $(C_OBJECTS) $(ASSEMBLY_OBJECTS) $(STRINGS_OBJECT) $(HOST_OBJECTS)

# Compile Camelot C. The trailing alignment uses zero fill rather than Thumb NOPs.
$(GCC_OBJECTS): $(STAMPS)/gcc296.stamp
$(GAIA_OBJECTS): $(STAMPS)/gcc296-gaia.stamp
$(COMMON2_OBJECTS): $(STAMPS)/gcc296-common2.stamp
$(ALL_GCC_OBJECTS): private TARGET_CFLAGS := $(GCC296_CFLAGS)
$(GAIA_OBJECTS): private TARGET_CFLAGS := $(GAIA_CFLAGS)
$(COMMON2_OBJECTS): private TARGET_CFLAGS := $(COMMON2_CFLAGS)

$(ALL_GCC_OBJECTS): $(TARGET)/obj/%.o: %.c
	mkdir -p $(dir $@)
	rm -f $@
	python3 -B tools/build_deps.py c $@ $(GCC296_CC) $(TARGET_CFLAGS) -M $*.c
	$(GCC296_CC) $(TARGET_CFLAGS) -S -o $(@:.o=.s) $*.c
	printf '\n\t.text\n\t.align\t%s, %s\n' $(TEXT_ALIGNMENT) $(TEXT_FILL) >> $(@:.o=.s)
	$(ARM_AS) $(THUMB_ASFLAGS) -MD $(@:.o=.d) -o $@ $(@:.o=.s)
	python3 -B tools/build_deps.py phony $(@:.o=.d)

# Compile the SDK libraries through host preprocessing and old_agbcc.
$(M4A_OBJECTS): $(STAMPS)/old-agbcc-m4a.stamp
$(FLASH_OBJECTS): $(STAMPS)/old-agbcc-flash.stamp
$(M4A_OBJECTS): private SDK_CPPFLAGS := $(M4A_CPPFLAGS)
$(M4A_OBJECTS): private SDK_CFLAGS := $(M4A_CC1FLAGS)
$(FLASH_OBJECTS): private SDK_CPPFLAGS := $(AGBFLASH_CPPFLAGS)
$(FLASH_OBJECTS): private SDK_CFLAGS := $(AGBFLASH_CC1FLAGS)

$(SDK_OBJECTS): $(TARGET)/obj/%.o: %.c
	mkdir -p $(dir $@)
	rm -f $@
	python3 -B tools/build_deps.py c $@ $(SDK_CPP) $(SDK_CPPFLAGS) -M $*.c
	$(SDK_CPP) -E $(SDK_CPPFLAGS) $*.c -o $(@:.o=.i)
	$(AGBCC_CC) $(SDK_CFLAGS) -o $(@:.o=.s) $(@:.o=.i)
	printf '\n\t.text\n\t.align\t%s, %s\n' $(TEXT_ALIGNMENT) $(TEXT_FILL) >> $(@:.o=.s)
	$(ARM_AS) $(THUMB_ASFLAGS) -MD $(@:.o=.d) -o $@ $(@:.o=.s)
	python3 -B tools/build_deps.py phony $(@:.o=.d)

$(ASSEMBLY_OBJECTS): $(STAMPS)/arm-assembly.stamp
$(ASSEMBLY_OBJECTS): $(TARGET)/obj/%.o: %.s
	mkdir -p $(dir $@)
	rm -f $@
	$(ARM_AS) $(ARM_ASFLAGS) -MD $(@:.o=.d) -o $@ $*.s
	python3 -B tools/build_deps.py phony $(@:.o=.d)

$(STRINGS_OBJECT): $(STRINGS)/strings.s $(STAMPS)/arm-assembly.stamp
	mkdir -p $(dir $@)
	rm -f $@
	$(ARM_AS) $(ARM_ASFLAGS) -MD $(@:.o=.d) -o $@ $(STRINGS)/strings.s
	python3 -B tools/build_deps.py phony $(@:.o=.d)

# Host utilities.
$(HOST_OBJECTS): $(STAMPS)/host-c.stamp
$(HOST_OBJECTS): $(HOST)/%.o: tools/%.c
	mkdir -p $(dir $@)
	rm -f $@
	$(CC) $(CPPFLAGS) $(CFLAGS) -c -o $@ tools/$*.c

$(HOST_TOOLS): $(HOST)/%: $(HOST)/%.o $(STAMPS)/host-c.stamp
	rm -f $@
	$(CC) -o $@ $<

# Extract originals before sources that include their bytes are assembled.
$(OVERLAY_ORIGINALS): $(TARGET)/reference/overlays/%/orig.bin: baserom.gba $(HOST)/unpack_overlay
	mkdir -p $(dir $@)
	rm -f $@
	$(HOST)/unpack_overlay -r $< -a $(ROM_OFFSET) -o $@

$(STRINGS_TEXT): baserom.gba $(HOST)/unpack_strings
	mkdir -p $(dir $@)
	rm -f $@
	$(HOST)/unpack_strings -r $< -o $@

$(STRINGS_STAMP) $(STRING_OUTPUTS) &: $(STRINGS_TEXT) $(HOST)/pack_strings
	python3 -B tools/build_strings.py

# Main symbols are linked first; overlays import them with -R after -T.
$(STAGE1) $(TARGET)/stage1.map &: $(STAGE1_SCRIPT) $(STAMPS)/binutils.stamp
	mkdir -p $(TARGET)
	trap 'rm -f $(STAGE1) $(TARGET)/stage1.map $(STAGE1).tmp $(TARGET)/stage1.map.tmp' ERR INT TERM
	arm-none-eabi-ld $(ARM_LDFLAGS) -r -T $(STAGE1_SCRIPT) $(ARM_LDLIBS) \
	    -Map $(TARGET)/stage1.map.tmp -o $(STAGE1).tmp
	mv $(TARGET)/stage1.map.tmp $(TARGET)/stage1.map
	mv $(STAGE1).tmp $(STAGE1)

$(TARGET)/overlays/%/overlay.elf $(TARGET)/overlays/%/overlay.map &: linker/overlays/%.ld $(STAGE1) $(STAMPS)/binutils.stamp
	mkdir -p $(TARGET)/overlays/$*
	trap 'rm -f $(TARGET)/overlays/$*/overlay.{elf,map}{,.tmp}' ERR INT TERM
	arm-none-eabi-ld $(ARM_LDFLAGS) -T linker/overlays/$*.ld \
	    $(ARM_LDLIBS) -R $(STAGE1) \
	    -Map $(TARGET)/overlays/$*/overlay.map.tmp -o $(TARGET)/overlays/$*/overlay.elf.tmp
	mv $(TARGET)/overlays/$*/overlay.map.tmp $(TARGET)/overlays/$*/overlay.map
	mv $(TARGET)/overlays/$*/overlay.elf.tmp $(TARGET)/overlays/$*/overlay.elf

$(OVERLAY_BINS): $(TARGET)/overlays/%/overlay.bin: $(TARGET)/overlays/%/overlay.elf $(STAMPS)/binutils.stamp
	rm -f $@
	arm-none-eabi-objcopy -O binary $< $@

$(OVERLAY_LZS): $(TARGET)/overlays/%/overlay.lz: $(TARGET)/overlays/%/overlay.bin $(HOST)/pack_overlay
	rm -f $@
	$(HOST)/pack_overlay -i $< -o $@

# Packed overlays and generated strings feed the final link through its inputs.
$(ELF) $(TARGET)/goldensun.map &: $(ROM_SCRIPT) $(STAMPS)/binutils.stamp
	mkdir -p $(TARGET)
	trap 'rm -f $(ELF) $(TARGET)/goldensun.map $(ELF).tmp $(TARGET)/goldensun.map.tmp' ERR INT TERM
	arm-none-eabi-ld $(ARM_LDFLAGS) -T $(ROM_SCRIPT) $(ARM_LDLIBS) \
	    -Map $(TARGET)/goldensun.map.tmp -o $(ELF).tmp
	mv $(TARGET)/goldensun.map.tmp $(TARGET)/goldensun.map
	mv $(ELF).tmp $(ELF)

$(ROM): $(ELF) $(STAMPS)/binutils.stamp
	rm -f $@
	arm-none-eabi-objcopy -O binary $< $@

.PHONY: build compare verify compare-rom compare-overlays
build: $(ROM)
compare: compare-rom compare-overlays
verify: compare

compare-rom: $(ROM) baserom.gba goldensun.sha1
	read -r expected name < goldensun.sha1
	printf '%s  %s\n' "$$expected" baserom.gba "$$expected" "$(ROM)" | sha1sum --check

compare-overlays: $(OVERLAY_BINS) $(OVERLAY_ORIGINALS)
	@for bank in $(OVERLAY_IDS); do
	    cmp "$(TARGET)/reference/overlays/$$bank/orig.bin" \
	        "$(TARGET)/overlays/$$bank/overlay.bin"
	done
	@echo "All 96 overlays: OK"

# Stamps change only when effective settings, selected tools or build code change.
.PHONY: FORCE
FORCE:

$(STAMPS)/binutils.stamp: FORCE
	@python3 -B tools/build_deps.py stamp $@ \
	    --tool arm-none-eabi-as --tool arm-none-eabi-ld --tool arm-none-eabi-objcopy \
	    --value='$(ARM_LDFLAGS) $(ARM_LDLIBS)'

$(PROFILE_STAMPS): $(STAMPS)/%.stamp: FORCE
	@python3 -B tools/build_stamp.py $*

-include $(ALL_OBJECTS:.o=.d)
-include $(C_OBJECTS:.o=.c.d)

# Make does not inspect an unrequested peer of a grouped target.
# Regenerate a link/map pair when its map was removed independently.
LINK_MAPS := $(ELF:.elf=.map) $(OVERLAY_ELFS:.elf=.map)
MISSING_LINK_MAPS := $(filter-out $(wildcard $(LINK_MAPS)),$(LINK_MAPS))
$(MISSING_LINK_MAPS:.map=.elf): FORCE
ifeq ($(wildcard $(TARGET)/stage1.map),)
$(STAGE1): FORCE
endif

# Recreate missing compiler assembly even if the object still exists.
MISSING_C_ASSEMBLY := $(filter-out $(wildcard $(C_OBJECTS:.o=.s)),$(C_OBJECTS:.o=.s))
$(MISSING_C_ASSEMBLY:.s=.o): FORCE
endif

.PHONY: clean clean-dry-run tags print-build-settings print-compile-contract
clean:
	python3 -B tools/build_clean.py

clean-dry-run:
	python3 -B tools/build_clean.py --dry-run

tags:
	mkdir -p $(TARGET)
	ctags -R -f $(TARGET)/tags --options=.opts.ctags --exclude=build .

print-build-settings:
	@python3 -B tools/build_config.py settings

print-compile-contract:
	@python3 -B tools/build_config.py legacy "$(SOURCE)"
