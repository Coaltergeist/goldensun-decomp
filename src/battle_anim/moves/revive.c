/* battle_anim/moves/revive.c -- consolidated TU. */
#include "nonmatching.h"

extern void BaseAnim_Revive(void *context, int subanim);

void Anim_Revive(void *context) {
    BaseAnim_Revive(context, 0);
}


void Anim_Dew(void *context) {
    BaseAnim_Revive(context, 1);
}

INCLUDE_ASM("asm/battle_anim/moves/revive/BaseAnim_Revive.s");
