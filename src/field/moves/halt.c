/* field/moves/halt.c */
#include "nonmatching.h"

extern unsigned char **iwram_3001f30;
extern void Field_Halt(void);
extern unsigned int MapActor_GetName(unsigned int actorID);

INCLUDE_ASM("asm/field/moves/halt/Func_809aa98.s");

void Field_Halt_Target(void) {
    unsigned char *p;

    p = iwram_3001f30[5];
    p[0x5b] = 1;
    Field_Halt();
}

INCLUDE_ASM("asm/field/moves/halt/Field_Halt.s");

INCLUDE_ASM("asm/field/moves/halt/Func_809ad70.s");

INCLUDE_ASM("asm/field/moves/halt/Func_809ad90.s");

INCLUDE_ASM("asm/field/moves/halt/Func_809ade8.s");

unsigned int Func_809ae3c(unsigned int arg0)
{
	unsigned int r5;
	r5 = arg0;
	if (MapActor_GetName(r5) == 0xff)
		return -1;
	return r5;
}

INCLUDE_ASM("asm/field/moves/halt/rodata.s");
