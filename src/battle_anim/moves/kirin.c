/* battle_anim/moves/kirin.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/battle_anim/moves/kirin/rom_eb754_a.s");

#define REG_BG2PA (*(volatile unsigned short *)0x04000020)

void SetBG2Normal(void) {
    REG_BG2PA = 0x100;
}

#define REG_BG2PA (*(volatile unsigned short *)0x04000020)

void SetBG2Wide(void) {
    REG_BG2PA = 0x80;
}

INCLUDE_ASM("asm/battle_anim/moves/kirin/rom_eb754_c_c.s");
