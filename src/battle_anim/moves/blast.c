/* battle_anim/moves/blast.c -- consolidated TU. */
#include "nonmatching.h"

extern void BaseAnim_Blast(void *context, int subanim);

void Anim_SmokeBomb(void *context) {
    BaseAnim_Blast(context, 1);
}


void Anim_Blast(void *context) {
    BaseAnim_Blast(context, 0);
}

INCLUDE_ASM("asm/battle_anim/moves/blast/rom_db6c8_c_c.s");
