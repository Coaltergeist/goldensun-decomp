/* battle_anim/moves/neptune.c */
#include "nonmatching.h"

#define REG_BG2PA (*(volatile unsigned short *)0x04000020)

void SetBG2Normal(void) {
    REG_BG2PA = 0x100;
}

void SetBG2Wide(void) {
    REG_BG2PA = 0x80;
}

INCLUDE_ASM("asm/battle_anim/moves/neptune/Anim_Neptune.s");

INCLUDE_ASM("asm/battle_anim/moves/neptune/rodata.s");
