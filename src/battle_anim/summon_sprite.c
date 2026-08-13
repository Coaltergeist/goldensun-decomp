// fakematch
/* battle_anim/summon_sprite.c */
#include "nonmatching.h"

INCLUDE_ASM("asm/battle_anim/summon_sprite/Func_80e6d3c.s");
INCLUDE_ASM("asm/battle_anim/summon_sprite/Anim_Unsummon.s");
INCLUDE_ASM("asm/battle_anim/summon_sprite/Func_80e727c.s");

extern unsigned char iwram_3001eec[];

void Func_80e72e0(void) {
    unsigned int src;
    volatile unsigned short *reg;
    volatile unsigned int *dma;

    src = *(unsigned int *)iwram_3001eec;
    reg = (volatile unsigned short *)0x040000b0;
    dma = (volatile unsigned int *)0x040000b0;
    reg[5] = reg[5] & 0xc5ff;
    reg[5] = reg[5] & 0x7fff;
    {
        unsigned short scratch = reg[5];
        register unsigned int s asm("r0") = src + (0xfc << 5);
        register unsigned int d asm("r1") = 0xa0 << 19;
        register unsigned int c asm("r2") = 0xa2600001;
        register volatile unsigned int *p asm("r3") = dma;
        (void)scratch;
        asm volatile("stmia %0!, {%1, %2, %3}\n\tsub %0, #0xc"
                     : "+r"(p) : "r"(s), "r"(d), "r"(c) : "memory");
    }
}
