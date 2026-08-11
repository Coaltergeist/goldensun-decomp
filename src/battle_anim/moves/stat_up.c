/* battle_anim/moves/stat_up.c -- consolidated TU. */
#include "nonmatching.h"

extern void BaseAnim_StatUp(void *context, int subanim);

void Anim_Impact(void *context) {
    BaseAnim_StatUp(context, 0);
}


void Anim_Guard(void *context) {
    BaseAnim_StatUp(context, 1);
}


void Anim_Ward(int context) {
    BaseAnim_StatUp(context, 2);
}


void Anim_Granite(void *context) {
    BaseAnim_StatUp(context, 3);
}


void Anim_Flash(void *context) {
    BaseAnim_StatUp(context, 5);
}


void Anim_Zephyr(void *context) {
    BaseAnim_StatUp(context, 4);
}

INCLUDE_ASM("asm/battle_anim/moves/stat_up/rom_d9194_c_c_c_c_c_c.s");
