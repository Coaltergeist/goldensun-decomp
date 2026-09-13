/* rom_7b7f1c (overlay file 930): consolidated TU — alpine_crossing map overlay. */

#include "nonmatching.h"
#include "api.h"

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char Lm930_17b4[] __asm__(".Lm930_17b4");
extern unsigned char Lm930_1844[] __asm__(".Lm930_1844");
extern unsigned char Lconst_4a[] __asm__(".Lconst_4a");
__asm__(".equ .Lconst_4a, 0x4a");

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

unsigned int *AlpineCrossing_GetEntrances(void)
{
    unsigned int r3;
    unsigned int r1;

    r3 = (unsigned int)&gState;
    r1 = 0xe0;
    r1 <<= 1;
    r3 += r1;
    r1 = 0;
    if (*(short *)((char *)r3 + r1) == (int)Lconst_4a) {
        return (unsigned int *)Lm930_1844;
    }
    return (unsigned int *)Lm930_17b4;
}

int AlpineCrossing_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020098ec[];

void *AlpineCrossing_GetExits(void) {
    return (void *)gOvl_020098ec;
}

extern unsigned char Lm930_1918[] __asm__(".Lm930_1918");
extern unsigned char Lm930_1a38[] __asm__(".Lm930_1a38");

unsigned int *AlpineCrossing_GetActors(void)
{
    unsigned int r3;
    unsigned int r1;

    r3 = (unsigned int)&gState;
    r1 = 0xe0;
    r1 <<= 1;
    r3 += r1;
    r1 = 0;
    if (*(short *)((char *)r3 + r1) == (int)Lconst_4a) {
        return (unsigned int *)Lm930_1a38;
    }
    return (unsigned int *)Lm930_1918;
}

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
    unsigned char *actor;

    __PlaySound(0xbc);
    __Func_8010560(L1788, 0x43, 6);
    actor = __MapActor_GetActor(0);
    actor[0x55] = 0;
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    *(unsigned int *)(iwram_3001ebc + 0x1c0) = 0x100;
    __MapActor_SetAnim(0, 2);
    API_MapActor_TravelBy(0, 0, -16);
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

void OvlFunc_930_2008870(void) {
	int a;
    int b;
    a = 0x15;
    b = 9;
    API_Func_8010704(0x55, 9, 1, 1, a, b);
    API_Func_808edac(0x64, 0, 0);
	API_MapActor_SetPos(0xe, 0xac << 17, 0x98 << 16);
}

INCLUDE_ASM("asm/maps/alpine_crossing/OvlFunc_930_20088a8.s");
void OvlFunc_930_20088e0(void)
{
    int actor;
    unsigned int val;

    actor = __MapActor_GetActor(0);
    val = *(unsigned short *)(actor + 6);
    __CutsceneStart();
    if (val - 0xa001 <= 0x3ffe) {
        __UI_Sanctum(0xf);
    } else {
        __MessageID(0x1a1e);
        __ActorMessage(0xf, 0);
    }
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/alpine_crossing/OvlFunc_930_2008924.s");

void OvlFunc_930_2008ac0(void) {
    unsigned int r2;
    unsigned short r3;

    __CutsceneStart();
    __MessageID(0x18b9);
    API_MapActor_Emote(10, 0x105, 0x3c);
    __ShowActorMessage_NoWait(10, 0);
    if (__Func_8091c7c(0, 0) == 1) {
        r2 = iwram_3001ebc;
        r3 = *(unsigned short *)(r2 + (0xec << 1));
        r3 += 1;
        *(unsigned short *)(r2 + (0xec << 1)) = r3;
    }
    __CutsceneWait(0x14);
    API_MapActor_DoAnim(10, 4);
    __CutsceneWait(0x14);
    API_ActorMessage_Wait(10, 0, 0x14);
    __CutsceneEnd();
}

extern void __Func_8093500(int, int);
extern void __Func_8093530(void);

void OvlFunc_930_2008b2c(void)
{
    API_CutsceneStart();
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x1e);
    API_Func_8092adc(0, 0xc0 << 7, 0);
    __Func_8093500(9, 1);
    __Func_8093530();
    API_Func_80925cc(8, 2);
    API_CutsceneWait(0x14);
    API_MessageID(0x19cf);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_Func_80925cc(9, 1);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(9, 0, 0x14);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_Func_8092adc(0xa, 0xd0 << 8, 0x14);
    API_ActorMessage_Wait(0xa, 0, 0x14);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(0x3c);
    API_MapActor_Emote(8, 0x81 << 1, 0x3c);
    API_MapActor_DoAnim(8, 4);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_Func_809259c(0xa, 2);
    API_MapActor_Surprise(0xa, 0x81 << 1);
    API_CutsceneWait(0x3c);
    API_Func_8092adc(0xa, 0xb0 << 8, 0x14);
    API_MapActor_SetAnim(9, 5);
    API_CutsceneEnd();
    API_SetFlag(0x8b1);
}

void OvlFunc_930_2008c30(void)
{
    extern void __MapActor_SetIdle(int);

    API_CutsceneStart();
    API_MapActor_Surprise(8, 0x81 << 1);
    API_Func_809259c(8, 2);
    API_CutsceneWait(0x3c);
    API_MessageID(0x19da);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_MapActor_Surprise(0xa, 0x81 << 1);
    API_MapActor_Jump(0xa, 4, 0);
    API_CutsceneWait(0x3c);
    API_ActorMessage_Wait(0xa, 0, 0x14);
    API_Func_80925cc(8, 1);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_Func_8092adc(0xa, 0xd0 << 8, 0x14);
    API_MapActor_DoAnim(0xa, 3);
    API_CutsceneWait(0x14);
    API_MapActor_TravelToAnim(8, 0xb2, 0x8a << 1);
    API_MapActor_TravelToAnimWait(0xa, 0xac, 0x8e << 1);
    API_MapActor_WaitMovement(8);
    API_Func_8092adc(8, 0xa0 << 7, 0);
    API_Func_8092adc(0xa, 0xb0 << 8, 0);
    API_CutsceneWait(0x14);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(8, 0, 0x14);

    ((unsigned char *)__MapActor_GetActor(8))[0x5a] &= 0xfe;
    ((unsigned char *)__MapActor_GetActor(0xa))[0x5a] &= 0xfe;

    API_MapActor_SetSpeed(8, 0x3333, 0x1999);
    API_MapActor_SetSpeed(0xa, 0x3333, 0x1999);
    API_MapActor_SetAnim(8, 5);
    API_MapActor_SetAnim(0xa, 6);
    API_CutsceneWait(0x14);
    API_PlaySound(0x7d);
    API_MapActor_TravelBy(8, 2, 0);
    API_MapActor_TravelBy(9, 2, 0);
    API_MapActor_TravelBy(0xa, 2, 0);
    API_MapActor_WaitMovement(0xa);
    API_CutsceneWait(0x1e);
    API_MapActor_SetAnim(8, 5);
    API_MapActor_SetAnim(0xa, 6);
    API_CutsceneWait(0x14);
    API_PlaySound(0x7d);
    API_MapActor_TravelBy(8, 4, 0);
    API_MapActor_TravelBy(9, 4, 0);
    API_MapActor_TravelBy(0xa, 4, 0);
    API_MapActor_WaitMovement(0xa);

    __MapActor_SetIdle(9);
    API_MapActor_SetAnim(8, 1);
    API_MapActor_SetAnim(0xa, 1);
    API_CutsceneWait(0x32);
    API_MapActor_Jump(0xa, 2, 0);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(0xa, 0, 0x14);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(0x14);
    __Func_8093054(8, 0);
    API_ActorMessage_Wait(8, 0, 0x14);

    API_MapActor_SetAnim(8, 5);
    API_MapActor_SetAnim(0xa, 6);
    API_CutsceneWait(0x14);
    API_PlaySound(0x7d);
    API_MapActor_TravelBy(8, 2, 0);
    API_MapActor_TravelBy(9, 2, 0);
    API_MapActor_TravelBy(0xa, 2, 0);
    API_MapActor_WaitMovement(0xa);
    API_CutsceneWait(0x1e);
    API_MapActor_SetAnim(8, 5);
    API_MapActor_SetAnim(0xa, 6);
    API_CutsceneWait(0x14);
    API_PlaySound(0x7d);
    API_MapActor_TravelBy(8, 4, 0);
    API_MapActor_TravelBy(9, 4, 0);
    API_MapActor_TravelBy(0xa, 4, 0);
    API_MapActor_WaitMovement(0xa);
    API_CutsceneWait(0x28);

    API_MapActor_SetAnim(8, 1);
    API_MapActor_SetAnim(0xa, 1);
    API_MapActor_Jump(0xa, 2, 0);
    API_CutsceneWait(0x14);
    API_Func_8092adc(0xa, 0xd0 << 8, 0x14);
    API_ActorMessage_Wait(0xa, 0, 0x14);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(8, 0, 0x1e);
    API_ActorMessage_Wait(8, 0, 0x14);

    {
        unsigned char *a = (unsigned char *)__MapActor_GetActor(0xa);
        unsigned char mask = 1;
        a[0x5a] |= mask;
    }

    API_MapActor_SetSpeed(0xa, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(0xa, 0xa8, 0x94 << 1);
    API_Func_8092adc(0xa, 0xd0 << 8, 0x14);
    API_MapActor_SetAnim(0xa, 5);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_MapActor_DoAnim(0xa, 3);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(0xa, 0, 0x14);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(0x14);
    API_CutsceneEnd();
    API_SetFlag(0x8b2);

    *(unsigned int *)(iwram_3001ebc + (0xe0 << 1)) = (0xe0 << 1) + 0x41;

    __Func_8091e9c(6);
}

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

extern void __CopyMapTiles(int, int, int, int, int, int);
void OvlFunc_930_2009028(void) {
    unsigned int a5 = 1, a6 = 2;
    __CopyMapTiles(6, 0x1c, 5, 0xd, a5, a6);
    API_Func_8010704(6, 0x1c, 1, 2, 5, 0xd);
    API_CutsceneWait(1);
}

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
