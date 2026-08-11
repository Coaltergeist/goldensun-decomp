/* battle_anim/moves/stat_down.c -- consolidated TU. */
#include "nonmatching.h"

extern void BaseAnim_StatDown(void *context, int subanim);

void Anim_Dull(void *context) {
    BaseAnim_StatDown(context, 0);
}


void Anim_Impair(void *context) {
    BaseAnim_StatDown(context, 1);
}


void Anim_Weaken(void *context) {
    BaseAnim_StatDown(context, 2);
}


void Anim_Unused_Weaken(void *context) {
    BaseAnim_StatDown(context, 3);
}

INCLUDE_ASM("asm/battle_anim/moves/stat_down/rom_d9ab8_c_c_c_c.s");
