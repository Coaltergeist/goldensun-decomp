/* field/map_actor_api.c -- [?] tail (BattleIntro / Player_EnterStairs) */
#include "nonmatching.h"

INCLUDE_ASM("asm/field/map_actor_api/rom_93304_a_c_c_tail.s");

void Func_80941dc(void) {}

INCLUDE_ASM("asm/field/map_actor_api/rom_93304_c_a.s");

extern void Func_942e0(unsigned int anim);
extern void _SetFlag(int x);

void Player_EnterStairsUp(void) {
    Func_942e0(0x1a);
    _SetFlag(0x90 << 1);
}


void Player_EnterStairsDown(void) {
    Func_942e0(0x19);
    _SetFlag(0x121);
}

INCLUDE_ASM("asm/field/map_actor_api/rom_93304_c_c_c.s");
