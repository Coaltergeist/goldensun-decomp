/* battle/actor_pos.c -- consolidated TU. */
#include "nonmatching.h"

extern void Func_80e3994(int unit, int *dest);

void GetBattleActorPos(int unit, int *dest)
{
	Func_80e3994(unit, dest);
	dest[1] -= 0x10;
}

extern void _Func_80b845c(unsigned int unit, int *dest);

void GetBattleActorPos2(unsigned int unit, int *dest)
{
	_Func_80b845c(unit, dest);
	dest[1] -= 16;
}

extern void _Func_80b7f20(int unit, int *dest);

void GetBattleActorPos3(int unit, int *dest)
{
	_Func_80b7f20(unit, dest);
	dest[1] -= 0x10;
}

INCLUDE_ASM("asm/battle/actor_pos/rom_e3958_c_c_c_a.s");

extern int iwram_3001eec;
extern volatile unsigned int gKeyHeld;

void Func_80e3a14(void)
{
    int p = *(int *)(iwram_3001eec + 0x7828);

    if (*(short *)(p + 0x24) > 0x7f)
        gKeyHeld;
}

INCLUDE_ASM("asm/battle/actor_pos/rom_e3958_c_c_c_c.s");
