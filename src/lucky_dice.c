// fakematch
/* lucky_dice.c -- consolidated TU. */
#include "nonmatching.h"

extern void _PlaySound(int);
extern void LuckyDiceMain(void);

int StartLuckyDice(void)
{
    *(unsigned short *)(0x80 << 19) = 0x40;
    _PlaySound(9);
    LuckyDiceMain();
    return 0;
}

INCLUDE_ASM("asm/lucky_dice/Func_80f4028.s");

short Func_80f40b4(short a, short b)
{
    int product = (int)b * a;
    int rounded;

    do {
        if (product >= 0) {
            rounded = product;
            break;
        }
        rounded = product + 0xff;
    } while (0);

    return (short)(rounded >> 8);
}

short Func_80f40d0(short a, short b) {
    return ((a << 8) / b);
}

short Func_80f40e8(short arg0) {
    return 0x10000 / arg0;
}

INCLUDE_ASM("asm/lucky_dice/Func_80f4100.s");
INCLUDE_ASM("asm/lucky_dice/LuckyDiceMain.s");
