/* rom_78603c (overlay file 885): consolidated TU — vale_kraden map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/vale_kraden/exports.s");

extern void __MapActor_TravelToAnim();

INCLUDE_ASM("asm/maps/vale_kraden/OvlFunc_885_2008030.s");

extern unsigned char gOvl_02009cf4[];

unsigned int ValeKraden_GetEntrances(void) {
    return (unsigned int)gOvl_02009cf4;
}

int ValeKraden_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gScript_918__02009db4[];

void *ValeKraden_GetExits(void) {
    return (void *)gScript_918__02009db4;
}
extern unsigned char gScript_918__02009ddc[];

void *ValeKraden_GetActors(void) {
    return (void *)gScript_918__02009ddc;
}

extern unsigned char L2028[] __asm__(".Lm885_2028");
extern unsigned char L1fb0[] __asm__(".Lm885_1fb0");
extern unsigned char L1efc[] __asm__(".Lm885_1efc");

unsigned char *ValeKraden_GetEvents(void) {
    if (__GetFlag(0x87a))
        return L2028;
    if (__GetFlag(0x834))
        return L1fb0;
    return L1efc;
}

INCLUDE_ASM("asm/maps/vale_kraden/OvlFunc_885_20080dc.s");
INCLUDE_ASM("asm/maps/vale_kraden/OvlFunc_885_2008170.s");
INCLUDE_ASM("asm/maps/vale_kraden/OvlFunc_885_2008964.s");

extern unsigned char L20ac[] __asm__(".Lm885_20ac");

void OvlFunc_885_2008ba8(void)
{
    if (!__GetFlag(0x242)) {
        __PlaySound(0x9e);
        __Func_8010560(L20ac, 0x2b, 8);
    }
    {
        unsigned int rq = 0;
        __MapActor_TravelToAnim(rq, 0xe5, 0xd9);
    }
    __Func_8091e9c(3);
}

INCLUDE_ASM("asm/maps/vale_kraden/OvlFunc_885_2008be0.s");
INCLUDE_ASM("asm/maps/vale_kraden/OvlFunc_885_20092a0.s");
INCLUDE_ASM("asm/maps/vale_kraden/ValeKraden_MapInit.s");
INCLUDE_ASM("asm/maps/vale_kraden/OvlFunc_885_2009760.s");

extern unsigned char iwram_3001ebc[];

void OvlFunc_885_20099a4(void)
{
    unsigned int *p;
    __CutsceneStart();
    p = *(unsigned int **)iwram_3001ebc;
    *(unsigned int *)((char *)p + 0x1c0) = 0x200;
    *(unsigned int *)((char *)p + 0x1c8) = 0x40;
    __SetFlag(0x87d);
    __StartMapBattle(0xc, 0);
    __SetFlag(0x900);
    __CutsceneEnd();
}


void OvlFunc_885_20099e8(void)
{
    unsigned int *p;
    __CutsceneStart();
    p = *(unsigned int **)iwram_3001ebc;
    *(unsigned int *)((char *)p + 0x1c0) = 0x200;
    *(unsigned int *)((char *)p + 0x1c8) = 0x40;
    __SetFlag(0x87e);
    __StartMapBattle(0xc, 1);
    __SetFlag(0x900);
    __CutsceneEnd();
}

void OvlFunc_885_2009a2c(void) {
    __CutsceneStart();
    __MessageID(0x1c96);
    __Func_8093054(0x10, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vale_kraden/vale_kraden_data.s");

INCLUDE_ASM("asm/maps/vale_kraden/imports.s");
