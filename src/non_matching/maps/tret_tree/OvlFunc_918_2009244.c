extern int iwram_3001e40;

extern int Lm918_2db8 __asm__(".Lm918_2db8");

extern const int Lm918_1f00[] __asm__(".Lm918_1f00");

extern int __Random(void);

void OvlFunc_918_2009244(void) {
    unsigned short *src = iwram_3001ebc[5];
    unsigned short *dst;
    unsigned int i;
    int idx;

    if (((short *)iwram_3001ebc[0])[0xbf] != 0) {
        return;
    }
    if (iwram_3001e40 & 0x1f) {
        return;
    }

    dst = (unsigned short *)0x5000020;
    src = (unsigned short *)((char *)src + 0x20);
    i = 0;

    for (i = 0; i <= 0x3e; i++) {
        int r4, r7, r6;
        int r, g, b;
        int color;

        r4 = Lm918_1f00[Lm918_2db8];
        r7 = Lm918_1f00[Lm918_2db8 + 1];
        r6 = Lm918_1f00[Lm918_2db8 + 2];

        if (i > 0x2f) {
            r4 -= r4 / 2 + _divsi3_RAM(r4, 3);
            r7 -= _divsi3_RAM(r7, 3) + r7 / 2;
            r6 -= _divsi3_RAM(r6, 3) + r6 / 2;
        } else if (i > 0x1f) {
            r4 -= _divsi3_RAM(r4, 3) + r4 / 4;
            r7 -= _divsi3_RAM(r7, 3) + r7 / 4;
            r6 -= _divsi3_RAM(r6, 3) + r6 / 4;
        } else if (i > 0xf) {
            r4 -= r4 / 4 + _divsi3_RAM(r4, 5);
            r7 -= r7 / 4 + _divsi3_RAM(r7, 5);
            r6 -= r6 / 4 + _divsi3_RAM(r6, 5);
        }

        color = *src;
        r = color & 0x1f;
        g = (color >> 5) & 0x1f;
        b = (color >> 10) & 0x1f;

        r += r4;
        g += r7;
        b += r6;

        if (r > 0x1f) r = 0x1f;
        if (g > 0x1f) g = 0x1f;
        if (b > 0x1f) b = 0x1f;
        if (r < 0) r = 0;
        if (g < 0) g = 0;
        if (b < 0) b = 0;

        *dst = (b << 10) | (g << 5) | r;
        dst++;
        src++;
    }

    Lm918_2db8 += (__Random() & 7) * 3;
    if (Lm918_1f00[Lm918_2db8] == 0x63) {
        Lm918_2db8 = 0;
    }
}
