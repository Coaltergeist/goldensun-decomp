/* rom_7a0010 (overlay file 912): consolidated TU — kolima_rooms map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/kolima_rooms/exports.s");

INCLUDE_ASM("asm/maps/kolima_rooms/OvlFunc_912_2008030.s");

extern unsigned char gOvl_02008318[];

unsigned int KolimaRooms_GetEntrances(void) {
    return (unsigned int)gOvl_02008318;
}

unsigned int KolimaRooms_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008498[];

void *KolimaRooms_GetExits(void) {
    return (void *)gOvl_02008498;
}

extern unsigned char L4d8[] __asm__(".Lm912_4d8");
extern void OvlFunc_912_2008030(void *);

void *KolimaRooms_GetActors(void)
{
  unsigned char *r5;
  if (!__GetFlag(0x845))
    OvlFunc_912_2008030(L4d8);
  r5 = L4d8;
  __Func_808b868(r5);
  return r5;
}

extern void __CutsceneStart(void);
extern void __MessageID(int a);
extern void __ActorMessage(int a, int b);
extern void __CutsceneEnd(void);
extern unsigned char *__MapActor_GetActor(int);
extern void __Func_80b0278(int, int);

void OvlFunc_912_200809c(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b0278(0xd, 0x10);
    } else {
        __MessageID(0x16ad);
        __ActorMessage(0x10, 0);
    }
    __CutsceneEnd();
}


void OvlFunc_912_20080e4(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b0278(0xe, 0x11);
    } else {
        __MessageID(0x16af);
        __ActorMessage(0x11, 0);
    }
    __CutsceneEnd();
}


void OvlFunc_912_200812c(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b0278(0xf, 0x12);
    } else {
        __MessageID(0x16b1);
        __ActorMessage(0x12, 0);
    }
    __CutsceneEnd();
}

extern void __Func_80b3284(int, int);

void OvlFunc_912_2008174(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b3284(3, 0x13);
    } else {
        __MessageID(0x16b7);
        __ActorMessage(0x13, 0);
    }
    __CutsceneEnd();
}

extern unsigned char gOvl_02008658[];

void *KolimaRooms_GetEvents(void) {
    return (void *)gOvl_02008658;
}

INCLUDE_ASM("asm/maps/kolima_rooms/KolimaRooms_MapInit.s");
INCLUDE_ASM("asm/maps/kolima_rooms/kolima_rooms_data.s");

INCLUDE_ASM("asm/maps/kolima_rooms/imports.s");
