/* ending.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/ending/Func_80f0254.s");
INCLUDE_ASM("asm/ending/LoadGS1CreditsBG.s");
INCLUDE_ASM("asm/ending/Func_80f037c.s");

extern unsigned int iwram_3001800;
extern unsigned short iwram_3001ad0;

void Func_80f03c0(void) {
    unsigned short *p;
    if ((iwram_3001800 & 3) == 0) {
        p = &iwram_3001ad0;
        *(unsigned short *)((char *)p + 8) = *(unsigned short *)((char *)p + 8) - 1;
        *(unsigned short *)((char *)p + 12) = *(unsigned short *)((char *)p + 12) - 1;
    }
}

INCLUDE_ASM("asm/ending/StartGS1Credits.s");
INCLUDE_ASM("asm/ending/Func_80f0538.s");
INCLUDE_ASM("asm/ending/Func_80f0614.s");
INCLUDE_ASM("asm/ending/Func_80f0678.s");
INCLUDE_ASM("asm/ending/Func_80f07f0.s");
