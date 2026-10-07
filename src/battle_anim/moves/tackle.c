/* battle_anim/moves/tackle.c -- consolidated TU. */
#include "nonmatching.h"

extern void BaseAnim_Tackle(void *context, int subanim);

void Anim_BoneCharge(void *context) {
    BaseAnim_Tackle(context, 0);
}


void Anim_BruteForce(void *context) {
    BaseAnim_Tackle(context, 1);
}


void Anim_Onslaught(void *context) {
    BaseAnim_Tackle(context, 2);
}


void Anim_Headbutt(void *context) {
    BaseAnim_Tackle(context, 3);
}

INCLUDE_ASM("asm/battle_anim/moves/tackle/BaseAnim_Tackle.s");
