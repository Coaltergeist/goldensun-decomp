/* rom_7b2078 (overlay file 926): consolidated TU — fuchin_temple map overlay. */

#include "nonmatching.h"

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __PlaySound(int);
extern void __Func_8010560(void *, int, int);
extern unsigned char *__MapActor_GetActor(int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_SetAnim(int, int);
extern void __MapActor_TravelBy(int, int, int);
extern void __CutsceneWait(int);
extern void __Func_8091e9c(int);

extern void __Actor_SetSpriteFlags();

unsigned int OvlFunc_926_2008314(void) {
    int r0_in;
    __Actor_SetSpriteFlags(r0_in, 0);
    return 0;
}

int OvlFunc_926_2008324(int arg0) {
    int actor = (int)__MapActor_GetActor(0);
    *(unsigned short *)(arg0 + 6) = __atan2(
        *(int *)(actor + 16) - *(int *)(arg0 + 16),
        *(int *)(actor + 8) - *(int *)(arg0 + 8));
    return 0;
}

INCLUDE_ASM("asm/maps/fuchin_temple/FuchinTemple_GetEntrances.s");

unsigned int FuchinTemple_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200c8c8[];

void *FuchinTemple_GetExits(void) {
    return (void *)gOvl_0200c8c8;
}

INCLUDE_ASM("asm/maps/fuchin_temple/FuchinTemple_GetActors.s");

extern unsigned char iwram_3001ebc[];

void OvlFunc_926_2008414(void)
{
  unsigned short *base;
  int new_var;
  int a;
  unsigned short r3;
  unsigned long long t;
  unsigned short v;
  __CutsceneStart();
  new_var = 0;
  __MessageID(0x178a);
  if (__GetFlag(0x890) != new_var)
  {
    base = *((unsigned short **) iwram_3001ebc);
    v = base[0xec];
    r3 = v;
    r3 += 4;
    base[0xec] = r3;
  }
  __ShowActorMessage_NoWait(8, new_var);
  if (__Func_8091c7c(0, 0) == new_var)
  {
    t = 0x890;
    do
    {
      t = (unsigned long) t;
    }
    while (new_var);
    v = t;
    __SetFlag(v);
  }
  else
  {
    base = *((unsigned short **) iwram_3001ebc);
    r3 = base[0xec];
    r3 += 1;
    base[0xec] = r3;
  }
  t = 8;
  do
  {
    t = (unsigned long) t;
  }
  while (new_var);
  a = t;
  __ActorMessage(a, 0);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2008484.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2008518.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2008658.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200871c.s");

void OvlFunc_926_2008abc(void) {
    __CutsceneStart();
    __MessageID(0x17b1);
    __Func_8093054(8, 0);
    __CutsceneEnd();
}

void OvlFunc_926_2008adc(void) {
    __CutsceneStart();
    __MessageID(0x1825);
    __Func_8093054(9, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2008afc.s");

void OvlFunc_926_2008bd4(void) {
    __CutsceneStart();
    __MessageID(0x182d);
    __Func_8093054(0xf, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2008bf4.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2008cd4.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2008db4.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2008e94.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2008f80.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200902c.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2009160.s");

extern void OvlFunc_926_2008bf4(void);
extern void OvlFunc_926_2008cd4(void);
extern void OvlFunc_926_2009160(void);
extern void OvlFunc_926_200902c(int arg0);

void OvlFunc_926_20092e0(void)
{
  int actor;

  __CutsceneStart();
  actor = __MapActor_GetActor(0);
  if (*(unsigned short *)(actor + 6) > 0x4000 &&
      (actor = __MapActor_GetActor(0), *(unsigned short *)(actor + 6) < 0xc000))
  {
    OvlFunc_926_2008bf4();
  }
  else
  {
    OvlFunc_926_2008cd4();
  }
  if (__GetFlag(0x898) != 0)
  {
    OvlFunc_926_2009160();
  }
  else
  {
    OvlFunc_926_200902c(0);
  }
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2009334.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_20093b8.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2009494.s");


void OvlFunc_926_2009d50(void) {
    unsigned short *r2;
    unsigned short r3;
    unsigned short t;

    __CutsceneStart();
    __MessageID(0x186e);
    __ShowActorMessage_NoWait(0x12, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(0x14);
        t = 0x12;
        do { t = (unsigned short) t; } while (0);
        __ActorMessage_Wait(t, 0, 0x14);
        __SetFlag(0x898);
        __CutsceneEnd();
    } else {
        r2 = (unsigned short *)(*(unsigned int *)iwram_3001ebc + (0xec << 1));
        r3 = *r2;
        r3 += 1;
        *r2 = r3;
        t = 0x12;
        do { t = (unsigned short) t; } while (0);
        __ActorMessage_Wait(t, 0, 0x14);
        __CutsceneEnd();
    }
}

INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2009dbc.s");

void OvlFunc_926_200a464(void) {
    __CutsceneStart();
    __MessageID(0x1a58);
    __Func_8093054(0xb, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200a484.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200a508.s");

void OvlFunc_926_200a54c(void)
{
  int new_var;
  int new_var2;
  __CutsceneStart();
  new_var = 0;
  __Func_80925cc(8, 2);
  __MessageID(0x17df);
 do { new_var2 = new_var; __ActorMessage(8, new_var2); } while (0);
  __CutsceneEnd();
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_3c[];
extern unsigned char Lm926_4b90[] __asm__(".Lm926_4b90");
extern unsigned char Lm926_5184[] __asm__(".Lm926_5184");
extern unsigned char Lm926_4d40[] __asm__(".Lm926_4d40");

int FuchinTemple_GetEvents(void)
{
    GlobalState *p = &gState;
    if (*(short *)((char *)p + 0x1c0) == (int)_EVENT_3c) return (int)Lm926_4b90;
    if (*(short *)((char *)p + 0x1c2) == 3) return (int)Lm926_5184;
    return (int)Lm926_4d40;
}
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200a5b8.s");

extern void OvlFunc_926_200a68c(int a, int b);

void OvlFunc_926_200a65c(void) {
    OvlFunc_926_200a68c(0, -0x20);
}


void OvlFunc_926_200a66c(void) {
    OvlFunc_926_200a68c(0, 0x20);
}


void OvlFunc_926_200a67c(void) {
    OvlFunc_926_200a68c(-0x20, 0);
}

INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200a68c.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200a6d8.s");

extern void __PlaySound(int);
extern void __Func_8091e9c(int);

void OvlFunc_926_200a764(void) {
    __PlaySound(0x7b);
    __Func_8091e9c(1);
}

typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_943__0200c764[17];
extern unsigned char *iwram_3001ebc__a2 __asm__("iwram_3001ebc");

void OvlFunc_926_200a778(void)
{
    int sp1 = 0xcccc;
    int sp2 = 0x6666;
    int dist = -0x10;
    unsigned char *actor;

    do { } while (sp1 == 0);

    __CutsceneStart();
    __PlaySound(0xbc);
    __Func_8010560(gScript_943__0200c764, 0x4d, 8);
    actor = __MapActor_GetActor(0);
    actor[0x55] = 0;
    __MapActor_SetSpeed(0, sp1, sp2);
    *(unsigned int *)(*(int *)iwram_3001ebc + 0x1c0) = 0x100;
    __MapActor_SetAnim(0, 2);
    __MapActor_TravelBy(0, 0, dist);
    __CutsceneWait(0x10);
    __Func_8091e9c(2);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200a7ec.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200aad0.s");
INCLUDE_ASM("asm/maps/fuchin_temple/FuchinTemple_MapInit.s");

extern unsigned char *iwram_3001f30;
extern void __SetFlag(int);
extern void __Func_8096fb0(int, int);
extern void __Func_80970f8(unsigned int, unsigned int);
extern void __Func_809728c(void);
extern void __FieldMove(int);
extern void __WaitFrames(int);

void OvlFunc_926_200c0dc(unsigned int arg0, unsigned int arg1)
{
    unsigned char *p;

    __SetFlag(0x140);
    __Func_8096fb0(0x8d, 1);
    p = iwram_3001f30;
    __Func_80970f8(arg0, arg1);
    p[0x23] = 0;
    __Func_809728c();
    __FieldMove(1);
    __WaitFrames(1);
}

void OvlFunc_926_200c128(void)
{
	__MapActor_SetAnim(0, 1);
	__FieldMove(2);
	__Func_8097174();
}

INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200c140.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200c1c4.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200c1ec.s");
