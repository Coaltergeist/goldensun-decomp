/* field/map_actor_api.c -- [?] tail (BattleIntro / Player_EnterStairs) */
#include "nonmatching.h"

INCLUDE_ASM("asm/field/map_actor_api/Func_8094154.s");

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

INCLUDE_ASM("asm/field/map_actor_api/Player_ExitStairs.s");
INCLUDE_ASM("asm/field/map_actor_api/Func_8094428.s");
