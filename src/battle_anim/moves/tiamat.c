/* battle_anim/moves/tiamat.c -- consolidated TU. */
#include "nonmatching.h"

extern void BaseAnim_Tiamat(void *context, int subanim);

void Anim_DragonDriver(void *context) {
    BaseAnim_Tiamat(context, 1);
}


void Anim_Tiamat(void *context) {
    BaseAnim_Tiamat(context, 0);
}

INCLUDE_ASM("asm/battle_anim/moves/tiamat/BaseAnim_Tiamat.s");
