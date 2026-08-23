// fakematch
/* rom_7b7f1c (overlay file 930): consolidated TU — alpine_crossing map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/alpine_crossing/exports.s");

extern void __CutsceneStart();
extern void __CutsceneEnd();
extern void __Func_801776c();
extern void __MapActor_SetAnim();

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
extern unsigned char *iwram_3001ebc__a1 __asm__("iwram_3001ebc");

void OvlFunc_930_2008180(void)
{
  int pActor;
  int t;

  __PlaySound(0xbc);
  __Func_8010560(L1788, 0x43, 6);
  pActor = __MapActor_GetActor(0);
  *(unsigned char *)(pActor + 0x55) = 0;
  {
    unsigned int v1 = 0xcccc;
    {
      register unsigned int rq __asm__("r0") = 0;
      __asm__ volatile ("" : : "r" (rq));
      {
        unsigned int v2 = 0x6666;
        __MapActor_SetSpeed(rq, v1, v2);
      }
    }
  }
  *(unsigned int *)(iwram_3001ebc__a1 + 0x1c0) = 0x100;
  {
    register unsigned int rq __asm__("r0") = 0;
    __asm__ volatile ("" : : "r" (rq));
    __MapActor_SetAnim(rq, 2);
  }
  t = 0x10;
  {
    register int p1 __asm__("r1") = 0;
    __asm__ volatile ("" : : "r" (p1));
    t = -t;
    __MapActor_TravelBy(0, p1, t);
  }
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

// fakematch
extern unsigned char iwram_3001ebc__a2[] __asm__("iwram_3001ebc");

void OvlFunc_930_2008ac0(void) {
    unsigned short *r2;
    unsigned short r3;
    unsigned short t2;
    register int a0 __asm__("r0");
    register int a1 __asm__("r1");
    register int a2 __asm__("r2");

    __CutsceneStart();
    __MessageID(0x18b9);
    a0 = 10;
    __asm__ volatile ("" : "+r" (a0));
    a1 = 0x105;
    __asm__ volatile ("" : "+r" (a1));
    a2 = 0x3c;
    __MapActor_Emote(a0, a1, a2);
    __ShowActorMessage_NoWait(10, 0);
    if (__Func_8091c7c(0, 0) == 1) {
        r2 = (unsigned short *)(*(unsigned int *)iwram_3001ebc__a2 + (0xec << 1));
        r3 = *r2;
        r3 += 1;
        *r2 = r3;
    }
    __CutsceneWait(0x14);
    __MapActor_DoAnim(10, 4);
    __CutsceneWait(0x14);
    t2 = 10;
    do { t2 = (unsigned short) t2; } while (0);
    __ActorMessage_Wait(t2, 0, 0x14);
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

INCLUDE_ASM("asm/maps/alpine_crossing/imports.s");
