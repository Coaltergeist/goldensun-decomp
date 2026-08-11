/* battle_anim/moves/haunt_attack.c -- consolidated TU. */
#include "nonmatching.h"

extern void BaseAnim_HauntAttack(void *context, int subanim);

void Anim_DemonNight(void *context) {
    BaseAnim_HauntAttack(context, 0);
}


void Anim_Rumble(int context) {
    BaseAnim_HauntAttack(context, 1);
}


void Anim_Haunting(void *context) {
    BaseAnim_HauntAttack(context, 2);
}

INCLUDE_ASM("asm/battle_anim/moves/haunt_attack/rom_ceb30_c_c_c.s");
