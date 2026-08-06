// fakematch
/* rom_7d6418 (overlay file 951): consolidated TU — lucky_fountain map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/lucky_fountain/exports.s");

extern unsigned char gOvl_02009a08[];

unsigned int LuckyFountain_GetEntrances(void) {
    return (unsigned int)gOvl_02009a08;
}

unsigned int LuckyFountain_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02009ac8[];

void *LuckyFountain_GetExits(void) {
    return (void *)gOvl_02009ac8;
}

INCLUDE_ASM("asm/maps/lucky_fountain/ovl_30_c_c_a_a_a.s");

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern void OvlFunc_951_2008880(void);
extern void OvlFunc_951_2008ac8(void);

void OvlFunc_951_2008104(void)
{
    unsigned char *base;
    unsigned long v;
    unsigned int x;

    base = (unsigned char *)&gState;
    v = *(unsigned long *)(base + (0xfa * 2));
    if (__GetFlag(0x200) == 0) {
        x = 0x80;
        __asm__ ("" : "+r" (x));
        x <<= 2;
        __SetFlag(x);
        OvlFunc_951_2008880();
    }
    __CutsceneStart();
    __MapActor_TravelToAnimWait(v, 0x78, 0x98);
    __Func_8092adc(v, 0x4000, 0);
    OvlFunc_951_2008ac8();
    __CutsceneEnd();
}

void OvlFunc_951_2008154(void) {
    __CutsceneStart();
    __MessageID(0xe34);
    __ShowActorMessage_NoWait(-1, 0);
    __CutsceneEnd();
}

void OvlFunc_951_2008178(void) {
    __CutsceneStart();
    __MessageID(0xe35);
    __ShowActorMessage_NoWait(-1, 0);
    __CutsceneEnd();
}

extern void OvlFunc_951_20088f8(int);

void OvlFunc_951_200819c(void) {
    OvlFunc_951_20088f8(0);
}

INCLUDE_ASM("asm/maps/lucky_fountain/ovl_30_c_c_c_a.s");

extern unsigned char *__MapActor_GetActor(int actor);

void OvlFunc_951_2008e44(int actor, int visible) {
    unsigned char *p;

    p = __MapActor_GetActor(actor);
    if (p != (unsigned char *)0) {
        p[0x54] = visible;
    }
}

INCLUDE_ASM("asm/maps/lucky_fountain/ovl_30_c_c_c_c.s");

INCLUDE_ASM("asm/maps/lucky_fountain/imports.s");
