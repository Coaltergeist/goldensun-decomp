/* battle_anim/moves/heal.c -- consolidated TU. */
#include "nonmatching.h"

extern void BaseAnim_Heal(void *context, int subanim);

void Anim_Ply(void *context) {
    BaseAnim_Heal(context, 0);
}


void Anim_Wish(int context) {
    BaseAnim_Heal(context, 1);
}


void Anim_Cure(void *context) {
    BaseAnim_Heal(context, 2);
}


void Anim_CurePoison(void *context) {
    unsigned int v;

    v = *(unsigned int *)((char *)context + 0x18);
    if (v == 0) {
        BaseAnim_Heal(context, 3);
    } else {
        BaseAnim_Heal(context, 4);
    }
}


void Anim_Unused_Restore(void *context) {
    BaseAnim_Heal(context, 4);
}


void Anim_Tonic(void *context) {
    BaseAnim_Heal(context, 5);
}


void Anim_Ember(void *context) {
    BaseAnim_Heal(context, 6);
}

INCLUDE_ASM("asm/battle_anim/moves/heal/rom_d8948_c_c_c_c_c_c.s");
