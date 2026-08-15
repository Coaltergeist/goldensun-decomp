/* field/moves/move.c */
#include "nonmatching.h"

extern unsigned int gKeyHeld;
extern unsigned short gScript_0809f0f8[] __asm__("gScript_0809f0f8");

unsigned short Func_8097b54(void)
{
    return gScript_0809f0f8[(gKeyHeld >> 4) & 0xf];
}

INCLUDE_ASM("asm/field/moves/move/Func_8097b70.s");

INCLUDE_ASM("asm/field/moves/move/Field_Move_Target.s");

INCLUDE_ASM("asm/field/moves/move/Func_97f80.s");

INCLUDE_ASM("asm/field/moves/move/Field_Move.s");

INCLUDE_ASM("asm/field/moves/move/Func_8098070.s");

INCLUDE_ASM("asm/field/moves/move/Func_8098184.s");

INCLUDE_ASM("asm/field/moves/move/Func_80981b0.s");

INCLUDE_ASM("asm/field/moves/move/rodata.s");
