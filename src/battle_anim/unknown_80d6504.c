/* battle_anim/unknown_80d6504.c */
#include "nonmatching.h"

extern void Func_80dbb98(void);

INCLUDE_ASM("asm/battle_anim/unknown_80d6504/Task_SpinCamera.s");

void Unk_080D655C(unsigned int r0)
{
    unsigned int r5;
    unsigned int r6;

    r5 = r0;
    r6 = 0;
    if (r5 != 0) {
        do {
            r6++;
            Func_80dbb98();
        } while (r6 != r5);
    }
}
