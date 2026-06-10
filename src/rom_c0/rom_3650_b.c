/* Cluster Func_8003808..Func_800380c extracted from goldensun/rom_c0/src/rom_3650.s.
 *
 * Total .text for this TU = 8 bytes (= 0x8).
 * Preserves the original ROM layout when slotted between
 * rom_c0/src/rom_3650_a.o and rom_c0/src/rom_3650_c.o in stage1.ld.
 */

#include "gba/io.h"
#include "dma.h"

extern u8 RAM_SoundFXCode[];
extern u8 ROM_SoundFXCode[];

#define SOUND_FX_SEGMENT_SIZE (0x98)

s32 SetSoundFXMode(u32 filterID) {
    if (filterID > 4) {
        filterID = 0;
    }
    DMA3_COPY(ROM_SoundFXCode + (filterID * SOUND_FX_SEGMENT_SIZE), RAM_SoundFXCode, SOUND_FX_SEGMENT_SIZE);
    return 0;
}

void Func_8003808(void) {}
void Func_800380c(void) {}

extern bool16 ewram_2002000;
extern bool8 gSoftReset;

void KeypadIntr(void) {
    if (!ewram_2002000) {
        SET_IO(REG_KEYCNT, (KEY_AND_INTR | KEY_INTR_ENABLE | DPAD_ANY | JOY_EXCL_DPAD));
        gSoftReset = 1;
    }
}
