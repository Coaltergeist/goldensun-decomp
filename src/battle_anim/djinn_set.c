/* battle_anim/djinn_set.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/battle_anim/djinn_set/rom_cc5d8_a.s");

extern void BaseAnim_Tentacle(void *context, int subanim);

void Anim_PoisonBeat(void *context) {
    BaseAnim_Tentacle(context, 0);
}


void Anim_SpinningBeat(void *context) {
    BaseAnim_Tentacle(context, 1);
}

INCLUDE_ASM("asm/battle_anim/djinn_set/rom_cc5d8_c_c.rodata.s");
