/* battle_anim/moves/growth.c -- consolidated TU. */
#include "nonmatching.h"

extern void BaseAnim_Growth(void *context, int subanim);

void Anim_Growth(void *context) {
    BaseAnim_Growth(context, 0);
}


void Anim_Punji(void *context) {
    BaseAnim_Growth(context, 1);
}

INCLUDE_ASM("asm/battle_anim/moves/growth/rom_dd2ac_c_c.s");
