/* battle_anim/moves/tentacle.c */
#include "nonmatching.h"

extern void BaseAnim_Tentacle(void *context, int subanim);

void Anim_PoisonBeat(void *context) {
    BaseAnim_Tentacle(context, 0);
}


void Anim_SpinningBeat(void *context) {
    BaseAnim_Tentacle(context, 1);
}

INCLUDE_ASM("asm/battle_anim/moves/tentacle/BaseAnim_Tentacle.s");
