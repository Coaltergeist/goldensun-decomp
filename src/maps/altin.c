/* rom_7b8cb0 (overlay file 931): consolidated TU — altin map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/altin/ovl_30_a.s");

int Altin_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02009390[];

void *Altin_GetExits(void) {
    return (void *)gOvl_02009390;
}

INCLUDE_ASM("asm/maps/altin/ovl_30_c_c_a_a.s");

extern unsigned char iwram_3001ebc[];

void OvlFunc_931_200815c(void) {
    unsigned short *r2;
    unsigned short r3;

    __CutsceneStart();
    __MessageID(0x18bd);
    __ShowActorMessage_NoWait(8, 0);
    if (__Func_8091c7c(0, 0) == 1) {
        __ActorMessage(8, 0);
    } else {
        r2 = (unsigned short *)(*(unsigned int *)iwram_3001ebc + (0xec << 1));
        r3 = *r2;
        r3 += 1;
        *r2 = r3;
        __Func_8093054(8, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_931_20081b0(void) {
    __CutsceneStart();
    __MessageID(0x1918);
    __Func_8093054(9, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/altin/ovl_30_c_c_c_a.s");

void OvlFunc_931_2008298(void) {
    __CutsceneStart();
    __MessageID(0x1924);
    __Func_8093054(0x11, 0);
    __CutsceneEnd();
}

void OvlFunc_931_20082b8(void) {
    __CutsceneStart();
    __MessageID(0x1932);
    __Func_8093054(9, 0);
    __CutsceneEnd();
}

void OvlFunc_931_20082d8(void) {
    __CutsceneStart();
    __MessageID(0x18d9);
    __Func_8093054(0xa, 0);
    __CutsceneEnd();
}

void OvlFunc_931_20082f8(void) {
    __CutsceneStart();
    __MessageID(0x18e1);
    __Func_8093054(0xe, 0);
    __CutsceneEnd();
}

void OvlFunc_931_2008318(void) {
    __CutsceneStart();
    __MessageID(0x194a);
    __Func_8093054(0x15, 0);
    __CutsceneEnd();
}

unsigned int OvlFunc_931_2008338(void) {
    unsigned int r0;
    unsigned int r2;
    unsigned int r3;

    r0 = __MapActor_GetActor(0);
    r2 = 0x5fff;
    r3 = *(unsigned short *)((char *)r0 + 6);
    r3 += r2;
    r2 = 0x3ffe0000;
    r3 <<= 16;
    if (r3 <= r2) {
        return 1;
    }
    return 0;
}

INCLUDE_ASM("asm/maps/altin/ovl_30_c_c_c_c_c_c_c_c_c_a_a.s");

void OvlFunc_931_20084bc(void)
{
    unsigned short v;

    v = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6) + 0x5fff;
    if (v <= 0x3ffe) {
        __Func_80b3284(6, 0x12);
    } else {
        __CutsceneStart();
        if (__GetFlag(0x909) != 0) {
            __MessageID(0x1947);
            __ActorMessage(0x12, 0);
        } else {
            __MessageID(0x18f5);
            __Func_8093054(0x12, 0);
        }
        __CutsceneEnd();
    }
}

INCLUDE_ASM("asm/maps/altin/ovl_30_c_c_c_c_c_c_c_c_c_a_c.s");

void OvlFunc_931_200884c(void) {
    int r3;
    r3 = *(int *)((char *)__MapActor_GetActor(0x13) + 8);
    if ((r3 >> 20) == 0x16) {
        __SetFlag(0x906);
    } else {
        __ClearFlag(0x906);
    }
}

INCLUDE_ASM("asm/maps/altin/ovl_30_c_c_c_c_c_c_c_c_c_c.s");
