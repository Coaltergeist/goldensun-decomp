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

/* Func_80e3a14 @ 0x080e3a14  [asm/rom_c9000/rom_e3958_c_c_c.s]
 *
 * p   = *(int*)(iwram_3001eec + 0x7828)   (iwram_3001eec holds a pointer)
 * val = *(short*)(p + 0x24)               (ldrsh, signed)
 * if (val > 0x7f) { gKeyHeld; }           (dead volatile read; ble skips it)
 * Seed missed the middle deref (used 0x7828 as the short offset) and used the
 * wrong symbol for the dead read (asm: gKeyHeld). Name unchanged by the rename.
 */
extern int iwram_3001eec;
extern volatile unsigned int gKeyHeld;

void Func_80e3a14(void)
{
    int p = *(int *)(iwram_3001eec + 0x7828);

    if (*(short *)(p + 0x24) > 0x7f)
        gKeyHeld;
}

INCLUDE_ASM("asm/battle/actor_pos/rom_e3958_c_c_c_c.s");
