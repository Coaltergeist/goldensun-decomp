/* rom_7d95dc (overlay file 953): consolidated TU — colosseum map overlay. */

#include "nonmatching.h"
#include "api.h"

INCLUDE_ASM("asm/overlays/rom_7d95dc/colosseum/exports.s");

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;

extern unsigned char _EVENT_8c[], _EVENT_8e[];
extern unsigned char Lm953_3094[] __asm__(".Lm953_3094");
extern unsigned char Lm953_3274[] __asm__(".Lm953_3274");
extern unsigned char Lm953_3034[] __asm__(".Lm953_3034");

void *Colosseum_GetEntrances(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_8c) return Lm953_3094;
    if (ev == (int)_EVENT_8e) return Lm953_3274;
    return Lm953_3034;
}

int Colosseum_GetSpecialExits(void) {
    return 0;
}

void *Colosseum_GetExits(void) {
    extern unsigned char gOvl_0200b2bc[];
    return (void *)gOvl_0200b2bc;
}

extern unsigned char Lconst_8c[] __asm__(".Lconst_8c");
__asm__(".equ .Lconst_8c, 0x8c");
extern unsigned char Lconst_8e[] __asm__(".Lconst_8e");
__asm__(".equ .Lconst_8e, 0x8e");

extern unsigned char Lm953_339c[] __asm__(".Lm953_339c");
extern unsigned char Lm953_35f4[] __asm__(".Lm953_35f4");
extern unsigned char Lm953_37bc[] __asm__(".Lm953_37bc");
extern unsigned char Lm953_387c[] __asm__(".Lm953_387c");
extern unsigned char Lm953_399c[] __asm__(".Lm953_399c");
extern unsigned char Lm953_375c[] __asm__(".Lm953_375c");
extern unsigned char Lm953_3e1c[] __asm__(".Lm953_3e1c");
extern unsigned char Lm953_3bdc[] __asm__(".Lm953_3bdc");
extern unsigned char Lm953_3a44[] __asm__(".Lm953_3a44");
extern unsigned char Lm953_3324[] __asm__(".Lm953_3324");

void *Colosseum_GetActors(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);

    if (ev == (int)Lconst_8c) {
        switch (*(short *)((char *)p + 0x1c2)) {
        case 0x5:
        case 0x45:
            return Lm953_339c;
        case 0x7:
        case 0x46:
            return Lm953_35f4;
        case 0x8:
        case 0x15:
        case 0x1f:
        case 0x40:
        case 0x41:
        case 0x43:
            return Lm953_37bc;
        case 0xc:
            return Lm953_387c;
        case 0x42:
        case 0x44:
            return Lm953_399c;
        default:
            return Lm953_375c;
        }
    }

    if (ev == (int)Lconst_8e) {
        if (API_GetFlag(0x95 << 4))
            return Lm953_3e1c;
        if (API_GetFlag(0x962))
            return Lm953_3bdc;
        return Lm953_3a44;
    }

    return Lm953_3324;
}
extern unsigned char _EVENT_8d[];
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

INCLUDE_ASM("asm/overlays/rom_7d95dc/colosseum/OvlFunc_953_200839c.s");

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




    __CutsceneStart();
    API_MapActor_Surprise((0xe), (0x102));
    __Func_80925cc((0xe), 2);
    __MessageID(0x2116);
    OvlFunc_953_2009c48((0xe));
    API_MapActor_Emote((0xe), (0x102), 0x28);
    __ActorMessage((0xe), 0);
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

extern void __ActorMessage_Wait(int, int, int);
extern void __MapActor_TurnToFaceActor(int, int, int);
extern void __MapActor_SetAnim(int, int);
void OvlFunc_953_200855c(void) {
    extern void __CutsceneStart(void);
    extern void __Func_80925cc(int, int);
    extern void __MessageID(int);
    extern void __ActorMessage_Wait(int, int, int);
    extern int __GetFlag(int);
    extern void __CutsceneWait(int);
    extern void OvlFunc_953_2009c5c(int, int);
    extern void OvlFunc_953_2009c48(int);
    extern void __MapActor_TurnToFaceActor(int, int, int);
    extern void __MapActor_SetAnim(int, int);
    extern void __MapActor_Emote(int, int, int);
    extern void __SetFlag(int);
    extern void __CutsceneEnd(void);

    __CutsceneStart();
    __Func_80925cc(0x10, 2);
    __MessageID(0x211b);
    __ActorMessage_Wait(0x10, 0, 0x14);
    if (API_GetFlag(0x3c1)) {
        __CutsceneWait(0x14);
    } else {
        OvlFunc_953_2009c5c(0x11, 0);
        __Func_80925cc(0x11, 1);
        OvlFunc_953_2009c48(0x11);
        __MapActor_TurnToFaceActor(0x11, 0, 0x14);
        __MapActor_SetAnim(0x11, 4);
        OvlFunc_953_2009c48(0x11);
        __MapActor_Emote(0x11, 0x105, 0x28);
        OvlFunc_953_2009c48(0x11);
        OvlFunc_953_2009c5c(0x11, 0x5000);
        API_SetFlag(0x3c1);
    }
    __CutsceneEnd();
}

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

extern void __MapActor_DoAnim(int, int);
void OvlFunc_953_2008648(void)
{
    extern void __CutsceneStart(void);
    extern void __MapActor_TurnToFaceActor(int, int, int);
    extern void __MessageID(int);
    extern void OvlFunc_953_2009c48(int);
    extern void __Func_8092adc(int, int, int);
    extern void __MapActor_DoAnim(int, int);
    extern void OvlFunc_953_2009c5c(int, int);
    extern void __CutsceneEnd(void);

    __CutsceneStart();
    __MapActor_TurnToFaceActor(0x12, 0, 0x14);
    __MessageID(0x2122);
    OvlFunc_953_2009c48(0x12);
    API_Func_8092adc(0x12, 0xd000, 0x14);
    API_Func_8092adc(0x12, 0xb000, 0x14);
    API_Func_8092adc(0x12, 0x8000, 0x28);
    __MapActor_TurnToFaceActor(0x12, 0, 0x14);
    OvlFunc_953_2009c48(0x12);
    __MapActor_DoAnim(0x12, 3);
    OvlFunc_953_2009c48(0x12);
    OvlFunc_953_2009c5c(0x12, 0x5000);
    __CutsceneEnd();
}

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

INCLUDE_ASM("asm/overlays/rom_7d95dc/colosseum/OvlFunc_953_2008710.s");
INCLUDE_ASM("asm/overlays/rom_7d95dc/colosseum/OvlFunc_953_2008dcc.s");

void OvlFunc_953_20091ac(void) {
    extern void __ClearFlag(int);
    extern void __SetFlag(int);
    int val;
    __ClearFlag(0x235);
    val = 0x8d << 2;
    __SetFlag(val);
}

void OvlFunc_953_20091c4(void) {
    extern void __MapActor_TurnToFaceActor(int, int, int);
    extern void __MessageID(int);
    extern void OvlFunc_953_2009c48(int);
    extern void __Func_809259c(int, int);
    extern void __ActorMessage(int, int);
    extern unsigned char *__Func_8093554(void);
    extern void __Func_80933d4(unsigned int, unsigned int);
    extern void __Func_80933f8(int, int, int, int);
    extern unsigned char *iwram_3001ebc;
    unsigned char *base;
    int flag;

    API_CutsceneStart();
    flag = API_GetFlag(0x8a4);
    if (flag != 0) {
        __MapActor_TurnToFaceActor(0x11, 0, 0x28);
        __MessageID(0x206f);
        OvlFunc_953_2009c48(0x11);
        API_Func_8092adc(0x11, 0xc0 << 6, 0x14);
    } else {
        __Func_809259c(0x11, 2);
        __MessageID(0x206d);
        __ActorMessage(0x11, 0);
        __Func_8093554()[0x55] = flag;
        API_WaitFrames(1);
        __Func_80933d4(0x66666, 0xcccc);
        __Func_80933f8(0x87 << 18, -1, 0xd0 << 16, 1);
        API_Func_8093530();
        base = iwram_3001ebc;
        *(unsigned int *)(base + 0x1c0) = 0x200;
        *(unsigned int *)(base + 0x1c8) = 0x20;
        API_MapTransitionOut();
        API_WaitMapTransition();
        if (API_GetFlag(0x8a3)) {
            API_Func_8091e9c(0x46);
        } else {
            API_Func_8091e9c(7);
        }
    }
    API_CutsceneEnd();
}

INCLUDE_ASM("asm/overlays/rom_7d95dc/colosseum/OvlFunc_953_2009298.s");
void OvlFunc_953_200960c(void) {
    extern unsigned char *iwram_3001ebc;
    extern void OvlFunc_953_2009c48(int);
    extern void OvlFunc_953_2009c5c(int, int);
    unsigned short *p;

    API_CutsceneStart();
    *(unsigned int *)(iwram_3001ebc + (0xe0 << 1)) = 0x201;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x14);
    OvlFunc_953_2009c5c(0x11, 0xa0 << 7);
    API_MessageID(0x206e);
    if (API_GetFlag(0x8a4)) {
        p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    OvlFunc_953_2009c48(0x11);
    OvlFunc_953_2009c5c(0x11, 0xc0 << 6);
    API_SetFlag(0x8a3);
    API_CutsceneEnd();
}
INCLUDE_ASM("asm/overlays/rom_7d95dc/colosseum/OvlFunc_953_2009688.s");

extern unsigned char Lconst_8c[] __asm__(".Lconst_8c");
__asm__(".equ .Lconst_8c, 0x8c");
extern unsigned char Lconst_8e[] __asm__(".Lconst_8e");
__asm__(".equ .Lconst_8e, 0x8e");
extern void OvlFunc_953_2009c6c(void);

int Colosseum_MapInit(void) {
    int offset;
    short a;

    offset = 0xe0;
    offset <<= 1;
    a = *(short *)((char *)&gState + offset);
    if (a == (int)Lconst_8c) {
        OvlFunc_953_2009a4c();
    } else if (a == (int)Lconst_8e) {
        OvlFunc_953_2009c6c();
    }
    return 0;
}

void OvlFunc_953_2009a4c(void)
{
    extern void __WaitFrames(int);
    extern void __MapActor_SetAnim(int, int);
    extern int __GetFlag(int);
    extern void __SetFlag(int);
    extern void __AddPartyMember(int);
    extern void __Func_807a664(void);
    extern void OvlFunc_953_2009298(void);
    extern void OvlFunc_953_200960c(void);
    extern void OvlFunc_953_2009688(void);
    extern void OvlFunc_953_2009cd4(void);
    extern void OvlFunc_953_200a3e0(void);
    extern void OvlFunc_953_200a4d8(void);
    extern void OvlFunc_953_200a5f0(void);
    extern void OvlFunc_953_200a668(void);
    extern void OvlFunc_953_200a820(void);
    extern void OvlFunc_953_200a904(void);
    extern void OvlFunc_953_200a964(void);
    extern void OvlFunc_953_200ab1c(void);
    int offset;
    short val;

    __WaitFrames(1);
    offset = 0xe1;
    offset <<= 1;
    val = *(short *)((char *)&gState + offset);
    switch (val) {
    case 5:
        __MapActor_SetAnim(8, 2);
        __MapActor_SetAnim(9, 2);
        break;
    case 0x45:
        __MapActor_SetAnim(8, 2);
        __MapActor_SetAnim(9, 2);
        if (!__GetFlag(0x109)) {
            OvlFunc_953_200960c();
        }
        break;
    case 7:
        OvlFunc_953_2009298();
        break;
    case 0x46:
        OvlFunc_953_2009688();
        break;
    case 0x40:
        OvlFunc_953_2009cd4();
        __Func_807a664();
        break;
    case 0x41:
        OvlFunc_953_200a3e0();
        break;
    case 0x42:
        OvlFunc_953_200a5f0();
        break;
    case 0xc:
        __SetFlag(0x144);
        OvlFunc_953_200ab1c();
        if (!__GetFlag(0x109)) {
            OvlFunc_953_200a4d8();
        }
        break;
    case 0x15:
        __AddPartyMember(1);
        __AddPartyMember(2);
        __AddPartyMember(3);
        __SetFlag(0x90e);
        OvlFunc_953_200a668();
        break;
    case 0x43:
        OvlFunc_953_200a820();
        break;
    case 0x44:
        OvlFunc_953_200a904();
        break;
    case 0x1f:
        __AddPartyMember(1);
        __AddPartyMember(2);
        __AddPartyMember(3);
        __SetFlag(0x90f);
        OvlFunc_953_200a964();
        break;
    }
}

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

void OvlFunc_953_2009c6c(void) {
    extern void __Func_8092950(int, int);

    if (API_GetFlag(0x95 << 4))
    {
        API_CopyMapTiles(0x40, 0, 0x30, 5, 2, 2);
        API_Func_8010704(0xe, 8, 2, 1, 0x10, 8);
    }
    else
    {
        __Func_8092950(0x10, 2);
        if (API_GetFlag(0x962))
        {
            API_Func_8010704(0x1e, 0x16, 1, 2, 0xe, 0xb);
        }
    }
}

INCLUDE_ASM("asm/overlays/rom_7d95dc/colosseum/OvlFunc_953_2009cd4.s");
INCLUDE_ASM("asm/overlays/rom_7d95dc/colosseum/OvlFunc_953_200a3e0.s");
void OvlFunc_953_200a4d8(void)
{
    extern void Colosseum_MessageActor(int) __asm__("OvlFunc_953_2009c48");
    int actor;
    unsigned short *p;
    unsigned short *p2;
    unsigned short v;

    actor = __MapActor_GetActor(0xd);
    API_CutsceneStart();
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x28);
    API_Func_80925cc(8, 2);
    API_MapActor_SetIdle(0xd);
    API_WaitFrames(1);
    API_Func_8092adc(0, 0xe0 << 8, 0);
    API_MapActor_SetAnim(0xd, 1);
    API_Func_8092adc(0xc, 0xd0 << 8, 0);
    API_Func_8092adc(0xd, 0, 0);
    API_Func_8092adc(0xe, 0x80 << 8, 0);
    API_Func_8092adc(0xf, 0xd0 << 8, 0);
    API_Func_8092adc(0x10, 0x80 << 8, 0);
    API_Func_8092adc(0x11, 0xb0 << 8, 0);
    API_Func_8092adc(0x12, 0xb0 << 8, 0);
    API_MessageID(0x2112);
    Colosseum_MessageActor(8);
    API_MapActor_DoAnim(0, 3);

    p = (unsigned short *)(actor + 0x64);
    v = 0xb4;
    v <<= 2;
    *p = v;

    p2 = (unsigned short *)(actor + 0x66);
    v = 0x70;
    *p2 = v;

    API_MapActor_SetBehavior(0xd, 2);
    API_Func_8092adc(0xc, 0xc0 << 6, 0);
    API_Func_8092adc(0xe, 0xb0 << 8, 0);
    API_Func_8092adc(0xf, 0xa0 << 7, 0);
    API_Func_8092adc(0x10, 0, 0);
    API_Func_8092adc(0x11, 0xa0 << 7, 0);
    API_Func_8092adc(0x12, 0xa0 << 7, 0);
    API_CutsceneEnd();
}
void OvlFunc_953_200a5f0(void)
{
    API_CutsceneStart();
    API_MapActor_SetSpeed(0, 0x19999, 0xcccc);
    API_MapTransitionIn();
    API_MapActor_SetAnim(0, 2);
    API_MapActor_TravelToWait(0, 0xc3 << 2, 0xd6 << 1);
    API_MapActor_TravelToWait(0, 0xdc << 2, 0xd6 << 1);
    API_MapActor_TravelTo(0, 0xf5 << 2, 0xd6 << 1);
    API_MapTransitionOut();
    API_WaitMapTransition();
    if (API_GetFlag(0x90f)) {
        API_Func_8091e9c(0x20);
    } else {
        API_Func_8091e9c(0xc);
    }
}
void OvlFunc_953_200a668(void)
{
    extern void Colosseum_MessageActor(int) __asm__("OvlFunc_953_2009c48");
    extern void __MapActor_RunScript(int, int);
    extern unsigned char gScript_953__0200adac[];

    API_CutsceneStart();
    API_MapActor_SetPos(1, 0xc6 << 18, 0x88 << 16);
    API_MapActor_SetPos(2, 0xce << 18, 0x88 << 16);
    API_MapActor_SetPos(3, 0xca << 18, 0x98 << 16);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x28);
    API_Func_80925cc(8, 1);
    API_MapActor_SetAnim(8, 3);
    API_MessageID(0x2134);
    Colosseum_MessageActor(8);
    API_Func_80925cc(9, 1);
    Colosseum_MessageActor(9);
    API_Func_80925cc(0xa, 1);
    Colosseum_MessageActor(0xa);
    API_Func_80925cc(0xb, 1);
    API_MapActor_SetAnim(0xb, 3);
    Colosseum_MessageActor(0xb);
    API_Func_8092adc(1, 0xe0 << 8, 0);
    API_Func_8092adc(2, 0xa0 << 8, 0x14);
    API_MapActor_SetSpeed(1, 0x80 << 9, 0x80 << 8);
    API_MapActor_SetSpeed(2, 0x80 << 9, 0x80 << 8);
    API_MapActor_SetSpeed(3, 0x80 << 9, 0x80 << 8);
    API_MapActor_SetBehavior(1, (int)gScript_953__0200adac);
    API_MapActor_SetBehavior(2, (int)gScript_953__0200adac);
    __MapActor_RunScript(3, (int)gScript_953__0200adac);
    API_CutsceneWait(0x14);
    OvlFunc_953_2009c5c(0, 0);
    API_MapActor_DoAnim(0, 3);
    API_MapActor_DoAnim(0xb, 3);
    API_MapActor_SetSpeed(0xb, 0x80 << 9, 0x80 << 8);
    API_MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
    API_MapActor_SetAnim(0xb, 2);
    API_MapActor_TravelToWait(0xb, 0x33e, 0x98);
    API_MapActor_TravelToWait(0xb, 0xca << 2, 0xa4);
    API_MapActor_TravelTo(0xb, 0xca << 2, 0x9c << 1);
    API_CutsceneWait(0x14);
    API_Func_80933d4(0x6666, 0xccc);
    API_Func_80933f8(0xca << 18, -1, 0x9c << 17, 1);
    API_MapActor_TravelToAnimWait(0, 0xca << 2, 0xa4);
    API_MapActor_TravelToAnim(0, 0xca << 2, 0x9c << 1);
    API_CutsceneWait(0x3c);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(0x43);
}
void OvlFunc_953_200a820(void)
{
    extern void __Func_8079664(int);
    extern void __AddPartyMember(int);
    unsigned char *actor;
    unsigned short facing;

    if (API_GetFlag(5))
    {
        API_SetFlag(0x16d);
        __Func_8079664(5);
        __AddPartyMember(3);
    }
    API_CutsceneStart();
    API_MapActor_SetPos(0xb, 0xd9 << 18, 0x93 << 18);
    API_WaitFrames(1);
    API_SetCameraTarget(0xb, 1);
    API_MapActor_SetSpeed(0xb, 0x19999, 0xcccc);
    API_MapActor_SetSpeed(0, 0x19999, 0xcccc);
    actor = __MapActor_GetActor(0xb);
    facing = 0x80;
    *(unsigned short *)(actor + 6) = facing << 8;
    API_MapTransitionIn();
    API_MapActor_SetAnim(0, 2);
    API_MapActor_SetAnim(0xb, 2);
    API_MapActor_TravelTo(0, 0xc8 << 2, 0x93 << 2);
    API_MapActor_TravelToWait(0xb, 0xc0 << 2, 0x93 << 2);
    API_MapActor_TravelTo(0, 0xaf << 2, 0x93 << 2);
    API_MapActor_TravelToWait(0xb, 0xa7 << 2, 0x93 << 2);
    API_MapActor_TravelTo(0, 0x96 << 2, 0x93 << 2);
    API_MapActor_TravelTo(0xb, 0x8e << 2, 0x93 << 2);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(0x15);
}

extern void __MapTransitionOut(void);
extern void __Func_8091e9c(int);

void OvlFunc_953_200a904(void) {
    API_CutsceneStart();
    API_MapActor_SetSpeed(0, 0x19999, 0xcccc);
    API_MapTransitionIn();
    API_MapActor_SetAnim(0, 2);
    API_MapActor_TravelToWait(0, 0x320, 0x1ac);
    API_MapActor_TravelToWait(0, 0x2bc, 0x1ac);
    API_MapActor_TravelTo(0, 0x258, 0x1ac);
    __MapTransitionOut();
    API_WaitMapTransition();
    __Func_8091e9c(0x16);
}

void OvlFunc_953_200a964(void)
{
    extern void Colosseum_MessageActor(int) __asm__("OvlFunc_953_2009c48");
    extern void __MapActor_RunScript(int, void *);
    extern unsigned char gScript_953__0200adac[];

    API_CutsceneStart();
    API_MapActor_SetPos(1, 0xc6 << 18, 0x88 << 16);
    API_MapActor_SetPos(2, 0xce << 18, 0x88 << 16);
    API_MapActor_SetPos(3, 0xca << 18, 0x98 << 16);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x28);
    API_Func_80925cc(8, 1);
    API_MapActor_SetAnim(8, 3);
    API_MessageID(0x2138);
    Colosseum_MessageActor(8);
    API_Func_80925cc(9, 1);
    Colosseum_MessageActor(9);
    API_Func_80925cc(0xa, 1);
    Colosseum_MessageActor(0xa);
    API_Func_80925cc(0xb, 1);
    API_MapActor_SetAnim(0xb, 3);
    Colosseum_MessageActor(0xb);
    API_Func_8092adc(1, 0xe0 << 8, 0);
    API_Func_8092adc(2, 0xa0 << 8, 0x14);
    API_MapActor_SetSpeed(1, 0x80 << 9, 0x80 << 8);
    API_MapActor_SetSpeed(2, 0x80 << 9, 0x80 << 8);
    API_MapActor_SetSpeed(3, 0x80 << 9, 0x80 << 8);
    API_MapActor_SetBehavior(1, (int)gScript_953__0200adac);
    API_MapActor_SetBehavior(2, (int)gScript_953__0200adac);
    __MapActor_RunScript(3, gScript_953__0200adac);
    API_CutsceneWait(0x14);
    OvlFunc_953_2009c5c(0, 0);
    API_MapActor_DoAnim(0, 3);
    API_MapActor_DoAnim(0xb, 3);
    API_MapActor_SetSpeed(0xb, 0x80 << 9, 0x80 << 8);
    API_MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
    API_MapActor_SetAnim(0xb, 2);
    API_MapActor_TravelToWait(0xb, 0x33e, 0x98);
    API_MapActor_TravelToWait(0xb, 0xca << 2, 0xa4);
    API_MapActor_TravelTo(0xb, 0xca << 2, 0x9c << 1);
    API_CutsceneWait(0x14);
    API_Func_80933d4(0x6666, 0xccc);
    API_Func_80933f8(0xca << 18, -1, 0x9c << 17, 1);
    API_MapActor_TravelToAnimWait(0, 0xca << 2, 0xa4);
    API_MapActor_TravelToAnim(0, 0xca << 2, 0x9c << 1);
    API_CutsceneWait(0x3c);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(0x40);
}
INCLUDE_ASM("asm/overlays/rom_7d95dc/colosseum/OvlFunc_953_200ab1c.s");
INCLUDE_ASM("asm/overlays/rom_7d95dc/colosseum/colosseum_data.s");

INCLUDE_ASM("asm/overlays/rom_7d95dc/colosseum/imports.s");
