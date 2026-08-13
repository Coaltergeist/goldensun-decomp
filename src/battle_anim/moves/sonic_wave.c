/* battle_anim/moves/sonic_wave.c */
#include "nonmatching.h"

extern void BaseAnim_SonicWave(void *context, int subanim);

void Anim_SonicWave(void *context) {
    BaseAnim_SonicWave(context, 0);
}


void Anim_Shriek(void *context) {
    BaseAnim_SonicWave(context, 1);
}


void Anim_BansheeHowl(void *context) {
    BaseAnim_SonicWave(context, 2);
}


void Anim_WarCry(void *context) {
    BaseAnim_SonicWave(context, 4);
}


void Anim_WickedHowl(void *context) {
    BaseAnim_SonicWave(context, 3);
}


void Anim_Unused_SonicWave(int context) {
    BaseAnim_SonicWave(context, 1);
}

INCLUDE_ASM("asm/battle_anim/moves/sonic_wave/BaseAnim_SonicWave.s");
