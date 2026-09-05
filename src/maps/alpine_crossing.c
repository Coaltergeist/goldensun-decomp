/* rom_7b7f1c (overlay file 930): consolidated TU — alpine_crossing map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/alpine_crossing/exports.s");

extern void __CutsceneStart();
extern void __CutsceneEnd();
extern void __Func_801776c();
extern void __MapActor_SetAnim(int, int);
extern void __PlaySound(int);
extern void __Func_8010560(void *, int, int);
extern unsigned char *__MapActor_GetActor(int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_TravelBy(int, int, int);
extern void __CutsceneWait(int);
extern void __Func_8091e9c(int);
extern void __MapActor_Emote(int, int, int);
extern void __ActorMessage_Wait(int, int, int);

unsigned int OvlFunc_930_2008030(unsigned int arg0) {
    unsigned char *p = (unsigned char *)arg0;
    p[0x23] &= 0xfe;
    *(unsigned char *)(*(unsigned int *)(p + 0x50) + 9) |= 0xc;
    *(unsigned char *)(*(unsigned int *)(p + 0x50) + 0x15) |= 0xc;
    return 0;
}

int OvlFunc_930_2008054(char *arg0) {
    char *r5 = arg0;
    int actor = __MapActor_GetActor(0xa);
    *(short *)(r5 + 6) = __atan2(*(int *)(actor + 0x10) - *(int *)(r5 + 0x10), *(int *)(actor + 8) - *(int *)(r5 + 8));
    return 0;
}

INCLUDE_ASM("asm/maps/alpine_crossing/AlpineCrossing_GetEntrances.s");

int AlpineCrossing_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020098ec[];

void *AlpineCrossing_GetExits(void) {
    return (void *)gOvl_020098ec;
}

INCLUDE_ASM("asm/maps/alpine_crossing/AlpineCrossing_GetActors.s");

extern unsigned int iwram_3001ebc;

void OvlFunc_930_20080e8(void) {
    unsigned int r2;
    unsigned short r3;

    __CutsceneStart();
    __MessageID(0x1958);
    __ShowActorMessage_NoWait(0xa, 0);
    if (__Func_8091c7c(0, 0) == 1) {
        __CutsceneWait(0x14);
        __ActorMessage(0xa, 0);
    } else {
        r2 = iwram_3001ebc;
        r3 = *(unsigned short *)(r2 + (0xec << 1));
        r3 += 1;
        *(unsigned short *)(r2 + (0xec << 1)) = r3;
        __Func_8093054(0xa, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_930_2008140(void) {
    __CutsceneStart();
    __MessageID(0x195d);
    __Func_8093054(0xb, 0);
    __CutsceneEnd();
}

void OvlFunc_930_2008160(void) {
    __CutsceneStart();
    __MessageID(0x1961);
    __Func_8093054(0xd, 0);
    __CutsceneEnd();
}

extern unsigned char L1788[] __asm__(".Lm930_1788");

void OvlFunc_930_2008180(void)
{
    int sp1 = 0xcccc;
    int sp2 = 0x6666;
    int dist = -0x10;
    unsigned char *actor;

    do { } while (sp1 == 0);

    __PlaySound(0xbc);
    __Func_8010560(L1788, 0x43, 6);
    actor = __MapActor_GetActor(0);
    actor[0x55] = 0;
    __MapActor_SetSpeed(0, sp1, sp2);
    *(unsigned int *)(iwram_3001ebc + 0x1c0) = 0x100;
    __MapActor_SetAnim(0, 2);
    __MapActor_TravelBy(0, 0, dist);
    __CutsceneWait(0x10);
    __Func_8091e9c(2);
}

INCLUDE_ASM("asm/maps/alpine_crossing/OvlFunc_930_20081ec.s");

void OvlFunc_930_200884c(void)
{
	__CutsceneStart();
	{
		unsigned int rq = 0;
		__MapActor_SetAnim(rq, 1);
	}
	{
		unsigned int rm = 0x1956;
		__Func_801776c(rm, 1);
	}
	__CutsceneEnd();
}

INCLUDE_ASM("asm/maps/alpine_crossing/OvlFunc_930_2008870.s");
INCLUDE_ASM("asm/maps/alpine_crossing/OvlFunc_930_20088a8.s");
INCLUDE_ASM("asm/maps/alpine_crossing/OvlFunc_930_20088e0.s");
INCLUDE_ASM("asm/maps/alpine_crossing/OvlFunc_930_2008924.s");

void OvlFunc_930_2008ac0(void) {
    int actor = 10;
    int emote = 0x105;
    unsigned int r2;
    unsigned short r3;

    do { } while (emote == 0);

    __CutsceneStart();
    __MessageID(0x18b9);
    __MapActor_Emote(actor, emote, 0x3c);
    __ShowActorMessage_NoWait(actor, 0);
    if (__Func_8091c7c(0, 0) == 1) {
        r2 = iwram_3001ebc;
        r3 = *(unsigned short *)(r2 + (0xec << 1));
        r3 += 1;
        *(unsigned short *)(r2 + (0xec << 1)) = r3;
    }
    __CutsceneWait(0x14);
    __MapActor_DoAnim(actor, 4);
    __CutsceneWait(0x14);
    __ActorMessage_Wait(actor, 0, 0x14);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/alpine_crossing/OvlFunc_930_2008b2c.s");
INCLUDE_ASM("asm/maps/alpine_crossing/OvlFunc_930_2008c30.s");

void OvlFunc_930_2008fcc(void)
{
	__CutsceneStart();
	{
		unsigned int rq = 0;
		__MapActor_SetAnim(rq, 1);
	}
	{
		unsigned int rm = 0x1a12;
		__Func_801776c(rm, 1);
	}
	__CutsceneEnd();
}

INCLUDE_ASM("asm/maps/alpine_crossing/OvlFunc_930_2008ff0.s");
INCLUDE_ASM("asm/maps/alpine_crossing/OvlFunc_930_2009028.s");
INCLUDE_ASM("asm/maps/alpine_crossing/OvlFunc_930_2009060.s");

extern unsigned char *__MapActor_GetActor(int idx);
extern void __Func_8092b08(int idx, int val);

void OvlFunc_930_2009090(void) {
    unsigned char *r5;
    unsigned char *p;

    r5 = __MapActor_GetActor(0);
    p = __MapActor_GetActor(0xe);
    if (*(int *)(r5 + 0x10) <= *(int *)(p + 0x10)) {
        __Func_8092b08(0xe, 1);
    }
}

INCLUDE_ASM("asm/maps/alpine_crossing/OvlFunc_930_20090b8.s");

void OvlFunc_930_2009144(void)
{
  unsigned char *p;

  __CutsceneStart();
  {
    unsigned int t1 = 0x15;
    unsigned int t2 = 0xb;
    __Func_8010704(0xe, 6, 1, 2, t1, t2);
  }
  p = (unsigned char *)__MapActor_GetActor(0xf);
  p[0x59] = 0xfe;
  __SetFlag(0x201);
  __CutsceneEnd();
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_4a[];
extern unsigned char Lm930_1c9c[] __asm__(".Lm930_1c9c");
extern unsigned char Lm930_1b10[] __asm__(".Lm930_1b10");

int AlpineCrossing_GetEvents(void)
{
    GlobalState *p = &gState;
    if (*(short *)((char *)p + 0x1c0) == (int)_EVENT_4a)
        return (int)Lm930_1c9c;
    return (int)Lm930_1b10;
}

INCLUDE_ASM("asm/maps/alpine_crossing/AlpineCrossing_MapInit.s");
INCLUDE_ASM("asm/maps/alpine_crossing/alpine_crossing_data.s");

INCLUDE_ASM("asm/maps/alpine_crossing/imports.s");
