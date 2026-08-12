/* battle_anim/moves/meteor.c -- consolidated TU. */
#include "nonmatching.h"

extern void BaseAnim_Meteor(void *context, int subanim);

void Anim_Meteor(void *context) {
    BaseAnim_Meteor(context, 0);
}


void Anim_OuterSpace(void *context) {
    BaseAnim_Meteor(context, 1);
}

INCLUDE_ASM("asm/battle_anim/moves/meteor/Func_80e7338.s");
INCLUDE_ASM("asm/battle_anim/moves/meteor/Func_80e73a0.s");
INCLUDE_ASM("asm/battle_anim/moves/meteor/BaseAnim_Meteor.s");
