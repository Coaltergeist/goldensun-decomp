/* Cluster GetSpritePalette..GetSpritePalette extracted from goldensun/asm/rom_c0/rom_45e8.s.
 *
 * Total .text for this TU = 8 bytes (= 0x8).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_45e8_a.o and asm/rom_c0/rom_45e8_c.o in
 * goldensun/stage1.ld.
 */

#include "gba/types.h"
#include "dma.h"
#include "palette.h"
#include "file_table.h"

extern u16 PAL_Sprites[];
extern u16 PAL_Ui[];

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

extern u16 *iwram_3001cbc;

void Func_8004698(u32 arg0) {
    u16 *p;
    u32 i;

    p = iwram_3001cbc;
    for (i = 0; i < arg0; i++) {
        *p = 0xf000;
        p++;
    }
    iwram_3001cbc = p;
}

extern u8 iwram_3001ac4;

void Func_80046c4(const char *s) {
    u16 *dst;
    u32 i;
    u8 c;
    if (iwram_3001ac4 == 0) return;

    dst = iwram_3001cbc;
    i = 0;
    c = *s++;

    if (c != 0) {
        do {
            u16 mask = 0xF000;
            *dst++ = c | mask;
            if (dst == (u16 *)0x06002500)
                dst = (u16 *)0x06002000;
            i++;
            if (i > 31)
                break;
            c = *s++;
        } while (c != 0);
    }

    iwram_3001cbc = dst;
}

void Func_8004718(u32 n, u32 digits) {
    if (digits - 1 > 7) {
        digits = 8;
    }
    Debug_PrintHex(n);
    Func_80046c4(gStringBuffer + 8 - digits);
}

void Func_800473c(u32 n, u32 digits) {
    if (digits - 1 > 9)
        digits = 10;
    FormatDecimalString(n);
    Func_80046c4(gStringBuffer + 10 - digits);
}

void ClearVRAM(void) {
    DMA3_FILL((u16 *)0x06002000, 0xF000F000, 0x500);
    iwram_3001cbc = (u16 *)0x06002000;
    SET_IO(REG_BG0CNT, 0x400);
}

void Func_800479c(void) {
    void *gfx = GetFile(FILE_GFX_UI);
    DMA3_COPY(gfx, (u16*)0x06000000, 0x800*4);
    DMA3_COPY16(PAL_Ui, (u16*)(0x050001E0), 16*4);

    SET_PALETTE(0, 0);
    SET_PALETTE(0xF4, 0x4180);
    SET_PALETTE(0xF5, 0x3960);
    SET_PALETTE(0xF6, 0x3140);
    SET_PALETTE(0xF7, 0x2920);
    SET_PALETTE(0xF8, 0x49A0);
    SET_PALETTE(0xF9, 0x51c0);
    SET_PALETTE(0xFA, 0x59e0);

    DMA3_COPY16(PAL_Sprites, (u16*)(0x05000200), 0xe0 * 4);
}

void LoadSpritePalette(void) {
    DMA3_COPY16(PAL_Sprites, (u16*)0x05000200, 0xe0 * 4);
}
