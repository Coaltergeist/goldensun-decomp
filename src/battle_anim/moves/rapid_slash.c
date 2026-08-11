/* battle_anim/moves/rapid_slash.c -- consolidated TU. */
#include "nonmatching.h"

extern void BaseAnim_RapidSlash(void *context, int subanim);

void Anim_RapidSmash(void *context) {
    int v = *(int *)((char *)context + 0x18);
    if (v == 0) {
        BaseAnim_RapidSlash(context, 6);
    } else if (v == 1) {
        BaseAnim_RapidSlash(context, 7);
    } else {
        BaseAnim_RapidSlash(context, 8);
    }
}


void Anim_Counterstrike(void *context) {
    BaseAnim_RapidSlash(context, 0);
}


void Anim_MadDash(void *context) {
    BaseAnim_RapidSlash(context, 0);
}


void Anim_BacteriaRush(void *context) {
    BaseAnim_RapidSlash(context, 1);
}


void Anim_FreebiteRush(void *context) {
    BaseAnim_RapidSlash(context, 2);
}


void Anim_SwiftStrike(void *context) {
    int v3 = *(int *)((char *)context + 0x18);
    if (v3 == 0) {
        BaseAnim_RapidSlash(context, 3);
    } else if (v3 == 1) {
        BaseAnim_RapidSlash(context, 4);
    } else {
        BaseAnim_RapidSlash(context, 5);
    }
}

INCLUDE_ASM("asm/battle_anim/moves/rapid_slash/rom_e28f4_c_c_a.s");

extern int PhysMove(unsigned int src, unsigned int dest);

int Func_80e3944(unsigned int arg0, unsigned int arg1)
{
	int r = PhysMove(arg0, arg1);
	*(int *)(arg1 + 4) -= 0x10;
	return r;
}
