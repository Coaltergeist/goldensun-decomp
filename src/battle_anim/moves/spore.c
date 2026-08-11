/* battle_anim/moves/spore.c -- consolidated TU. */
#include "nonmatching.h"

extern void BaseAnim_Spore(void *context, int subanim);

void Anim_SleepStar(void *context) {
    BaseAnim_Spore(context, 1);
}


void Anim_SoothingStar(void *context) {
    BaseAnim_Spore(context, 0);
}

INCLUDE_ASM("asm/battle_anim/moves/spore/rom_ca1e4_c_c.s");
