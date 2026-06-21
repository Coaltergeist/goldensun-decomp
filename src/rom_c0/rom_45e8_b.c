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
extern u8 gStringBuffer[];
extern u32 sPowersOfTen[];

void Debug_PrintHex(u32 n) {
    s32 i;

    for (i = 7; i >= 0; i--) {
        gStringBuffer[i] = sHexDigits[n & 0xF];
        n /= 16;
    }
    gStringBuffer[8] = 0;
}

void FormatDecimalString(s32 n) {
    const u32 *table = sPowersOfTen;
    u8 sign;
    u32 count;
    u8 *out;
    u32 t;

    sign = ' ';
    out = gStringBuffer;

    if (n < 0) {
        n = -n;
        sign = '-';
    }

    t = *table++;
    count = 9;

    if (n < t) {
        do {
            count--;
            *out++ = ' ';
            if (count == 0)
                break;
            t = *table++;
        } while (n < t);
    }

    *out++ = sign;
    table--;

    while (count != 0) {
        u32 q;
        t = *table++;
        q = n / t;
        *out++ = '0' + q;
        n -= q * t;
        count--;
    }

    *out++ = '0' + n;
    *out = '\0';
}
