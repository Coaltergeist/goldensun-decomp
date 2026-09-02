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

INCLUDE_ASM("asm/maps/lucky_fountain/LuckyFountain_GetActors.s");
INCLUDE_ASM("asm/maps/lucky_fountain/OvlFunc_951_2008074.s");
INCLUDE_ASM("asm/maps/lucky_fountain/OvlFunc_951_20080bc.s");

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

extern unsigned char _EVENT_bd[];
extern unsigned char Events_TolbiSpring[];
extern unsigned char Events_GameBuildings[];

int LuckyFountain_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_bd) return (int)Events_TolbiSpring;
    return (int)Events_GameBuildings;
}
INCLUDE_ASM("asm/maps/lucky_fountain/LuckyFountain_MapInit.s");
INCLUDE_ASM("asm/maps/lucky_fountain/OvlFunc_951_20084bc.s");
INCLUDE_ASM("asm/maps/lucky_fountain/OvlFunc_951_2008880.s");
INCLUDE_ASM("asm/maps/lucky_fountain/OvlFunc_951_20088f8.s");
INCLUDE_ASM("asm/maps/lucky_fountain/OvlFunc_951_20089f8.s");
INCLUDE_ASM("asm/maps/lucky_fountain/OvlFunc_951_2008ac8.s");
INCLUDE_ASM("asm/maps/lucky_fountain/OvlFunc_951_2008d70.s");
INCLUDE_ASM("asm/maps/lucky_fountain/OvlFunc_951_2008dd0.s");

extern unsigned char *__MapActor_GetActor(int actor);

void OvlFunc_951_2008e44(int actor, int visible) {
    unsigned char *p;

    p = __MapActor_GetActor(actor);
    if (p != (unsigned char *)0) {
        p[0x54] = visible;
    }
}

INCLUDE_ASM("asm/maps/lucky_fountain/OvlFunc_951_2008e5c.s");
extern unsigned char Lm951_2070[] __asm__(".Lm951_2070");
extern unsigned char Lm951_205a[] __asm__(".Lm951_205a");
extern unsigned char Lm951_20d0[] __asm__(".Lm951_20d0");
extern unsigned short Lm951_2062[] __asm__(".Lm951_2062");
extern unsigned char Lm951_205e[] __asm__(".Lm951_205e");
extern void OvlFunc_951_2008e5c(void);

void OvlFunc_951_20096a8(void)
{
    int i = 0;
    unsigned char *r0 = Lm951_2070;
    unsigned char *r6 = Lm951_205a;
    unsigned char *r2 = Lm951_20d0;
    unsigned short *r5 = Lm951_2062;
    unsigned char *r4 = Lm951_205e;

    do {
        *(int *)r2 = (int)*r6 << 16;
        *(int *)(r2 + 8) = (int)*r4 << 16;
        *(int *)(r2 + 4) = 0;
        *(unsigned short *)(r2 + 0xc) = *r5;
        *(unsigned short *)(r2 + 0xe) = 0;
        *(unsigned short *)(r2 + 0x10) = 0;
        *(unsigned short *)(r2 + 0x12) = 0;
        *(unsigned short *)(r2 + 0x14) = 0;
        r6++;
        r4++;
        r5++;
        r2 += 0x18;
        i++;
    } while (i != 4);

    *(int *)(r0 + 4) = 0xffe20000;
    *(int *)(r0 + 8) = 0;
    *(int *)(r0 + 0xc) = 0x640000;
    *(int *)(r0 + 0x40) = 0;
    *(int *)(r0 + 0x44) = 0;
    *(int *)(r0 + 0x48) = 0;
    *(int *)(r0 + 0x4c) = 0;

    __Actor_SetAnim(__MapActor_GetActor(0x14), 2);
    __Actor_SetAnim(__MapActor_GetActor(0x15), 2);
    __StartTask(OvlFunc_951_2008e5c, 0xc83);
}
INCLUDE_ASM("asm/maps/lucky_fountain/OvlFunc_951_200973c.s");

INCLUDE_ASM("asm/maps/lucky_fountain/imports.s");
