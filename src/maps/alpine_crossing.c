/* rom_7b7f1c (overlay file 930): consolidated TU — alpine_crossing map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

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

static inline void SetPos16(int x, int y, int actor) {
    extern void __MapActor_SetPos(int, int, int);
    __MapActor_SetPos(actor, x << 16, y << 16);
}
static inline void SetPos15_16(int x, int y, int actor) {
    extern void __MapActor_SetPos(int, int, int);
    __MapActor_SetPos(actor, x << 15, y << 16);
}
static inline void Func8(int x, int actor, int z) {
    extern void __Func_8092adc(int, int, int);
    __Func_8092adc(actor, x << 8, z);
}
static inline void Func7(int x, int actor, int z) {
    extern void __Func_8092adc(int, int, int);
    __Func_8092adc(actor, x << 7, z);
}
static inline void Func6(int x, int actor, int z) {
    extern void __Func_8092adc(int, int, int);
    __Func_8092adc(actor, x << 6, z);
}
static inline void Speed8_7(int s1, int s2, int actor) {
    extern void __MapActor_SetSpeed(int, int, int);
    __MapActor_SetSpeed(actor, s1 << 8, s2 << 7);
}
static inline void Emote1(int emote, int time, int actor) {
    extern void __MapActor_Emote(int, int, int);
    __MapActor_Emote(actor, emote << 1, time);
}
static inline void Emote1_order2(int emote, int actor, int time) {
    extern void __MapActor_Emote(int, int, int);
    __MapActor_Emote(actor, emote << 1, time);
}
static inline void Surprise1(int val, int actor) {
    extern void __MapActor_Surprise(int, int);
    __MapActor_Surprise(actor, val << 1);
}
static inline void Func560(void *a, int b, int c) {
    extern void __Func_8010560(void *, int, int);
    __Func_8010560(a, b, c);
}

extern unsigned char L179e[] __asm__(".Lm930_179e");
extern void __MapActor_PlayPendingSound(void);

void OvlFunc_930_20081ec(void)
{
    API_CutsceneStart();
    SetPos16(0x88, 0xa8, 8);
    Func7(0xa0, 8, 0);
    SetPos16(0x90, 0xc8, 0);
    SetPos16(0xa0, 0xc0, 1);
    SetPos16(0x80, 0xc8, 2);
    SetPos15_16(0xe0, 0xc0, 3);
    Func8(0xc0, 0, 0);
    Func8(0xa0, 1, 0);
    Func8(0xc0, 2, 0);
    Func8(0xe0, 3, 0);

    *(unsigned int *)(iwram_3001ebc + (0xe0 << 1)) = (0xe0 << 1) + 0x41;

    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x3c);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(0x14);
    API_MessageID(0x19e9);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(0x14);
    API_MapActor_DoAnim(8, 4);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_MapActor_DoAnim(3, 4);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(3, 0, 0x14);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(2, 0, 0x14);
    API_Func_80925cc(8, 2);
    Func7(0xa0, 8, 0x14);
    API_ActorMessage_Wait(8, 0, 0x14);
    Emote1(0x81, 0x3c, 2);
    API_CutsceneWait(0x78);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(0x14);
    Func7(0xc0, 1, 0x14);
    __ShowActorMessage_NoWait(1, 0);

    if (__Func_8091c7c(0, 0) == 0) {
        API_CutsceneWait(0x14);
        API_Func_8092adc(3, 0, 0x14);
        API_MapActor_Emote(3, 0x101, 0x3c);
        API_ActorMessage_Wait(3, 0, 0x14);
        Func8(0xe0, 0, 0);
        Func8(0xe0, 2, 0);
        API_Func_809259c(1, 2);
        Surprise1(0x81, 1);
        API_CutsceneWait(0x3c);
        Func8(0x80, 1, 0x14);
        API_ActorMessage_Wait(1, 0, 0x14);
        *(unsigned short *)(iwram_3001ebc + (0xec << 1)) += 2;
    } else {
        *(unsigned short *)(iwram_3001ebc + (0xec << 1)) += 2;
        API_CutsceneWait(0x14);
        API_Func_8092adc(3, 0, 0x14);
        API_MapActor_DoAnim(3, 3);
        API_CutsceneWait(0x14);
        API_ActorMessage_Wait(3, 0, 0x14);
        Emote1_order2(0x81, 1, 0x3c);
        Func8(0xe0, 0, 0);
        Func8(0xe0, 2, 0);
        API_ActorMessage_Wait(1, 0, 0x14);
    }

    API_Func_80925cc(8, 2);
    API_CutsceneWait(0x14);
    Func8(0xc0, 0, 0);
    Func8(0xa0, 1, 0);
    Func8(0xc0, 2, 0);
    Func8(0xe0, 3, 0);
    API_CutsceneWait(0x14);
    Func6(0xc0, 8, 0x14);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(0x14);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(0x1e);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(0x14);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(0x14);
    Func8(0xc0, 8, 0x1e);
    __PlaySound(0xbc);
    Func560(L1788, 0x43, 6);
    API_MapActor_SetSpeed(8, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(8, 0x88, 0x88);
    __MapActor_SetPos(8, 0, 0);
    __PlaySound(0xbc);
    __Func_8010560(L179e, 0x43, 6);
    API_CutsceneWait(0x3c);
    __MapActor_PlayPendingSound();
    API_Func_80925cc(1, 2);
    API_CutsceneWait(0x14);
    Func7(0xc0, 1, 0x14);
    API_ActorMessage_Wait(1, 0, 0x14);
    Func8(0x80, 0, 0x14);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(0x14);
    Func6(0x80, 3, 0x14);
    API_ActorMessage_Wait(3, 0, 0x14);
    API_Func_80925cc(1, 1);
    Func8(0xe0, 0, 0x14);
    __Func_8093054(1, 0);
    API_CutsceneWait(0x14);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(0x14);
    Func8(0x80, 0, 0x14);
    API_ActorMessage_Wait(2, 0, 0x14);
    API_Func_809259c(0, 1);
    API_Func_809259c(1, 1);
    API_Func_80925cc(3, 1);
    API_CutsceneWait(0x14);
    API_MapActor_DoAnim(2, 4);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(2, 0, 0x14);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(3, 0, 0x14);
    Func8(0xb0, 2, 0x14);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(0x14);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(2, 0, 0x14);
    Emote1_order2(0x81, 1, 0x3c);
    API_ActorMessage_Wait(1, 0, 0x14);
    Func8(0xe0, 2, 0x14);
    API_MapActor_DoAnim(2, 4);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(2, 0, 0x14);
    Emote1_order2(0x81, 0, 0);
    Emote1_order2(0x81, 3, 0x3c);
    API_ActorMessage_Wait(3, 0, 0x14);
    Func8(0xa0, 2, 0x14);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(2, 0, 0x14);
    API_Func_809259c(0, 1);
    API_Func_809259c(1, 1);
    API_Func_80925cc(3, 1);
    API_CutsceneWait(0x14);
    Speed8_7(0x80, 0x80, 2);
    API_MapActor_TravelToAnimWait(2, 0x80, 0xb8);
    Func7(0x80, 2, 0x14);
    Func8(0xc0, 0, 0);
    Func8(0xa0, 1, 0);
    Func8(0xe0, 3, 0x14);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(2, 0, 0x14);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(0x14);
    Speed8_7(0x80, 0x80, 1);
    Speed8_7(0x80, 0x80, 3);
    API_MapActor_TravelToAnim(1, 0x90, 0xc8);
    API_MapActor_TravelToAnim(2, 0x90, 0xc8);
    API_MapActor_TravelToAnim(3, 0x90, 0xc8);
    API_MapActor_WaitMovement(1);
    __MapActor_SetPos(1, 0, 0);
    API_MapActor_WaitMovement(2);
    __MapActor_SetPos(2, 0, 0);
    API_MapActor_WaitMovement(3);
    API_MapActor_SetPos(3, 0, 0);
    API_CutsceneEnd();
}

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

void OvlFunc_930_20088a8(void) {
    int a;
    int b;
    a = 0x15;
	b = 9;
	API_Func_8010704(0x15, 0x49, 1, 1, a, b);
	API_Func_808edac(0x64, -1, -1);
	API_MapActor_SetPos(0xe, 0, 0);
}

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
extern unsigned char gScript_930__0200962c[];
extern unsigned char gScript_930__020096b8[];
extern void __Func_8093530(void);
extern void __MapActor_WaitScript(int);
extern void __Func_8092b08(int, int);

void OvlFunc_930_2008924(void) {
    if (__GetFlag(0x89a) != 0) {
        __CutsceneStart();
        API_MapActor_SetPos(0xa, 0x86 << 18, 0xd8 << 16);
        __MessageID(0x18b5);
        API_ActorMessage_Wait(0xa, 0, 0x14);
        API_Func_80925cc(0, 2);
        API_CutsceneWait(0x14);
        *(int *)((char *)__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_930_2008054;
        if (*(int *)((char *)__MapActor_GetActor(0) + 0x10) >> 20 == 0xd) {
            API_MapActor_TravelToAnimWait(0, 0xdc << 1, 0xc8);
        }
        API_MapActor_SetSpeed(0xa, 0x80 << 10, 0x80 << 9);
        __Func_8092b08(0xa, 2);
        API_MapActor_TravelToAnimWait(0xa, 0xcc << 1, 0xd8);
        ((struct Actor *)__MapActor_GetActor(0xa))->flags |= 1;
        API_CutsceneWait(0xa);
        API_Func_8092adc(0xa, 0x80 << 8, 0x14);
        API_ActorMessage_Wait(0xa, 0, 0x14);
        API_Func_809259c(0xa, 2);
        API_MapActor_Surprise(0xa, 0x81 << 1);
        API_CutsceneWait(0x3c);
        API_ActorMessage_Wait(0xa, 0, 0x14);
        __MapActor_SetBehavior(0xa, gScript_930__0200962c);
        API_Func_80933f8(0x94 << 17, -1, 0xac << 17, 1);
        __SetFlag(0x8b << 4);
        __MapActor_WaitScript(0xa);
        __Func_8093530();
        API_MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
        __MapActor_SetBehavior(0, gScript_930__020096b8);
        {
            int zero = 0;
            __MapActor_WaitScript(0);
            API_CutsceneWait(0xa);
            *(int *)((char *)__MapActor_GetActor(0) + 0x6c) = zero;
        }
        API_CutsceneWait(0x1e);
        API_Func_80925cc(0xa, 2);
        API_CutsceneWait(0x14);
        API_Func_8092adc(0xa, 0xa0 << 7, 0x78);
        API_MapActor_Emote(0xa, 0x105, 0x3c);
        API_MapActor_Emote(0, 0x101, 0x3c);
        API_MapActor_DoAnim(0xa, 4);
        API_CutsceneWait(0x14);
        API_ActorMessage_Wait(0xa, 0, 0x14);
        __CutsceneEnd();
    }
}

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

extern void __CopyMapTiles(int, int, int, int, int, int);
void OvlFunc_930_2008ff0(void) {
	int a;
    int b;
	a = 1;
	b = 2;
	__CopyMapTiles(5, 0x1c, 5, 0xd, a, b);
	a = 5;
	b = 0xd;
	API_Func_8010704(5, 0x1c, 1, 2, a, b);
	API_CutsceneWait(1);
}

void OvlFunc_930_2009028(void) {
    unsigned int a5 = 1, a6 = 2;
    __CopyMapTiles(6, 0x1c, 5, 0xd, a5, a6);
    API_Func_8010704(6, 0x1c, 1, 2, 5, 0xd);
    API_CutsceneWait(1);
}

int OvlFunc_930_2009060(struct Actor *arg0) {
    struct Actor *actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor->pos.y > arg0->pos.y) {
        arg0->flags |= 2;
    } else {
        arg0->flags &= ~2;
    }
}


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

void OvlFunc_930_20090b8(void) {
    extern void __Func_8010704(int, int, int, int, int, int);
    int r5;
    int zero = 0;
    __CutsceneStart();
    ((struct Actor *)__MapActor_GetActor(0xe))->flags &= 0xfd;
    ((struct Actor *)__MapActor_GetActor(0xe))->__unk59 &= 0xfd;
    ((struct Actor *)__MapActor_GetActor(0xe))->__unk55 = zero;
    *(int *)((char *)__MapActor_GetActor(0xe) + 0x6c) = (int)OvlFunc_930_2009060;
    r5 = 0x12;
    __Func_8010704(0x37, 0x10, 1, 1, 0x38, r5);
    __Func_8010704(0x37, 0x10, 1, 1, 0x14, r5);
    __WaitFrames(1);
    __SetFlag(0x80 << 2);
    __Func_8092b08(0xe, 2);
    __CutsceneEnd();
}

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

extern unsigned char Lconst_58[] __asm__(".Lconst_58");
__asm__(".equ .Lconst_58, 0x58");
extern unsigned char gScript_930__02009730[];

extern short gState_s[] __asm__("gState");

static inline void MapActor_SetPosScaled(int id, int x, int y) {
    extern void __MapActor_SetPos(int, int, int);
    __MapActor_SetPos(id, x << 16, y << 17);
}

int AlpineCrossing_MapInit(void)
{
    extern void __Func_8010704(int, int, int, int, int, int);
    GlobalState *state;
    int r2;
    unsigned int r1;
    int val;
    int ev;

    r2 = 0xe0;
    r1 = iwram_3001ebc;
    val = 0x80 << 1;
    r2 <<= 1;
    *(unsigned int *)(r1 + r2) = val;
    state = &gState;
    ev = *(short *)((char *)state + r2);
    if (ev == (int)Lconst_58) {
        short entry;
        int a;
        int b;

        __Func_8091ff0(0xa9);
        __MapActor_SetAnim(0xb, 5);
        __MapActor_SetAnim(0xc, 5);
        __MapActor_SetAnim(0xe, 2);
        a = 0x15;
        b = 0x49;
        __Func_8010704(0x15, 9, 1, 1, a, b);
        OvlFunc_930_2008870();
        if (API_GetFlag(0x8b2)) {
            MapActor_SetPosScaled(0xd, 0x88, 0x80);
            __Func_8092adc(0xd, 0, 0);
        }
        entry = *(short *)((char *)state + (0xe1 << 1));
        if (entry == 2) {
            API_ClearFlag(0x12f);
        } else if (entry == 3) {
            if (!API_GetFlag(0x109)) {
                OvlFunc_930_20081ec();
            }
        }
    } else if (ev == (int)Lconst_4a) {
        int one;
        int seventeen;

        __Actor_SetSpriteFlags(__MapActor_GetActor(0xe), 0);
        ((struct Actor *)__MapActor_GetActor(0xe))->flags |= 2;
        if (API_GetFlag(0x200)) {
            __MapActor_SetAnim(0xe, 5);
            OvlFunc_930_20090b8();
        }
        if (API_GetFlag(0x201)) {
            __MapActor_SetAnim(0xf, 4);
            OvlFunc_930_2009144();
        }
        if (*(short *)((char *)state + (0xe1 << 1)) == 4 || *(short *)((char *)state + (0xe1 << 1)) == 5) {
            API_ClearFlag(0x12f);
        }
        if (!API_GetFlag(0x89a) && !API_GetFlag(0x895) && !API_GetFlag(0x8b2)) {
            API_MapActor_SetPos(0xa, 0, 0);
        }
        if (!API_GetFlag(0x8b2)) {
            if (API_GetFlag(0x895)) {
                int off = 0xe1 << 1;
                if (*(short *)((char *)&gState + off) == 2) {
                    API_MapActor_SetPos(0xb, 0, 0);
                    API_SetFlag(0x8b2);
                    API_SetFlag(0x8b3);
                    API_MapActor_SetPos(0xa, 0, 0);
                }
            }
        }
        if (API_GetFlag(0x8b2)) {
            one = 1;
            seventeen = 0x11;
            __CopyMapTiles(0x36, 0x15, 0x35, 0x15, one, 2);
            __Func_8010704(0x12, 0x14, 1, 3, seventeen, 0x15);
            __CopyMapTiles(0x2c, 0x12, 0x2b, 0x11, one, one);
            __Func_8010704(8, 0x11, 1, 1, 7, seventeen);
        }
        if (API_GetFlag(0x895)) {
            if (!API_GetFlag(0x8b2)) {
                API_MapActor_SetPos(0xc, 0, 0);
                API_MapActor_SetPos(0xd, 0, 0);
                MapActor_SetPosScaled(8, 0xc0, 0x84);
                MapActor_SetPosScaled(9, 0xa4, 0x8c);
                MapActor_SetPosScaled(0xa, 0xb8, 0x98);
                API_Func_8092adc(8, 0xa0 << 7, 0);
                API_Func_8092adc(0xa, 0xb0 << 8, 0);
                __MapActor_SetBehavior(9, gScript_930__02009730);
                *(int *)(__MapActor_GetActor(9) + 0x18) = 0xffff0000;
            }
        }
        if (!API_GetFlag(0x8b2)) {
            MapActor_SetPosScaled(9, 0xa4, 0x8c);
            __MapActor_SetBehavior(9, gScript_930__02009730);
            *(int *)(__MapActor_GetActor(9) + 0x18) = 0xffff0000;
        }
        {
            int off = 0xe1 << 1;
            if (*(short *)((char *)&gState + off) == 5) {
                if (!API_GetFlag(0x8b1) && !API_GetFlag(0x109) && !API_GetFlag(0x8b2)) {
                    OvlFunc_930_2008b2c();
                }
            }
        }
    }
    return 0;
}
INCLUDE_ASM("asm/maps/alpine_crossing/alpine_crossing_data.s");

INCLUDE_ASM("asm/maps/alpine_crossing/imports.s");
