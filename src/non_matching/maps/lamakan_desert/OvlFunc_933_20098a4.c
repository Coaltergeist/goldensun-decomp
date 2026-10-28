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
extern void CS933_Palette(void *, const void *) __asm__("__Func_80038bc");
extern unsigned int CS933_Upload(unsigned int, unsigned int, void *) __asm__("__UploadSpriteGFX");
extern void CS933_Oam(unsigned int *, int) __asm__("__Func_8003dec");

extern int MeterDivide933(int, int) __asm__("_divsi3_RAM");
extern unsigned char MeterColorMask933[] __asm__(".Lmeter_color_mask_933");
__asm__(".equ .Lmeter_color_mask_933, 31");
struct MeterState933 { unsigned char pad[0x22c]; short denominator; unsigned char gap[4]; short numerator; };
extern struct MeterState933 MeterState933 __asm__("gState");
static inline void MeterHalf933(unsigned short *p, int value) { *p = value; }

void OvlFunc_933_20098a4(void)
{
    unsigned int tile = MeterSlots933[MeterSlot933].offset >> 5;
    short *slide;
    unsigned char *scanlines;
    unsigned char *buffer;
    short *palette, *paletteStart;
    unsigned int *paletteOut, *paletteWords;
    unsigned int red, green, blue, color, i, limit, flags, x;
    unsigned int colorMask;
    int heat;
    unsigned short *line;
    unsigned int *dst, *oam;
    unsigned char *src, *out;

    if (MeterForced933 != 0) {
        slide = &MeterSlide933;
        MeterHalf933((unsigned short *)slide, 2);
    } else if (API_GetFlag(0x104)) {
        slide = &MeterSlide933;
        if (*slide > 0) MeterHalf933((unsigned short *)slide, *(unsigned short *)slide - 1);
    } else {
        slide = &MeterSlide933;
        if (*slide <= 1) {
            MeterHalf933((unsigned short *)slide, *(unsigned short *)slide + 1);
            if (*slide == 1)
                DMA3_SET(OvlData_933_2009f80, (void *)0x50003c0, 0x80000010);
        }
    }
    if (*slide == 0) {
        CS933_ReleaseSlot(MeterSlot933);
        return;
    }
    scanlines = MeterScanlines933;
    if (scanlines != 0) {
        scanlines += scanlines[0x539] * 644;
        line = (unsigned short *)(scanlines + 0x26);
        x = (short)(*slide << 3);
        for (i = 0; i <= 0x8f; i++) {
            *line = x;
            line += 2;
        }
    }
    buffer = CS933_Alloc(0x900);
    DMA3_SET(OvlData_933_2009f80, buffer, 0x80000010);
    paletteStart = (short *)(buffer + 12);
    palette = paletteStart;
    colorMask = (unsigned int)MeterColorMask933;
    for (i = 6; i <= 11; i++) {
        color = (unsigned int)*palette << 16;
        red = (color & 0x1f0000) >> 16;
        green = (color >> 21) & colorMask;
        blue = (color >> 26) & colorMask;
        heat = Heat933;
        red += MeterDivide933(heat, 3);
        blue = 20 - (MeterDivide933(heat, 6) - (blue - 20));
        if (heat > 60 && (MeterFrame933 & 1))
            green = green + MeterDivide933(heat * 64, 120) - 32;
        if (red > 31) red = 31;
        if (green > 31) green = 31;
        if (blue > 31) blue = 31;
        *palette++ = (blue << 10) | (green << 5) | red;
    }
    paletteWords = (unsigned int *)(buffer + 16);
    paletteOut = (unsigned int *)0x50003cc;
    CS933_Palette(paletteOut, (const void *)*(unsigned int *)paletteStart);
    paletteOut++;
    CS933_Palette(paletteOut, (const void *)*paletteWords);
    paletteOut++;
    paletteWords++;
    CS933_Palette(paletteOut, (const void *)*paletteWords);
    Heat933 = MeterDivide933(MeterState933.numerator * 120, MeterState933.denominator);
    if (Heat933 > 118) MeterCooldown933 = 119;
    if (MeterCooldown933 != 0) {
        Heat933 = MeterCooldown933;
        MeterCooldown933 -= 8;
        if (MeterCooldown933 <= 0) MeterCooldown933 = 0;
    }
    DMA3_SET(MeterGfx933, buffer, 0x84000240);
    if (MeterCooldown933 <= 118) {
        limit = 128 - Heat933;
        dst = (unsigned int *)(buffer + 0x50);
        for (i = 12; i < limit; i++) {
            dst[8] = 0xeeeeeeee;
            *dst++ = 0xeeeeeeee;
            if ((i & 7) == 7) dst += 8;
        }
        *dst = *(unsigned int *)buffer;
        dst[8] = *(unsigned int *)(buffer + 0x20);
    }
    src = buffer + 0x480;
    out = buffer;
    for (i = 0; i <= 0x47f; i++) {
        color = *src++;
        if (color != 0) *out = color;
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
