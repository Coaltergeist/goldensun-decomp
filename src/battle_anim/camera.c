/* battle_anim/camera.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/battle_anim/camera/rom_d6504_a_a.s");

extern void Func_80dbb98(void);

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

INCLUDE_ASM("asm/battle_anim/camera/rom_d6504_a_c.s");

extern void Func_80cdb24(int);
extern void AnimEnd(void);

void Func_80d6960(void)
{
	Func_80cdb24(1);
	AnimEnd();
}
