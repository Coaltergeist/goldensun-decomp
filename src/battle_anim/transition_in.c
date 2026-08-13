/* battle_anim/transition_in.c */
#include "nonmatching.h"

#define REG_BG0VOFS (*(volatile unsigned short *)0x04000012)
#define REG_BLDCNT (*(volatile unsigned short *)0x04000050)

INCLUDE_ASM("asm/battle_anim/transition_in/AnimTransitionIn.s");
