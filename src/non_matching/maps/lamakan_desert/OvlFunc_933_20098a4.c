/* Clean C candidate for OvlFunc_933_20098a4 (zero fakematches / zero .equ).
 * Uses `scanlines += 0x26` (fixing `adds r1, #38` at 0xda) and `fill = 0xeeeeeeee` after
 * `dst`/`limit` (hoisting `ldr r0, =0xeeeeeeee` before `bcs` and matching `dst -> r1` at 0x27e
 * plus the OAM loop tail at 0x328..0x334). Requires `__divsi3` -> `_divsi3_RAM` in TU.
 * Remaining diffs:
 * 1) 0x44..0x9a: `reload` scratch reg choices (`r0`/`r1`/`r2` vs `r5`/`r0`/`r1`) on `ldrsh` / `0x10000`.
 * 2) 0x102..0x1b6 (6-entry palette loop): `global` allocates `(blue, green, heat)` to `(r5, r6, r7)`
 *    instead of `(green, heat, blue)` with `blue` copied from `r2` (`adds r7, r2, #0`) after `ldrsh r6`.
 * 3) 0x27e..0x2a0 (bar fill loop): `limit = 128 - Heat933` allocates to `r2` (and `#7` to `r5`)
 *    instead of `r3 -> ip` (leaving `#7` in `r2`).
 */
#include "dma.h"
extern short Heat933 __asm__("gOvl_0200a6bc");
extern short MeterSlide933 __asm__(".Lm933_26be");
extern short MeterCooldown933 __asm__(".Lm933_26c0");
extern short MeterSlot933 __asm__(".Lm933_26d0");
extern unsigned int MeterOam933[] __asm__(".Lm933_26e0");
extern unsigned char MeterGfx933[] __asm__(".Lm933_2730");
extern short MeterForced933 __asm__(".Lm933_3030");
extern unsigned char OvlData_933_2009f80[];
struct MeterSlotRecord933 { unsigned short size, offset; };
extern struct MeterSlotRecord933 MeterSlots933[] __asm__("gSpriteSlots");
extern unsigned char *MeterScanlines933 __asm__("iwram_3001ecc");
extern unsigned int MeterFrame933 __asm__("iwram_3001e40");
extern int CS933_ReleaseSlot(unsigned int) __asm__("__Func_8003f78");
extern void *CS933_Alloc(unsigned int) __asm__("__alloc_iwram");
extern void CS933_Free(void *) __asm__("__free");
extern void CS933_Palette(void *, unsigned int) __asm__("__Func_80038bc");
extern unsigned int CS933_Upload(unsigned int, unsigned int, void *) __asm__("__UploadSpriteGFX");
extern void CS933_Oam(unsigned int *, int) __asm__("__Func_8003dec");
struct MeterState933 { unsigned char pad[0x22c]; short denominator; unsigned char gap[4]; short numerator; };
extern struct MeterState933 MeterState933 __asm__("gState");

void OvlFunc_933_20098a4(void)
{
    unsigned int tile = MeterSlots933[MeterSlot933].offset >> 5;
    int slideVal;
    unsigned char *scanlines;
    unsigned char *buffer;
    short *palette, *paletteStart;
    unsigned int *paletteOut, *paletteWords;
    unsigned int red, green, blue, i, limit, flags, x;
    unsigned short color;
    int heat;
    unsigned int *dst, *oam;
    unsigned int fill;
    unsigned char *src, *out;

    if (MeterForced933 != 0) {
        MeterSlide933 = 2;
    } else if (API_GetFlag(0x104)) {
        if (MeterSlide933 > 0) MeterSlide933--;
    } else {
        if (MeterSlide933 <= 1) {
            MeterSlide933++;
            if (MeterSlide933 == 1)
                DMA3_SET(OvlData_933_2009f80, (void *)0x50003c0, 0x80000010);
        }
    }
    slideVal = MeterSlide933;
    if (slideVal == 0) {
        CS933_ReleaseSlot(MeterSlot933);
        return;
    }
    scanlines = MeterScanlines933;
    if (scanlines != 0) {
        scanlines += scanlines[0x539] * 644;
        x = (short)(slideVal << 3);
        scanlines += 0x26;
        for (i = 0; i <= 0x8f; i++) {
            *(unsigned short *)scanlines = x;
            scanlines += 4;
        }
    }
    buffer = CS933_Alloc(0x900);
    DMA3_SET(OvlData_933_2009f80, buffer, 0x80000010);
    paletteStart = (short *)(buffer + 12);
    palette = paletteStart;
    for (i = 6; i <= 11; i++) {
        color = *palette;
        red = color & 0x1f;
        green = (color >> 5) & 0x1f;
        blue = (color >> 10) & 0x1f;
        heat = Heat933;
        red += heat / 3;
        blue -= 20;
        blue = blue - (heat / 6) + 20;
        if (heat > 60 && (MeterFrame933 & 1))
            green = green + (heat * 64) / 120 - 32;
        if (red > 31) red = 31;
        if (green > 31) green = 31;
        if (blue > 31) blue = 31;
        *palette++ = (blue << 10) | (green << 5) | red;
    }
    paletteWords = (unsigned int *)(buffer + 16);
    paletteOut = (unsigned int *)0x50003cc;
    CS933_Palette(paletteOut++, *(unsigned int *)paletteStart);
    CS933_Palette(paletteOut++, *paletteWords++);
    CS933_Palette(paletteOut, *paletteWords);
    Heat933 = (MeterState933.numerator * 120) / MeterState933.denominator;
    if (Heat933 > 118) MeterCooldown933 = 119;
    if (MeterCooldown933 != 0) {
        Heat933 = MeterCooldown933;
        MeterCooldown933 -= 8;
        if (MeterCooldown933 <= 0) MeterCooldown933 = 0;
    }
    DMA3_SET(MeterGfx933, buffer, 0x84000240);
    if (MeterCooldown933 <= 118) {
        dst = (unsigned int *)(buffer + 0x50);
        limit = 128 - Heat933;
        fill = 0xeeeeeeee;
        for (i = 12; i < limit; i++) {
            dst[8] = fill;
            *dst++ = fill;
            if ((i & 7) == 7) dst += 8;
        }
        *dst = *(unsigned int *)buffer;
        dst[8] = *(unsigned int *)(buffer + 0x20);
    }
    src = buffer + 0x480;
    out = buffer;
    for (i = 0; i <= 0x47f; i++) {
        unsigned char px = *src++;
        if (px != 0) *out = px;
        out++;
    }
    CS933_Upload(MeterSlot933, 0x480, buffer);
    flags = 0x80008000;
    oam = MeterOam933;
    for (i = 0; i <= 4; i++) {
        x = ((MeterSlide933 << 3) - 16) & 0x1ff;
        if (i == 4) flags = 0x40000000;
        oam[0] = 0;
        oam[1] = (x << 16) | (8 + i * 32) | flags;
        oam[2] = tile | 0xe400;
        CS933_Oam(MeterOam933 + i * 3, 255);
        tile += 8;
        oam += 3;
    }
    CS933_Free(buffer);
}
