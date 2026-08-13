/* field/moves/ply.c */
#include "nonmatching.h"

extern void Field_Ply(void);
extern void Func_8097174(void);

INCLUDE_ASM("asm/field/moves/ply/Func_80992f0.s");

INCLUDE_ASM("asm/field/moves/ply/Func_8099340.s");

INCLUDE_ASM("asm/field/moves/ply/Func_80993b0.s");

void Field_Ply_Target(void)
{
	Field_Ply();
	Func_8097174();
}

INCLUDE_ASM("asm/field/moves/ply/Field_Ply.s");
