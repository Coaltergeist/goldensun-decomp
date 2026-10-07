/* battle_anim/camera.c -- consolidated [?] residual (anims TU extracted) */
#include "nonmatching.h"

extern void Func_80dbb98(void);

INCLUDE_ASM("asm/battle_anim/camera/Task_SpinCamera.s");

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

SECTION(".text.camera_2");

extern void Func_80cdb24(int);
extern void AnimEnd(void);

INCLUDE_ASM_SECTION("asm/battle_anim/camera/Func_80d66cc.s", ".text.camera_2");

INCLUDE_ASM_SECTION("asm/battle_anim/camera/Func_80d6750.s", ".text.camera_2");

INCLUDE_ASM_SECTION("asm/battle_anim/camera/Func_80d67dc.s", ".text.camera_2");

INCLUDE_ASM_SECTION("asm/battle_anim/camera/SetBattleActorState.s", ".text.camera_2");

void Func_80d6960(void)
{
	Func_80cdb24(1);
	AnimEnd();
}
