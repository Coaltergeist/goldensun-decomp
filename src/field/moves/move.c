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

extern void _Actor_WaitMovement(void *);
void Func_8098184(int *a)
{
    int v;

    if (a != 0) {
        v = a[6];
        if (v <= 0xffff) {
            int t;
            do {
                t = v + 0x1000;
                v = t;
            } while (t <= 0xffff);
            a[6] = t;
            a[7] = t;
        }
        _Actor_WaitMovement(a);
    }
}

INCLUDE_ASM("asm/field/moves/move/Func_80981b0.s");

INCLUDE_ASM("asm/field/moves/move/rodata.s");
