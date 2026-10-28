#include "nonmatching.h"

extern void Func_80dbb98(void);

extern unsigned char iwram_3001eec[];

void Task_SpinCamera(void)
{
    unsigned int base;
    unsigned int *camPtr;
    int *counter;
    int d;

    base = *(unsigned int *)iwram_3001eec;
    camPtr = *(unsigned int **)((char *)iwram_3001eec - 0x6c);
    counter = (int *)(base + 0x77b0);

    if (*counter == 1) {
        d = *(int *)(base + 0x77ac);
        *(unsigned short *)((char *)camPtr + 0x36) += d;
        d = 0;
        *counter = d;
    } else {
        int rounded;
        d = *(int *)(base + 0x77ac);
        d = d + ((unsigned int)d >> 31);
        rounded = d >> 1;
        *(unsigned short *)((char *)camPtr + 0x36) += rounded;
        if (*counter == 2) {
            *counter = 0;
        } else {
            *counter = 2;
        }
    }
}

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
