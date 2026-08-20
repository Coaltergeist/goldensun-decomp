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

INCLUDE_ASM("asm/lucky_wheels/Func_80f6038.s");
INCLUDE_ASM("asm/lucky_wheels/Task_BlitLuckyWheelsAnim.s");
INCLUDE_ASM("asm/lucky_wheels/Func_80f6148.s");
INCLUDE_ASM("asm/lucky_wheels/Func_80f61e8.s");
INCLUDE_ASM("asm/lucky_wheels/Func_80f62b8.s");
INCLUDE_ASM("asm/lucky_wheels/Func_80f6440.s");
INCLUDE_ASM("asm/lucky_wheels/Func_80f731c.s");
INCLUDE_ASM("asm/lucky_wheels/LuckyWheelsMain.s");
INCLUDE_ASM("asm/lucky_wheels/Func_80f7db4.s");
INCLUDE_ASM("asm/lucky_wheels/Func_80f7df0.s");
INCLUDE_ASM("asm/lucky_wheels/Func_80f7e34.s");
INCLUDE_ASM("asm/lucky_wheels/Func_80f7e60.s");
INCLUDE_ASM("asm/lucky_wheels/Func_80f7f30.s");
INCLUDE_ASM("asm/lucky_wheels/Func_80f7f78.s");
