/* rom_7d95dc (overlay file 953): consolidated TU — colosseum map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/colosseum/exports.s");

INCLUDE_ASM("asm/maps/colosseum/Colosseum_GetEntrances.s");

int Colosseum_GetSpecialExits(void) {
    return 0;
}


void *Colosseum_GetExits(void) {
    extern unsigned char gOvl_0200b2bc[];
    return (void *)gOvl_0200b2bc;
}

INCLUDE_ASM("asm/maps/colosseum/Colosseum_GetActors.s");
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_8d[], _EVENT_8c[], _EVENT_8e[];
extern unsigned char Lm953_3e70[] __asm__(".Lm953_3e70");
extern unsigned char Lm953_4110[] __asm__(".Lm953_4110");
extern unsigned char Lm953_3e94[] __asm__(".Lm953_3e94");
extern unsigned char Lm953_3f60[] __asm__(".Lm953_3f60");
extern unsigned char Lm953_3e64[] __asm__(".Lm953_3e64");

int Colosseum_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_8d) return (int)Lm953_3e70;
    if (ev == (int)_EVENT_8c) {
        if (*(short *)((char *)p + 0x1c2) == 0xc) return (int)Lm953_4110;
        return (int)Lm953_3e94;
    }
    if (ev == (int)_EVENT_8e) return (int)Lm953_3f60;
    return (int)Lm953_3e64;
}


void OvlFunc_953_20082a0(void) {
    extern void __CutsceneStart(void);
    extern int __GetFlag(int);
    extern void __MessageID(int);
    extern void __ActorMessage(int, int);
    extern void __Func_8093054(int, int);
    extern void __CutsceneEnd(void);
    extern void __MapActor_Emote(int, int, int);
    __CutsceneStart();
    if (__GetFlag(0x962)) {
        __MessageID(0x2251);
        __ActorMessage(0xa, 0);
    } else {
        __MessageID(0x2057);
        __Func_8093054(0xa, 0);
    }
    __CutsceneEnd();
}
void OvlFunc_953_20082e4(void) {
    extern void __CutsceneStart(void);
    extern int __GetFlag(int);
    extern void __MessageID(int);
    extern void __ActorMessage(int, int);
    extern void __Func_8093054(int, int);
    extern void __CutsceneEnd(void);
    extern void __MapActor_Emote(int, int, int);
    __CutsceneStart();
    if (__GetFlag(0x962)) {
        __MapActor_Emote(0xd, 0x81 << 1, 0x28);
        __MessageID(0x2254);
        __ActorMessage(0xd, 0);
    } else {
        __MessageID(0x205c);
        __ActorMessage(0xd, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_953_2008334(void) {
    __CutsceneStart();
    if (__GetFlag(0x962)) {
        __Func_80925cc(0xe, 2);
        __MessageID(0x2256);
        OvlFunc_953_2009c48(0xe);
        __MapActor_TurnToFaceActor(0xe, 0, 0);
        __CutsceneWait(0x14);
        __Func_8093054(0xe, 0);
        OvlFunc_953_2009c5c(0xe, 0);
    } else {
        __MessageID(0x205d);
        __ActorMessage(0xe, 0);
    }
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/colosseum/OvlFunc_953_200839c.s");


void OvlFunc_953_2008468(void)
{
    extern void OvlFunc_953_2009c48(unsigned int);
    extern void __Func_80925cc(unsigned int, unsigned int);
    extern void __ActorMessage(unsigned int, unsigned int);
  int actor;
  unsigned short *p;
  unsigned short *p2;
  unsigned short v;

  actor = __MapActor_GetActor(0xd);
  __CutsceneStart();
  __MapActor_SetIdle(0xd);
  __MapActor_TurnToFaceActor(0xd, 0, 0x14);
  __MessageID(0x2114);
  OvlFunc_953_2009c48(0xd);
  __Func_80925cc(0xd, 1);
  __ActorMessage(0xd, 0);

  p = (unsigned short *)(actor + 0x64);
  v = 0xb4;
  v <<= 2;
  *p = v;

  p2 = (unsigned short *)(actor + 0x66);
  v = 0x70;
  *p2 = v;

  {
    unsigned short t;
    t = 0xd;
    do { t = (unsigned short) t; } while (0);
    __MapActor_SetBehavior(t, 2);
  }

  __CutsceneEnd();
}

void OvlFunc_953_20084c8(void) {
    extern void __CutsceneStart(void);
    extern void __MapActor_Surprise(int, int);
    extern void __Func_80925cc(int, int);
    extern void __MessageID(int);
    extern unsigned long long OvlFunc_953_2009c48(int);
    extern void __MapActor_Emote(int, int, int);
    extern void __ActorMessage(int, int);
    extern void __CutsceneEnd(void);
    int flag;
    unsigned long msgactor = 0xe;
    flag = 0x102;
    do { } while (flag == 0);
    __CutsceneStart();
    __MapActor_Surprise(msgactor, flag);
    __Func_80925cc(msgactor, 2);
    __MessageID(0x2116);
    OvlFunc_953_2009c48(msgactor);
    __MapActor_Emote(msgactor, flag, 0x28);
    __ActorMessage(msgactor, 0);
    __CutsceneEnd();
}


void OvlFunc_953_200850c(void)
{
    extern unsigned long long OvlFunc_953_2009c48(int);
    extern void OvlFunc_953_2009c5c(int, int);
  __CutsceneStart();
  __MessageID(0x2118);
  OvlFunc_953_2009c48(0xf);
  __MapActor_TurnToFaceActor(0xf, 0, 0x14);
  OvlFunc_953_2009c48(0xf);
 do { __MapActor_DoAnim(0xf, 3); __MapActor_SetAnim(0xf, 0); } while (0);
  OvlFunc_953_2009c48(0xf);
  OvlFunc_953_2009c5c(0xf, 0xa0 << 7);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/colosseum/OvlFunc_953_200855c.s");


void OvlFunc_953_20085f0(void)
{
    extern volatile unsigned long long OvlFunc_953_2009c48(unsigned int arg0);
    extern void OvlFunc_953_2009c5c(unsigned int arg0, unsigned int arg1);
  int new_var;
  int new_var2;
  __CutsceneStart();
  __MapActor_TurnToFaceActor(0x11, 0, 0x14);
  __MessageID(0x211f);
  OvlFunc_953_2009c48(0x11);
 do { new_var = 0; new_var2 = 0x11; } while (0);
  __MapActor_DoAnim(new_var, 3);
  new_var = 1;
  __MapActor_DoAnim(new_var2, 3);
  OvlFunc_953_2009c48(0x11);
  __Func_80925cc(0x11, new_var);
  OvlFunc_953_2009c48(new_var2);
  OvlFunc_953_2009c5c(0x11, 0xa0 << 7);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/colosseum/OvlFunc_953_2008648.s");


void OvlFunc_953_20086bc(void)
{
    extern unsigned char *iwram_3001ebc;
    unsigned short *p;
    unsigned long long t2;
    unsigned long v2;

    __CutsceneStart();
    __MapActor_TurnToFaceActor(8, 0, 0x14);
    __MessageID(0x2125);
    __ShowActorMessage_NoWait(8, 0);
    if (__Func_8091c7c(0, 0)) {
        p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    t2 = 8;
    do { t2 = (unsigned long) t2; } while (0);
    v2 = t2;
    __ActorMessage(v2, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/colosseum/OvlFunc_953_2008710.s");
INCLUDE_ASM("asm/maps/colosseum/OvlFunc_953_2008dcc.s");


void OvlFunc_953_20091ac(void) {
    extern void __ClearFlag(int);
    extern void __SetFlag(int);
    int val;
    __ClearFlag(0x235);
    val = 0x8d << 2;
    __SetFlag(val);
}

INCLUDE_ASM("asm/maps/colosseum/OvlFunc_953_20091c4.s");
INCLUDE_ASM("asm/maps/colosseum/OvlFunc_953_2009298.s");
INCLUDE_ASM("asm/maps/colosseum/OvlFunc_953_200960c.s");
INCLUDE_ASM("asm/maps/colosseum/OvlFunc_953_2009688.s");
INCLUDE_ASM("asm/maps/colosseum/Colosseum_MapInit.s");
INCLUDE_ASM("asm/maps/colosseum/OvlFunc_953_2009a4c.s");


void OvlFunc_953_2009c48(void) {
    extern int __ActorMessage();
    extern int __CutsceneWait();
    int x;
    __ActorMessage(x, 0);
    __CutsceneWait(0xa);
}


void OvlFunc_953_2009c5c(int a, unsigned short b) {
    extern void __Func_8092adc(int a, unsigned short b, int c);
    __Func_8092adc(a, b, 0xa);
}

INCLUDE_ASM("asm/maps/colosseum/OvlFunc_953_2009c6c.s");
INCLUDE_ASM("asm/maps/colosseum/OvlFunc_953_2009cd4.s");
INCLUDE_ASM("asm/maps/colosseum/OvlFunc_953_200a3e0.s");
INCLUDE_ASM("asm/maps/colosseum/OvlFunc_953_200a4d8.s");
INCLUDE_ASM("asm/maps/colosseum/OvlFunc_953_200a5f0.s");
INCLUDE_ASM("asm/maps/colosseum/OvlFunc_953_200a668.s");
INCLUDE_ASM("asm/maps/colosseum/OvlFunc_953_200a820.s");
INCLUDE_ASM("asm/maps/colosseum/OvlFunc_953_200a904.s");
INCLUDE_ASM("asm/maps/colosseum/OvlFunc_953_200a964.s");
INCLUDE_ASM("asm/maps/colosseum/OvlFunc_953_200ab1c.s");

INCLUDE_ASM("asm/maps/colosseum/imports.s");
