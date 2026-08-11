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

INCLUDE_ASM("asm/lucky_dice/rom_f4008_a_a_c.s");

/* Func_80f40b4 @ 0x080f40b4  [asm/rom_f4000/rom_f4008_a.s]
 * Fixed-point multiply: (s16)((a*b)/256); the /256 truncating division gives
 * the +0xff negative bias; the final lsl#8/asr#16 is the s16 return cast.
 * NOTE: ROM pushes lr in a leaf (pop {r1}; bx r1 return); watch the diff.
 */

short Func_80f40b4(short a, short b)
{
    register int x __asm__("r0");
    register int y __asm__("r3");
    register int v __asm__("r0");
    int sa, sb;

    sa = a << 16;
    sb = b << 16;
    sb >>= 16;
    sa >>= 16;
    x = sa * sb;
    __asm__ ("" : "=r" (y) : "0" (x));
    if (x < 0)
        y += 0xff;
    v = y << 8;
    v >>= 16;
    __asm__ volatile ("" : : "r" (v));
    return (short)v;
}

short Func_80f40d0(short a, short b) {
    return ((a << 8) / b);
}

short Func_80f40e8(short arg0) {
    return 0x10000 / arg0;
}

INCLUDE_ASM("asm/lucky_dice/rom_f4008_c_c.s");
