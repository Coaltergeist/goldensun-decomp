/* field/moves/whirlwind.c */
#include "nonmatching.h"

extern void _Actor_SetPos();
extern void Field_Whirlwind(void);

INCLUDE_ASM("asm/field/moves/whirlwind/Func_809a738.s");

INCLUDE_ASM("asm/field/moves/whirlwind/Func_809a7f4.s");

void Func_809a890(unsigned int arg0)
{
    int r3;
    r3 = *(int *)(arg0 + 0x18);
    r3 -= 0x80;
    *(int *)(arg0 + 0x1c) = r3;
    *(int *)(arg0 + 0x18) = r3;
    if (r3 < (0x80 << 8)) {
        _Actor_SetPos(arg0, 0, 0, 0);
        *(int *)(arg0 + 0x6c) = 0;
    }
}

void Field_Whirlwind_Target(void) {
    Field_Whirlwind();
}

INCLUDE_ASM("asm/field/moves/whirlwind/Field_Whirlwind.s");
