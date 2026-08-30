// fakematch
/* rom_7d768c (overlay file 952): consolidated TU — babis_palace map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/babis_palace/exports.s");

INCLUDE_ASM("asm/maps/babis_palace/BabisPalace_GetEntrances.s");

extern unsigned char gOvl_0200ca7c[];

void *BabisPalace_GetSpecialExits(void) {
    return (void *)gOvl_0200ca7c;
}
extern unsigned char gOvl_0200ca8c[];

void *BabisPalace_GetExits(void) {
    return (void *)gOvl_0200ca8c;
}

INCLUDE_ASM("asm/maps/babis_palace/BabisPalace_GetActors.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_20080c8.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_2008108.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_2008264.s");

extern unsigned char Msg2006[] __asm__(".Lm952_2006");
__asm__(".equ .Lm952_2006, 0x2006");

extern void __MessageID(int);
extern int __Func_8091c7c(int, int);
extern void __CutsceneWait(int);
extern void __MapActor_Emote(int, int, int);
extern void __ActorMessage(int, int);

void OvlFunc_952_2008348(unsigned int actor)
{
    int r;
    unsigned int msg = (unsigned int)Msg2006;

    __MessageID(msg);
    __ShowActorMessage_NoWait(actor, 0);
    r = __Func_8091c7c(0, 0);
    if (r == 0) {
        __CutsceneWait(10);
        __MapActor_Emote(actor, 0x102, 0x28);
        __MessageID(msg + 1);
    } else {
        __CutsceneWait(10);
        __MapActor_Emote(actor, 0x105, 0x28);
        __MessageID(msg + 2);
    }
    __ActorMessage(actor, 0);
}

extern void __CutsceneStart();
extern void __CutsceneEnd();
typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_952__0200c570[41];

void *__MapActor_GetActor(unsigned int);
void __MapActor_SetBehavior(unsigned int, ActorCmd *);
void __MapActor_SetIdle(unsigned int);
void __Func_80925cc(unsigned int, unsigned int);
void __Func_8092adc(unsigned int, unsigned int, unsigned int);
void OvlFunc_952_20083b0(unsigned int actor)
{
    unsigned int *p;
    int scale;
    int anim = 0xe000;

    do { } while (anim == 0);

    p = (unsigned int *)__MapActor_GetActor(actor);
    __CutsceneStart();
    __MapActor_SetBehavior(actor, gScript_952__0200c570);
    __MessageID(0x2009);
    __ActorMessage(actor, 0);
    scale = 0x80;
    __MapActor_SetIdle(actor);
    scale <<= 9;
    p[7] = scale;
    p[6] = scale;
    __CutsceneWait(0x1e);
    __Func_80925cc(actor, 2);
    __CutsceneWait(0x1e);
    __Func_80925cc(actor, 2);
    __CutsceneWait(0x3c);
    __ActorMessage(actor, 0);
    __CutsceneWait(0x14);
    __MapActor_Emote(actor, 0x81 << 1, 0x3c);
    __Func_80925cc(actor, 2);
    __CutsceneWait(0x1e);
    __Func_80925cc(actor, 2);
    __CutsceneWait(0x1e);
    __Func_80925cc(actor, 2);
    __CutsceneWait(0x1e);
    __MapActor_SetBehavior(actor, gScript_952__0200c570);
    __ActorMessage(actor, 0);
    __Func_8092adc(actor, anim, 0);
    __CutsceneWait(10);
    p[7] = scale;
    p[6] = scale;
    __MapActor_SetBehavior(actor, gScript_952__0200c570);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_200849c.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_2008524.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_2008564.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_20085a4.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_2008674.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_2008af8.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_2008ff8.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_20097e8.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_200a014.s");
extern unsigned char iwram_3001ebc[];

extern void __PlaySound(int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_SetAnim(int, int);
extern void __Func_80118a8(int);
extern void __MapActor_TravelBy(int, int, int);
extern void __Func_8092208(int, int, int);
extern void __Func_8091e9c(int);
extern void __Func_80118c0(int);
void OvlFunc_952_200bd40(void)
{
    unsigned char *map = *(unsigned char **)iwram_3001ebc;
    int sp1 = 0x8000;
    int sp2 = 0x4000;
    int step = -16;

    do { } while (sp1 == 0);

    __CutsceneStart();
    __PlaySound(0x9e);
    __MapActor_SetSpeed(0, sp1, sp2);
    __MapActor_SetAnim(0, 2);

    if (*(short *)(map + 0x16c) == 0x20) {
        __Func_80118a8(1);
        __CutsceneWait(10);
        __MapActor_TravelBy(0, 0, step);
    } else if (*(short *)(map + 0x16c) == 0x1e) {
        __Func_80118a8(4);
        __CutsceneWait(10);
        __Func_8092208(0, 3, step);
    } else {
        __Func_80118a8(2);
        __CutsceneWait(10);
        __Func_8092208(0, 3, step);
    }
    __CutsceneWait(16);
    __Func_8091e9c(*(short *)(map + 0x16c));
    __Func_80118c0(1);
    __Func_80118c0(2);
    __Func_80118c0(4);
    __CutsceneEnd();
}

extern unsigned char L4550[] __asm__(".Lm952_4550");

void OvlFunc_952_200bdf8(void)
{
  unsigned short v;
  int t;

  __CutsceneStart();
  __MapActor_SetSpeed(0, 0x8000, 0x4000);
  __PlaySound(0x9e);
  v = 0xa;
  do { v = (unsigned short) v; } while (0);
  __Func_8010560(L4550, 0x24, v);
  t = 0x10;
  {
    register int p1 __asm__("r1") = 2;
    __asm__ volatile ("" : : "r" (p1));
    t = -t;
    __Func_8092208(0, p1, t);
  }
  __CutsceneWait(0x10);
  __Func_8091e9c(2);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_200be40.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_200bf84.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_200bfc4.s");

extern void __Func_801776c();

void OvlFunc_952_200c00c(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29e0, 1);
    __CutsceneEnd();
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern int __GetFlag(int);
extern unsigned char _EVENT_8b[];
extern unsigned char Lm952_5ad8[] __asm__(".Lm952_5ad8");
extern unsigned char Lm952_5a48[] __asm__(".Lm952_5a48");
extern unsigned char Lm952_59e8[] __asm__(".Lm952_59e8");
extern unsigned char Lm952_5688[] __asm__(".Lm952_5688");
extern unsigned char Lm952_5394[] __asm__(".Lm952_5394");
extern unsigned char Lm952_5004[] __asm__(".Lm952_5004");

int BabisPalace_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_8b) {
        if (__GetFlag(0x950)) return (int)Lm952_5ad8;
        if (__GetFlag(0x962)) return (int)Lm952_5a48;
        return (int)Lm952_59e8;
    }
    if (__GetFlag(0x950)) return (int)Lm952_5688;
    if (__GetFlag(0x962)) return (int)Lm952_5394;
    return (int)Lm952_5004;
}
INCLUDE_ASM("asm/maps/babis_palace/BabisPalace_MapInit.s");

INCLUDE_ASM("asm/maps/babis_palace/imports.s");
