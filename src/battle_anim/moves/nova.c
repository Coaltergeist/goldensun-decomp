/* battle_anim/moves/nova.c -- consolidated TU. */
#include "nonmatching.h"

extern void BaseAnim_Nova(void *context, int subanim);

void Anim_Nova(void *context) {
    BaseAnim_Nova(context, 0);
}


void Anim_Dynamite(void *context) {
    BaseAnim_Nova(context, 1);
}

INCLUDE_ASM("asm/battle_anim/moves/nova/BaseAnim_Nova.s");
