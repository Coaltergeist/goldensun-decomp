/* lucky_wheels.c -- consolidated TU. */
#include "nonmatching.h"

extern volatile unsigned short iwram_disp;
extern unsigned int gState[];
extern unsigned int gRNGState;
extern void _PlaySound(int);
extern void LuckyWheelsMain(void);

int StartLuckyWheels(void)
{
    *(volatile unsigned short *)0x04000000 = 0x40;
    gRNGState = gState[1];
    _PlaySound(9);
    LuckyWheelsMain();
    return 0;
}

INCLUDE_ASM("asm/lucky_wheels/rom_f6008_c.s");
