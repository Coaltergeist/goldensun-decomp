#include "nonmatching.h"

/* helper for Anim_Mercury (called twice by it); precedes it in ROM. */
void Func_80dfddc(unsigned char *src, unsigned char *dst, int w, int h)
{
    int i, j;

    for (i = 0; i != h; i++)
        for (j = 0; j != w; j++)
            dst[(h - 1 - i) + j * h] = src[i * w + j];
}
INCLUDE_ASM("asm/battle_anim/moves/mercury/Anim_Mercury.s");
