/* Cluster GetSpritePalette..GetSpritePalette extracted from goldensun/asm/rom_c0/rom_45e8.s.
 *
 * Total .text for this TU = 8 bytes (= 0x8).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_45e8_a.o and asm/rom_c0/rom_45e8_c.o in
 * goldensun/stage1.ld.
 */

#include "gba/types.h"

extern u16 PAL_Sprites[];

u16 *GetSpritePalette(void) {
    return PAL_Sprites;
}

extern u8 sHexDigits[];
extern u8 iwram_3001f70[];

void Debug_PrintHex(u32 n) {
    s32 i;

    for (i = 7; i >= 0; i--) {
        iwram_3001f70[i] = sHexDigits[n & 0xF];
        n /= 16;
    }
    iwram_3001f70[8] = 0;
}
