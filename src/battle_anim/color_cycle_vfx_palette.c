#include "math.h"

extern void *Func_8001af8(void *, const void *, unsigned int);

static inline void CopyPalette(void *dst, const void *src, unsigned int size)
{
    void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
    copy(dst, src, size);
}

void ColorCycleVFXPalette(int a0, int a1, int a2, int a3)
{
    u16 palette[64];
    int r, g, b;
    int i;

    a0 <<= 10;
    r = (sin(a0 + a1) << 4) >> 15;
    g = (sin(a0 + a2) << 4) >> 15;
    b = (sin(a0 + a3) << 4) >> 15;

    palette[0] = 0;
    for (i = 1; i != 64; i++) {
        int red = (i + r) / 2;
        int green = (i + g) / 2;
        int blue = (i + b) / 2;

        if (red < 0)
            red = 0;
        if (red > 31)
            red = 31;
        if (green < 0)
            green = 0;
        if (green > 31)
            green = 31;
        if (blue < 0)
            blue = 0;
        if (blue > 31)
            blue = 31;

        palette[i] = (blue << 10) | (green << 5) | red;
    }

    CopyPalette((void *)0x05000002, palette, 0x80);
}
