/* battle_anim/moves/mud.c -- consolidated TU. */
#include "nonmatching.h"

extern void BaseAnim_Blob(void *context, int subanim);

void Anim_MadSpatter(void *context) {
    BaseAnim_Blob(context, 4);
}


void Anim_Decompose(void *context) {
    BaseAnim_Blob(context, 5);
}


void Anim_BoneChiller(void *context) {
    BaseAnim_Blob(context, 0);
}


void Anim_StickyGoo(void *context) {
    BaseAnim_Blob(context, 1);
}


void Anim_PoisonInk(void *context) {
    BaseAnim_Blob(context, 6);
}


void Anim_StickyPoison(void *context) {
    BaseAnim_Blob(context, 2);
}


void Anim_RottenBlood(void *context) {
    BaseAnim_Blob(context, 3);
}

INCLUDE_ASM("asm/battle_anim/moves/mud/rom_cf88c_c_c_c_c_c_c_c.s");
