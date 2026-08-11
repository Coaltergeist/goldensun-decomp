/* battle_anim/moves/breath.c -- consolidated TU. */
#include "nonmatching.h"

extern void BaseAnim_Breath(void *context, int subanim);

void Anim_FireBreath(void *context) {
    BaseAnim_Breath(context, 0);
}


void Anim_WaterBreath(void *context) {
    BaseAnim_Breath(context, 2);
}


void Anim_DarkBreath(void *context) {
    BaseAnim_Breath(context, 6);
}


void Anim_AcidBreath(void *context) {
    BaseAnim_Breath(context, 3);
}


void Anim_StormBreath(void *context) {
    BaseAnim_Breath(context, 5);
}


void Anim_DemonBreath(void *context) {
    BaseAnim_Breath(context, 7);
}


void Anim_DeadlyGas(void *context) {
    BaseAnim_Breath(context, 4);
}

INCLUDE_ASM("asm/battle_anim/moves/breath/rom_dbbdc_c_c_c_c_c_c_c.s");
