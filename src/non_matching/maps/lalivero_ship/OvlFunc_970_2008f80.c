#include "math.h"

extern unsigned char iwram_3001ad0[];

extern short Lm970_14c8[] __asm__(".Lm970_14c8");

void OvlFunc_970_2008f80(void)
{
    unsigned char *base;
    unsigned char *ad0;
    signed short offset2;
    short *out;
    int step;
    int acc;
    int scale;
    int offset1;
    int i;

    ad0 = iwram_3001ad0;
    base = *(unsigned char **)iwram_3001ed8;
    offset2 = *(signed short *)(ad0 + 0xe);

    out = (short *)(base + ((base[0xf00] ^ 1) * 0x780));
    step = *(int *)(base + 0xf10);
    acc = *(int *)(base + 0xf08) * (*(unsigned short *)(base + 0xf02) + (unsigned short)offset2);
    scale = *(int *)(base + 0xf18);
    offset1 = *(unsigned short *)(ad0 + 0xc);

    for (i = 0; i != 160; i++) {
        unsigned short s = fx32_multiply(Lm970_14c8[(acc >> 16) & 0xff], scale) / 256;
        *out = s + offset1;
        acc += step;
        out += 2;
    }

    out = (short *)(base + ((base[0xf00] ^ 1) * 0x780)) + 1;
    step = *(int *)(base + 0xf14);
    acc = *(int *)(base + 0xf0c) * (*(unsigned short *)(base + 0xf02) + (unsigned short)offset2);
    scale = *(int *)(base + 0xf1c);

    for (i = 0; i != 160; i++) {
        unsigned short s = fx32_multiply(Lm970_14c8[(acc >> 16) & 0xff], scale) / 256;
        *out = s + (unsigned short)offset2;
        acc += step;
        out += 2;
    }

    *(unsigned short *)(base + 0xf02) += 1;
    base[0xf00] ^= 1;
}
