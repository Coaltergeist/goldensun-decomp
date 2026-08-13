/* battle_anim/unknown_80d66cc.c */
#include "nonmatching.h"

extern void Func_80cdb24(int);
extern void AnimEnd(void);

INCLUDE_ASM("asm/battle_anim/unknown_80d66cc/Func_80d66cc.s");

INCLUDE_ASM("asm/battle_anim/unknown_80d66cc/Func_80d6750.s");

INCLUDE_ASM("asm/battle_anim/unknown_80d66cc/Func_80d67dc.s");

INCLUDE_ASM("asm/battle_anim/unknown_80d66cc/SetBattleActorState.s");

void Func_80d6960(void)
{
	Func_80cdb24(1);
	AnimEnd();
}
