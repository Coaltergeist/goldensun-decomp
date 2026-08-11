/* actor/player.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/actor/player/rom_ebec_a.s");

extern unsigned int Func_800eaf8(unsigned int);

unsigned int ActorCmd_Camera2(unsigned int arg0) {
    unsigned int r5;
    unsigned short r3;

    r5 = arg0;
    Func_800eaf8(r5);
    r3 = *(unsigned short *)((char *)r5 + 4);
    r3 = r3 + 1;
    *(unsigned short *)((char *)r5 + 4) = r3;
    return 1;
}

INCLUDE_ASM("asm/actor/player/rom_ebec_c.s");
