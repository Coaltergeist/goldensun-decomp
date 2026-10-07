# Tool locations and the normal game-code contract.
GCC296_DIR ?= tools/gcc296
AGBCC_DIR ?= tools/agbcc
GCC296_CC := $(GCC296_DIR)/xgcc
AGBCC_CC := $(AGBCC_DIR)/bin/old_agbcc
SDK_CPP := gcc
ARM_AS := arm-none-eabi-as

GCC296_CFLAGS := -B$(GCC296_DIR)/ -O2 -mthumb -mthumb-interwork \
    -mcpu=arm7tdmi -fno-builtin -nostdinc -ffreestanding \
    -fcall-used-r4 -Iinclude -fno-strict-aliasing

# Gaia needs strict aliasing; common2 uses non-interworking C returns.
GAIA_CFLAGS := $(filter-out -fno-strict-aliasing,$(GCC296_CFLAGS)) \
    -fstrict-aliasing
COMMON2_CFLAGS := $(filter-out -mthumb-interwork,$(GCC296_CFLAGS))

# Nintendo's prebuilt libraries use old_agbcc with distinct SDK settings.
M4A_CPPFLAGS := -nostdinc -I$(AGBCC_DIR)/include -Iinclude \
    -D PLATFORM_GBA=1 -D M4A_SIGNED_CHAR
M4A_CC1FLAGS := -Wimplicit -Wparentheses -fhex-asm -mthumb-interwork -O2

AGBFLASH_CPPFLAGS := -nostdinc -I$(AGBCC_DIR)/include -Iinclude \
    -D PLATFORM_GBA=1
AGBFLASH_CC1FLAGS := -Wimplicit -Wparentheses -fhex-asm -mthumb-interwork -O

ARM_ASFLAGS := -mcpu=arm7tdmi -Iinclude
THUMB_ASFLAGS := -mcpu=arm7tdmi -mthumb-interwork -Iinclude
TEXT_ALIGNMENT := 2
TEXT_FILL := 0

CC ?= cc
CPPFLAGS += -MMD
CFLAGS ?= -O2 -Wall
ARM_LDFLAGS :=
ARM_LDLIBS :=

# Read-only queries and scratch compilers receive Make's resolved values.
GS_BUILD_VARIABLES := GCC296_DIR AGBCC_DIR GCC296_CC GCC296_CFLAGS \
    GAIA_CFLAGS COMMON2_CFLAGS M4A_CPPFLAGS M4A_CC1FLAGS \
    AGBFLASH_CPPFLAGS AGBFLASH_CC1FLAGS CC CPPFLAGS CFLAGS \
    AGBCC_CC SDK_CPP ARM_AS ARM_ASFLAGS THUMB_ASFLAGS \
    TEXT_ALIGNMENT TEXT_FILL ARM_LDFLAGS ARM_LDLIBS
GS_BUILD_SETTINGS := 1
export GS_BUILD_VARIABLES GS_BUILD_SETTINGS
export $(GS_BUILD_VARIABLES)
