/* field/moves/force.c */
#include "nonmatching.h"

extern void Field_Force(void);

INCLUDE_ASM("asm/field/moves/force/Func_8098b10.s");

INCLUDE_ASM("asm/field/moves/force/Func_8098c08.s");

void Field_Force_Target(void) {
    Field_Force();
}

INCLUDE_ASM("asm/field/moves/force/Field_Force.s");
