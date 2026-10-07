/* field/moves/douse.c */
#include "nonmatching.h"

extern int Random(void);
extern void _Actor_SetScript(void *actor, void *script);
extern unsigned char Data_9f0b0[];
extern void Field_Douse(void);

INCLUDE_ASM("asm/field/moves/douse/Func_8099920.s");

void Func_80999a8(int *r6)
{
    int r5;

    r6[3] += (int)0xffffb334;
    r5 = Random();
    r5 -= Random();
    r6[2] += r5;
    if (r6[3] <= r6[5])
        _Actor_SetScript(r6, Data_9f0b0);
}

void Field_Douse_Target(void) {
    Field_Douse();
}

INCLUDE_ASM("asm/field/moves/douse/Field_Douse.s");
