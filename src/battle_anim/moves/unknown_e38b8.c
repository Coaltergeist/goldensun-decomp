/* battle_anim/moves/unknown_e38b8.c -- unnamed [?] TU (follows gaia.c). */
#include "nonmatching.h"

INCLUDE_ASM("asm/battle_anim/moves/unknown_e38b8/Func_80e38b8.s");

INCLUDE_ASM("asm/battle_anim/moves/unknown_e38b8/Func_80e3908.s");

extern int PhysMove(unsigned int src, unsigned int dest);

int Func_80e3944(unsigned int arg0, unsigned int arg1)
{
	int r = PhysMove(arg0, arg1);
	*(int *)(arg1 + 4) -= 0x10;
	return r;
}
