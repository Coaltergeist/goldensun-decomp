/* field/moves/catch.c */
#include "nonmatching.h"

extern void Field_Catch(void);

void Field_Catch_Target(void) {
    Field_Catch();
}

INCLUDE_ASM("asm/field/moves/catch/Field_Catch.s");
