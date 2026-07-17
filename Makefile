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
# Object prerequisites are appended below, and GNU Make 3.81 may place one
# before the linker script. Select the script by suffix instead of relying on
# prerequisite order.
$(ELFS):
	arm-none-eabi-ld $(ARM_LDFLAGS) -T $(filter %.ld,$^) $(ARM_LDLIBS) -Map $(basename $@).map -o $@

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

# Compile target C with gcc-2.96 from camelot-gcc (see INSTALL.md). Produces
# byte-identical output to Camelot's original toolchain.
# Pipeline: xgcc -S (driver internal cpp -> cc1) -> normalize alignment -> as.
# Karathan's -fcall-used-r4 flag is required for byte match. -ffixed-r7 is
# NOT needed under gcc-2.96; the compiler naturally avoids r7 for the same
# allocation patterns Camelot did. GCC emits bare `.align 2` directives;
# Camelot's assembler zero-filled them, while modern arm-none-eabi-as inserts
# Thumb NOPs. Normalize every internal directive to `.align 2, 0`, then append
# one trailing zero-fill alignment because GCC omits it after the final function.
GCC296_CC      ?= tools/cc296.sh
GCC296_CFLAGS  := -O2 -mthumb -mthumb-interwork -mcpu=arm7tdmi \
                  -fno-builtin -nostdinc -ffreestanding \
                  -fcall-used-r4 -Iinclude
GCC296_FIX_ALIGN := perl -pi -e 's/^\s*\.align\s+2$$/\t.align 2, 0/'

# These retail soft-double routines use the classic non-interwork ABI: r4 is
# callee-saved and each function returns with pop {pc}.
COMMON2_SOFTFLOAT_OBJS := \
	src/overlays/common/common2_c_c_c_c_a_304.o \
	src/overlays/common/common2_a_254.o \
	src/overlays/common/common2_a_28c.o \
	src/overlays/common/common2_c_c_c_c_a_380.o \
	src/overlays/common/common2_c_c_c_c_c_c_c_a_41c.o \
	src/overlays/common/common2_c_c_c_c_c_c_c_c_c_c_618.o
$(COMMON2_SOFTFLOAT_OBJS): GCC296_CFLAGS := $(filter-out -mthumb-interwork -fcall-used-r4,$(GCC296_CFLAGS))

# TrackStop (rom_f9ef8) is hand-written soft-double assembly kept as honest .s.
# It uses the normal r4 callee-save ABI and must be assembled with interwork,
# so it needs a per-file rule instead of the generic non-interwork %.o: %.s.
src/rom_f9000/rom_f9ef8_a_9ef8.o: src/rom_f9000/rom_f9ef8_a_9ef8.s
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -MD $(@:.o=.d) -o $@ $<

%.o: %.c
	$(GCC296_CC) $(GCC296_CFLAGS) -S -o $(@:.o=.s) $<
	$(GCC296_FIX_ALIGN) $(@:.o=.s)
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)

# Func_80f9ee8 is a two-byte r3 trampoline between MP2KPlayerMain and that
# routine's PC-relative literal pool. Kept as an honest hand-written .inc.s
# fragment included in the neighboring object so the pool cannot move.
asm/rom_f9000/rom_f95e0.o: src/rom_f9000/rom_f95e0_9ee8.inc.s

# Cross-dir rules: build asm/<bank>/X.o from src/<bank>/X.c. Used by the
# split-multifn workflow (tools/split_multifn_s.py); matched .c source-of-
# truth lives at src/<bank>/X.c per the 3.5c layout, but the linker keeps
# referencing asm/<bank>/X.o. Generates asm/<bank>/X.s as a build
# intermediate alongside the .o; safe to commit per the existing matched-
# corpus convention, or leave as a build artifact (regenerable from the .c).
#
# These are static rules rather than competing implicit patterns. GNU Make
# 3.81 otherwise prefers the earlier %.o:%.s rule as soon as a generated .s
# exists, silently ignoring a newer C source during incremental builds.
COMMON2_CROSS_SRCS := $(wildcard src/overlays/common/common2_c*.c)
CROSS_DIR_C_SRCS := $(filter-out $(COMMON2_CROSS_SRCS),$(shell find src -type f -name '*.c' -print))
CROSS_DIR_C_OBJS := $(patsubst src/%.c,asm/%.o,$(CROSS_DIR_C_SRCS))
COMMON2_CROSS_OBJS := $(patsubst src/%.c,asm/%.o,$(COMMON2_CROSS_SRCS))
CROSS_DIR_GENERATED_S := $(patsubst src/%.c,asm/%.s,$(CROSS_DIR_C_SRCS) $(COMMON2_CROSS_SRCS))

$(CROSS_DIR_C_OBJS): asm/%.o: src/%.c
	$(GCC296_CC) $(GCC296_CFLAGS) -S -o $(@:.o=.s) $<
	$(GCC296_FIX_ALIGN) $(@:.o=.s)
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
$(COMMON2_CROSS_OBJS): asm/%.o: src/%.c
	$(GCC296_CC) $(COMMON2_CFLAGS) -S -o $(@:.o=.s) $<
	$(GCC296_FIX_ALIGN) $(@:.o=.s)
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
M4A_SRCS      := $(wildcard src/lib/m4a/*.c)
M4A_OBJS      := $(M4A_SRCS:.c=.o)

# Static so GNU Make 3.81 cannot choose the earlier generic gcc-2.96 rule.
$(M4A_OBJS): src/lib/m4a/%.o: src/lib/m4a/%.c
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

# Same-directory C objects need the same protection as cross-directory ones:
# once GCC has generated X.s, GNU Make 3.81 otherwise prefers the earlier
# %.o: %.s rule and can silently ignore a newer X.c. Host tools have their own
# native static rule below and must not be compiled for ARM.
# C_SRCS is intentionally shallow legacy inventory and omits depth-4 overlay
# translation units. Derive this safety rule from every buildable C file under
# src instead, excluding only files with dedicated compiler rules and parked
# nonmatching/generated work. Otherwise a stale generated overlay X.s can win
# the generic assembler rule and silently ignore a newer X.c.
SAME_DIR_TARGET_C_SRCS := $(filter-out \
	 src/lib/m4a/% \
	 src/lib/agb_flash/agb_flash.c \
	 src/lib/agb_flash/agb_flash_mx.c \
	 src/lib/agb_flash/agb_flash_at.c \
	 src/non_matching/%,$(sort $(shell find src -type f -name '*.c' -print)))
SAME_DIR_TARGET_C_OBJS := $(SAME_DIR_TARGET_C_SRCS:.c=.o)
$(SAME_DIR_TARGET_C_OBJS): %.o: %.c
	$(GCC296_CC) $(GCC296_CFLAGS) -S -o $(@:.o=.s) $<
	$(GCC296_FIX_ALIGN) $(@:.o=.s)
	printf '\n\t.text\n\t.align\t2, 0\n' >> $(@:.o=.s)
	arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -Iinclude -o $@ $(@:.o=.s)

# Read additional dependencies generated by the assembler. Discover the .d
# files directly and without a depth limit: the old shallow .s wildcard omitted
# every asm/overlays/rom_x dependency file, so changes to shared include files
# could leave overlay objects stale. Compiler-generated C assembly has no .d and
# is therefore excluded naturally.
DEPS := $(sort $(shell find asm src -type f -name '*.d' -print 2>/dev/null))
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
	-$(RM) $(ROM) $(OVERLAYS) $(ELFS) $(MAPS)
	-find asm src overlays -type f \( -name '*.o' -o -name '*.d' -o -name '*.i' \) -delete 2>/dev/null
	-find src -name '*.c' -print | sed -e 's|^src/||' -e 's|\.c$$|.s|' | \
	    while read rel; do $(RM) "src/$$rel" "asm/$$rel"; done


# Tools are compiled for the host and used during the build.

TOOLS := tools/pack_overlay \
	 tools/pack_strings \
	 tools/unpack_overlay \
	 tools/unpack_strings

TOOL_SRCS := $(wildcard tools/*.c)
TOOL_OBJS := $(TOOL_SRCS:.c=.o)
TOOL_DEPS := $(TOOL_OBJS:.o=.d)

CPPFLAGS += -MMD
CFLAGS ?= -O2 -Wall

# Host tool build.  Use a static pattern rule so GNU Make 3.81 cannot select
# the earlier generic %.o:%.c ARM target rule for these native utilities.
$(TOOL_OBJS): tools/%.o: tools/%.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -c -o $@ $<

tools/%: tools/%.o
	$(CC) -o $@ $<

$(TOOLS):

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

overlay_source_asm = $(filter-out $(CROSS_DIR_GENERATED_S),$(wildcard asm/$(strip $(1))*.s))
define overlay_orig_deps
$(if $(call overlay_source_asm,$(1)),$(patsubst %.s,%.o,$(call overlay_source_asm,$(1))): %.o: $(strip $(1))orig.bin)
endef
$(foreach overlay_dir,$(OVERLAY_DIRS),$(eval $(call overlay_orig_deps, $(overlay_dir))))

# Common overlay sources are split across many objects.  Any unmatched assembly
# child may retain an incbin from its canonical sample overlay, so make every
# tracked assembly child wait for that extracted binary instead of naming only
# the pre-split parent object.
COMMON0_ASM_OBJS := $(patsubst %.s,%.o,$(filter-out $(CROSS_DIR_GENERATED_S),$(wildcard asm/overlays/common/common0*.s)))
COMMON1_ASM_OBJS := $(patsubst %.s,%.o,$(filter-out $(CROSS_DIR_GENERATED_S),$(wildcard asm/overlays/common/common1*.s)))
COMMON2_ASM_OBJS := $(patsubst %.s,%.o,$(filter-out $(CROSS_DIR_GENERATED_S),$(wildcard asm/overlays/common/common2*.s)))

$(COMMON0_ASM_OBJS): overlays/rom_78ef88/orig.bin
$(COMMON1_ASM_OBJS): overlays/rom_7db0c8/orig.bin
$(COMMON2_ASM_OBJS): overlays/rom_7bf5a8/orig.bin

overlays/rom_%/orig.bin: baserom.gba tools/unpack_overlay
	tools/unpack_overlay -r $< -a 0x$* -o $@

clean::
	-$(RM) $(addsuffix orig.bin,$(OVERLAY_DIRS))
