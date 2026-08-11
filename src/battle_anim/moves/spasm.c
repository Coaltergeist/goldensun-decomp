/* battle_anim/moves/spasm.c -- consolidated TU. */
#include "nonmatching.h"

extern void BaseAnim_Spasm(void *context, int subanim);

void Anim_Berserk(void *context) {
    BaseAnim_Spasm(context, 1);
}


void Anim_Spasm(void *context) {
    BaseAnim_Spasm(context, 0);
}


void Anim_Recovery(void *context) {
    BaseAnim_Spasm(context, 2);
}

INCLUDE_ASM("asm/battle_anim/moves/spasm/rom_cefd4_c_c_c.s");
