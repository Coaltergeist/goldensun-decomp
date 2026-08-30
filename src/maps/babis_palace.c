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

INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_20083b0.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_200849c.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_2008524.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_2008564.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_20085a4.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_2008674.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_2008af8.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_2008ff8.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_20097e8.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_200a014.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_200bd40.s");

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

extern void __CutsceneStart();
extern void __Func_801776c();
extern void __CutsceneEnd();

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
