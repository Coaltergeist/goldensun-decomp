/* battle_anim/moves/fullscreen_slash.c */
#include "nonmatching.h"

extern void BaseAnim_FullScreenSlash(void *context, int subanim);

void Anim_QuickStrike(void *context) {
    BaseAnim_FullScreenSlash(context, 1);
}

void Anim_VorpalSlash(void *context) {
    BaseAnim_FullScreenSlash(context, 2);
}


INCLUDE_ASM("asm/battle_anim/moves/fullscreen_slash/BaseAnim_FullScreenSlash.s");
