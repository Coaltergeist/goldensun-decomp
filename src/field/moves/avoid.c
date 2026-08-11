/* field/moves/avoid.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/field/moves/avoid/rom_9b698_a_a.s");

unsigned int Func_809ba34(unsigned char *arg0)
{
    signed char v;
    unsigned int x;

    v = *(signed char *)(arg0 + 0x41);
    if (v == 0)
        return 0;
    x = *(unsigned int *)(arg0 + 0xc) ^ 0x80000000;
    return ((unsigned int)(-(int)x | x)) >> 31;
}

void Func_809ba5c(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    unsigned int v3;
    v3 = 0x80 << 24;
    *(unsigned int *)(arg0 + 12) = v3;
    *(unsigned int *)(arg0 + 16) = v3;
    *(unsigned int *)(arg0 + 4) = arg1;
    *(unsigned int *)(arg0 + 8) = arg2;
    *(unsigned int *)(arg0 + 28) = 0;
}

extern void _Sprite_SetAnim(unsigned int);

void Func_809ba70(unsigned int *p) {
    _Sprite_SetAnim(*p);
}

void Func_809ba7c(unsigned int arg0, unsigned int arg1) {
    unsigned int r3 = 0;
    unsigned int r2 = 0;
    *(unsigned int *)(arg0 + 0x34) = arg1;
    *(unsigned short *)(arg0 + 0x3a) = r3;
    *(unsigned short *)(arg0 + 0x38) = r3;
    arg0 += 0x40;
    *(unsigned char *)arg0 = r2;
}

INCLUDE_ASM("asm/field/moves/avoid/rom_9b698_c_c.s");
