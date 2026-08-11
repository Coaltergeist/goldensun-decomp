/* ending.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/ending/rom_f0254_a.s");

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

INCLUDE_ASM("asm/ending/rom_f0254_c.s");
