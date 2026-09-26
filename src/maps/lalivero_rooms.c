/* rom_7f21b8 (overlay file 967): consolidated TU — lalivero_rooms map overlay. */

#include "nonmatching.h"
#include "api.h"

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char gOvl_02009690[];
extern unsigned char Lm967_16b0[] __asm__(".Lm967_16b0");
extern unsigned char Lconst_b3[] __asm__(".Lconst_b3");
__asm__(".equ .Lconst_b3, 0xb3");

INCLUDE_ASM("asm/maps/lalivero_rooms/exports.s");

extern void __MapActor_Surprise(int actor, int flag);

unsigned int OvlFunc_967_2008030(void) {
    unsigned long actor = 0xe;

    API_MapActor_Surprise(actor, 0x102);
    return 0;
}

extern unsigned char gOvl_02009438[];

void *LaliveroRooms_GetEntrances(void) {
    return (void *)gOvl_02009438;
}

unsigned int *LaliveroRooms_GetSpecialExits(void)
{
    unsigned int r3;
    unsigned int r1;

    r3 = (unsigned int)&gState;
    r1 = 0xe0;
    r1 <<= 1;
    r3 += r1;
    r1 = 0;
    if (*(short *)((char *)r3 + r1) == (int)Lconst_b3) {
        return (unsigned int *)gOvl_02009690;
    }
    return (unsigned int *)Lm967_16b0;
}

extern unsigned char gOvl_020096d0[];

void *LaliveroRooms_GetExits(void) {
    return (void *)gOvl_020096d0;
}

extern unsigned char Lm967_1974[] __asm__(".Lm967_1974");
extern unsigned char Lm967_189c[] __asm__(".Lm967_189c");
extern unsigned char Lm967_1734[] __asm__(".Lm967_1734");
extern unsigned char Lconst_b4[] __asm__(".Lconst_b4");
__asm__(".equ .Lconst_b4, 0xb4");

void *LaliveroRooms_GetActors(void)
{
    GlobalState *p = &gState;
    short v = *(short *)((char *)p + 0x1c0);
    if (v == (int)Lconst_b4) {
        if (__GetFlag(0x9a7)) return (void *)Lm967_1974;
        return (void *)Lm967_189c;
    }
    return (void *)Lm967_1734;
}
extern unsigned char Lconst_26e3[] __asm__(".Lconst_26e3");
__asm__(".equ .Lconst_26e3, 0x26e3");

/* Preserve the overlay's historical ignored-return message-call declarations
 * (PROJECT_BIBLE section 7.4); explicit prototype changes alter GCC 2.96 scheduling.
 * All message arguments retain their original 32-bit calling convention. */
void OvlFunc_967_20080c8(int actor) {
    int msg;
    void *r0 = __MapActor_GetActor(0);
    short r3 = (*(unsigned short *)((char *)r0 + 6) + 0x2000) & (int)0xffffc000;

    if ((unsigned short)r3 == 0xc000) {
        __Func_80b0278(0x20, actor);
    } else if (__GetFlag(0x9a7)) {
        __MessageID(0x28f0);
        __ActorMessage(actor, 0);
    } else {
        msg = (int)Lconst_26e3;
        __MessageID(msg);
        __ShowActorMessage_NoWait(actor, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            __CutsceneWait(10);
            __MessageID(msg + 1);
        } else {
            __MessageID(msg + 2);
        }
        __ActorMessage(actor, 0);
    }
}
void __Func_80b0278(int, int);

void OvlFunc_967_200815c(int actor) {
    void *r0 = __MapActor_GetActor(0);
    short r3 = (*(unsigned short *)((char *)r0 + 6) + 0x2000) & (int)0xffffc000;

    if ((unsigned short)r3 == 0xc000) {
        __Func_80b0278(0x21, actor);
    } else if (__GetFlag(0x9a7)) {
        __MessageID(0x28f2);
        __ActorMessage(actor, 0);
    } else {
        __MessageID(0x26e7);
        __ActorMessage(actor, 0);
    }
}
void OvlFunc_967_20081c8(int actor) {
    void *r0 = __MapActor_GetActor(0);
    short r3 = (*(unsigned short *)((char *)r0 + 6) + 0x2000) & (int)0xffffc000;

    if ((unsigned short)r3 == 0xc000) {
        __Func_80b0278(0x22, actor);
    } else if (__GetFlag(0x9a7)) {
        __MessageID(0x28f4);
        __ActorMessage(actor, 0);
    } else {
        __MessageID(0x26e9);
        __ActorMessage(actor, 0);
    }
}
void __UI_Sanctum(int);

void OvlFunc_967_2008234(int actor) {
    void *r0 = __MapActor_GetActor(0);
    short r3 = (*(unsigned short *)((char *)r0 + 6) + 0x2000) & (int)0xffffc000;

    if ((unsigned short)r3 == 0xc000) {
        __UI_Sanctum(actor);
    } else if (__GetFlag(0x9a7)) {
        __MessageID(0x28fc);
        __ActorMessage(actor, 0);
    } else {
        __MessageID(0x26f6);
        __ActorMessage(actor, 0);
    }
}
void __Func_80b3284(int, int);

void OvlFunc_967_200829c(int actor) {
    void *r0 = __MapActor_GetActor(0);
    short r3 = (*(unsigned short *)((char *)r0 + 6) + 0x2000) & (int)0xffffc000;

    if ((unsigned short)r3 == 0xc000) {
        __Func_80b3284(0xb, actor);
    } else if (__GetFlag(0x9a7)) {
        __MessageID(0x28f6);
        __ActorMessage(actor, 0);
    } else {
        __MessageID(0x26eb);
        __ActorMessage(actor, 0);
    }
}
typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd ActorCmd_ARRAY_944__02009314[34];

void *__MapActor_GetActor(int);
void __SetFlag(int);
void __CutsceneStart(void);
void __Func_808e118(void);
void __MessageID(int);
void __CutsceneWait(int);
void __MapActor_Emote(int, int, int);
void __MapActor_Face(int, int, int);
void __ActorMessage(int, int);
void __MapActor_DoAnim(int, int);
void __Func_80925cc(int, int);
void __Func_8092304(int, int, int);
void __Func_8092adc(int, int, int);
void __MapActor_SetBehavior(int, ActorCmd *);
void __CutsceneEnd(void);

void OvlFunc_967_2008308(void) {
    void *r0;
    short r5;

    r0 = __MapActor_GetActor(0);
    r5 = (*(unsigned short *)((char *)r0 + 6) + 0x2000) & (int)0xffffc000;
    __SetFlag(0x300);
    __CutsceneStart();
    __Func_808e118();
    __MessageID(0x26ec);
    __CutsceneWait(0x32);
    API_MapActor_Emote(0xe, 0x102, 0x32);
    __MapActor_Face(0xe, 0, 0x14);
    __ActorMessage(0xe, 0);
    __CutsceneWait(10);
    __MapActor_DoAnim(0xe, 4);
    __CutsceneWait(0x1e);
    __ActorMessage(0xe, 0);
    __CutsceneWait(10);
    __Func_80925cc(0xe, 2);
    __CutsceneWait(0x1e);
    __ActorMessage(0xe, 0);
    __CutsceneWait(10);
    __MapActor_DoAnim(0xe, 3);
    __CutsceneWait(0x14);
    __ActorMessage(0xe, 0);
    if ((unsigned short)r5 == 0x8000) {
        __Func_8092304(0, 0, 0x10);
        __Func_8092adc(0, 0xc000, 0);
        __CutsceneWait(0x14);
    }
    __MapActor_SetBehavior(0xe, ActorCmd_ARRAY_944__02009314);
    __CutsceneEnd();
}

void OvlFunc_967_20083f4(void) {
    __SetFlag(0x9bc);
    __CutsceneStart();
    __Func_808e118();
    __CutsceneWait(0xa);
    __Func_80933f8(0xf0 << 15, -1, 0xc0 << 15, 1);
    __Func_8093530();
    __CutsceneWait(0x1e);
    __MessageID(0x288b);
    __ActorMessage(0xc, 0);
    __CutsceneWait(0xa);
    __MapActor_Face(0, 0xc, 0);
    __CutsceneWait(0x1e);
    __MapActor_DoAnim(0, 3);
    __CutsceneWait(0x1e);
    __CutsceneEnd();
}

void OvlFunc_967_2008468(void)
{
  int a = 0xc;
  int b = 0;
 do { __SetFlag(0x9bc); __MessageID(0x288b); } while (0);
  __ActorMessage(a, b);
}

extern unsigned int iwram_3001ebc;

void OvlFunc_967_200848c(void)
{
    short *ptr;
    unsigned int v;
    short val;

    ptr = (short *)iwram_3001ebc;
    v = 0xb6 << 1;
    ptr = (short *)((unsigned char *)ptr + v);
    val = *(short *)((unsigned char *)ptr + 0);
    __Func_8091e9c(val);
    __PlaySound(0x7b);
}

extern int __GetFlag(int);
extern unsigned char _EVENT_b4[];
extern unsigned char Lm967_2010[] __asm__(".Lm967_2010");
extern unsigned char Lm967_1eb4[] __asm__(".Lm967_1eb4");
extern unsigned char gScript_887__02009ca4[];
extern unsigned char Lm967_1a94[] __asm__(".Lm967_1a94");

int LaliveroRooms_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_b4) {
        if (__GetFlag(0x9a7)) return (int)Lm967_2010;
        return (int)Lm967_1eb4;
    }
    if (__GetFlag(0x9a7)) return (int)gScript_887__02009ca4;
    return (int)Lm967_1a94;
}
void OvlFunc_967_2008eec(void);
static inline void API_Func_807808c(int a) { extern void __Func_807808c(int); __Func_807808c(a); }
static inline int API_Func_8091c7c(int a, int b) { extern int __Func_8091c7c(int, int); return __Func_8091c7c(a, b); }
void OvlFunc_967_2008508(void) {
    void *act;
    unsigned char *b;

    API_CutsceneStart();
    API_Func_807808c(1);
    API_MapActor_SetPos(0, 0x600000, 0xb80000);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(0xb, 0, 0);
    API_Func_8092adc(0xc, 0x8000, 0);
    API_MessageID(0x2850);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0xa);
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_Func_8092304(0, 0, -16);
    API_MapActor_TravelToAnimWait(0, 0x68, 0x88);
    API_CutsceneWait(0xa);
    API_Func_809233c(1, -16, 0x10, 0xc000);
    API_Func_809233c(3, 0, 0x18, 0xc000);
    API_Func_809233c(2, 0x10, 0x10, 0xc000);
    API_MapActor_WaitMovement(1);
    API_CutsceneWait(0x14);
    API_CutsceneWait(0xa);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(2, 0);
    API_CutsceneWait(0xa);
    API_Func_8092adc(0xb, 0x4000, 0);
    API_Func_8092adc(0xc, 0x4000, 0);
    API_CutsceneWait(0x1e);
    API_MapActor_Emote(0xb, 0x105, 0x46);
    API_ActorMessage(0xb, 0);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(0xb, 4);
    API_CutsceneWait(0x14);
    API_ActorMessage(0xb, 0);
    API_CutsceneWait(0x14);
    API_Func_80925cc(0xb, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(0xb, 0);
    API_CutsceneWait(0x14);
    API_MapActor_Emote(0xc, 0x102, 0x28);
    API_ActorMessage(0xc, 0);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(0xc, 4);
    API_CutsceneWait(0x14);
    API_ActorMessage(0xc, 0);
    API_CutsceneWait(0x14);
    API_CutsceneWait(0xa);
    API_MapActor_Emote(0xb, 0x105, 0x32);
    API_ActorMessage(0xb, 0);
    if (!API_GetFlag(0x9bf)) {
        OvlFunc_967_2008eec();
    } else {
    API_CutsceneWait(0x14);
    API_Func_80925cc(0xb, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(0xb, 0);
    API_CutsceneWait(0xa);
    API_MapActor_Face(1, 0, 0x32);
    API_MapActor_Emote(0, 0x105, 0x3c);
    API_CutsceneWait(0xa);
    API_Func_8092adc(1, 0xc000, 0);
    API_CutsceneWait(0x14);
    API_ActorMessage(1, 0);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(3, 4);
    API_CutsceneWait(0x14);
    API_ActorMessage(3, 0);
    API_CutsceneWait(0xa);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(2, 0);
    API_CutsceneWait(0x14);
    API_MapActor_Emote(0xc, 0x101, 0x28);
    __ShowActorMessage_NoWait(0xc, 0);
    API_Func_8091c7c(0, 0);
    API_CutsceneWait(0x14);
    API_Func_80925cc(0xc, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(0xc, 0);
    API_CutsceneWait(0x14);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(0x1e);
    API_CutsceneWait(0xa);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(1, 0);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(3, 4);
    API_CutsceneWait(0x14);
    API_ActorMessage(3, 0);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(0x1e);
    API_ActorMessage(2, 0);
    API_CutsceneWait(0xa);
    API_MapActor_Face(2, 0, 0x1e);
    __ShowActorMessage_NoWait(0x2002, 0);
    }
    API_MessageID(0x2861);
    API_CutsceneWait(0xa);
    API_Func_8092adc(0, 0x4000, 0);
    API_MapActor_Face(1, 0, 0x14);
    if (API_Func_8091c7c(0, 0) == 0) {
    API_CutsceneWait(0x14);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(0x1e);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(0xb, 3);
    API_CutsceneWait(0x1e);
    API_ActorMessage(0xb, 0);
    b = (unsigned char *)iwram_3001ebc;
    b += 0xec << 1;
    *(unsigned short *)b = *(unsigned short *)b + 1;
    } else {
    API_CutsceneWait(0x14);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(0x1e);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(0xb, 4);
    API_CutsceneWait(0x14);
    b = (unsigned char *)iwram_3001ebc;
    b += 0xec << 1;
    *(unsigned short *)b = *(unsigned short *)b + 1;
    API_ActorMessage(0xb, 0);
    }
    API_CutsceneWait(0xa);
    API_Func_80925cc(0xb, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(0xb, 0);
    API_CutsceneWait(0xa);
    API_MapActor_TurnToFaceActor(1, 0, 0);
    API_MapActor_TurnToFaceActor(3, 2, 0);
    API_CutsceneWait(0x28);
    API_CutsceneWait(0xa);
    API_MapActor_Emote(0xb, 0x102, 0x28);
    API_ActorMessage(0xb, 0);
    API_CutsceneWait(0xa);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_CutsceneWait(0x32);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(0xb, 3);
    API_CutsceneWait(0x1e);
    API_ActorMessage(0xb, 0);
    API_CutsceneWait(0xa);
    API_Func_80925cc(0xb, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(0xb, 0);
    API_CutsceneWait(0xa);
    API_MapActor_Emote(3, 0x100, 0x28);
    API_ActorMessage(3, 0);
    API_CutsceneWait(0x14);
    API_Func_8092adc(0xb, 0, 0);
    API_CutsceneWait(0x14);
    API_ActorMessage(0xb, 0);
    API_CutsceneWait(0xa);
    API_Func_80925cc(0xc, 2);
    API_CutsceneWait(0x14);
    API_Func_8092adc(0xc, 0x8000, 0);
    API_CutsceneWait(0x14);
    API_ActorMessage(0xc, 0);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(0xb, 4);
    API_CutsceneWait(0x14);
    API_ActorMessage(0xb, 0);
    API_CutsceneWait(0xa);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(2, 0);
    API_CutsceneWait(0xa);
    API_Func_8092adc(0xb, 0x4000, 0);
    API_CutsceneWait(0x1e);
    API_ActorMessage(0xb, 0);
    API_CutsceneWait(0xa);
    API_MapActor_Emote(0xc, 0x102, 0x32);
    API_ActorMessage(0xc, 0);
    API_CutsceneWait(0x14);
    API_MapActor_Emote(0xb, 0x101, 0x41);
    API_Func_8092adc(0xb, 0, 0);
    API_CutsceneWait(0x14);
    API_ActorMessage(0xb, 0);
    API_CutsceneWait(0x14);
    API_MapActor_Emote(0xc, 0x100, 0x28);
    API_ActorMessage(0xc, 0);
    API_CutsceneWait(0x14);
    API_Func_8092adc(0xc, 0x4000, 0);
    API_CutsceneWait(0x28);
    API_ActorMessage(0xc, 0);
    API_CutsceneWait(0xa);
    API_Func_8092adc(0xb, 0x4000, 0);
    API_CutsceneWait(0x32);
    API_MapActor_Emote(0xb, 0x106, 0x3c);
    API_ActorMessage(0xb, 0);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(0xb, 3);
    API_CutsceneWait(0x1e);
    API_ActorMessage(0xb, 0);
    API_CutsceneWait(0xa);
    API_Func_809259c(0, 2);
    API_Func_809259c(1, 2);
    API_Func_809259c(3, 2);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(0x1e);
    API_CutsceneWait(0xa);
    API_Func_8092adc(0xb, 0, 0);
    API_CutsceneWait(0x14);
    API_ActorMessage(0xb, 0);
    API_CutsceneWait(0xa);
    API_Func_80925cc(0xc, 2);
    API_CutsceneWait(0x1e);
    API_Func_8092adc(0xc, 0x8000, 0);
    API_CutsceneWait(0x14);
    API_ActorMessage(0xc, 0);
    API_CutsceneWait(0xa);
    API_MapActor_Emote(0xb, 0x101, 0);
    API_CutsceneWait(0xa);
    API_Func_8092adc(1, 0xe000, 0);
    API_CutsceneWait(0x1e);
    API_MapActor_DoAnim(1, 4);
    API_CutsceneWait(0x14);
    API_ActorMessage(1, 0);
    API_CutsceneWait(0xa);
    API_Func_8092adc(0xc, 0x4000, 0);
    API_CutsceneWait(0x1e);
    API_MapActor_Emote(0xc, 0x105, 0x3c);
    API_ActorMessage(0xc, 0);
    API_CutsceneWait(0xa);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(1, 0);
    API_CutsceneWait(0xa);
    API_Func_8092adc(0xb, 0x4000, 0);
    API_CutsceneWait(0x28);
    API_MapActor_Emote(0xb, 0x102, 0x28);
    API_ActorMessage(0xb, 0);
    API_CutsceneWait(0xa);
    API_Func_8092adc(2, 0x8000, 0);
    API_CutsceneWait(0x1e);
    API_MapActor_Emote(2, 0x107, 0x3c);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(0x1e);
    API_MapActor_DoAnim(2, 4);
    API_CutsceneWait(0x14);
    API_ActorMessage(2, 0);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(0xb, 4);
    API_CutsceneWait(0x14);
    API_ActorMessage(0xb, 0);
    API_CutsceneWait(0xa);
    API_Func_809259c(0, 2);
    API_Func_809259c(1, 2);
    API_Func_809259c(3, 2);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(0x1e);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(0xb, 3);
    API_CutsceneWait(0x1e);
    API_ActorMessage(0xb, 0);
    API_CutsceneWait(0x14);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(3, 3);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(0x1e);
    API_CutsceneWait(0xa);
    API_Func_80925cc(0xb, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(0xb, 0);
    API_CutsceneWait(0xa);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(1, 0);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(0xb, 3);
    API_CutsceneWait(0x1e);
    API_ActorMessage(0xb, 0);
    API_CutsceneWait(0x14);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(0x1e);
    API_ActorMessage(3, 0);
    API_CutsceneWait(0x14);
    API_Func_8092adc(0, 0x4000, 0);
    API_Func_8092adc(1, 0xe000, 0);
    API_Func_8092adc(2, 0xa000, 0);
    API_CutsceneWait(0x1e);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(0xa);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(0x1e);
    API_MapActor_SetSpeed(1, 0x13333, 0x9999);
    API_MapActor_SetSpeed(3, 0x13333, 0x9999);
    API_MapActor_SetSpeed(2, 0x13333, 0x9999);
    API_MapActor_SetAnim(1, 2);
    act = __MapActor_GetActor(0);
    if (act != 0) {
        __MapActor_TravelTo(1, *(short *)((char *)act + 10), *(short *)((char *)act + 18));
    }
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetAnim(3, 2);
    act = __MapActor_GetActor(0);
    if (act != 0) {
        __MapActor_TravelTo(3, *(short *)((char *)act + 10), *(short *)((char *)act + 18));
    }
    API_MapActor_WaitMovement(3);
    API_MapActor_SetPos(3, 0, 0);
    API_MapActor_SetAnim(2, 2);
    act = __MapActor_GetActor(0);
    if (act != 0) {
        __MapActor_TravelTo(2, *(short *)((char *)act + 10), *(short *)((char *)act + 18));
    }
    API_MapActor_WaitMovement(2);
    API_MapActor_SetPos(2, 0, 0);
    API_CutsceneWait(0xa);
    API_CutsceneEnd();
}


extern int _MSG_2880;

void OvlFunc_967_2008eec(void)
{
    __MessageID((int)&_MSG_2880);
    __CutsceneWait(0x14);
    __Func_80925cc(0xb, 2);
    __CutsceneWait(0x14);
    __ActorMessage(0xb, 0);
    __CutsceneWait(0xa);
    __MapActor_Face(1, 0, 0x32);
    __MapActor_Emote(0, 0x105, 0x3c);
    __CutsceneWait(0xa);
    __Func_8092adc(1, 0xc000, 0);
    __CutsceneWait(0x14);
    __ActorMessage(1, 0);
    __CutsceneWait(0xa);
    __MapActor_DoAnim(3, 4);
    __CutsceneWait(0x14);
    __ActorMessage(3, 0);
    __CutsceneWait(0xa);
    __Func_80925cc(2, 2);
    __CutsceneWait(0x14);
    __ActorMessage(2, 0);
    __CutsceneWait(0xa);
    __Func_80925cc(0xc, 2);
    __CutsceneWait(0x14);
    __ActorMessage(0xc, 0);
    __CutsceneWait(0x14);
    __Func_80925cc(0, 2);
    __CutsceneWait(0x14);
    __CutsceneWait(0x19);
    __Func_80925cc(1, 2);
    __CutsceneWait(0x1e);
    __ActorMessage(1, 0);
    __CutsceneWait(0x1e);
    __MapActor_DoAnim(1, 4);
    __CutsceneWait(0x14);
    __ActorMessage(1, 0);
    __CutsceneWait(0xa);
    __MapActor_DoAnim(3, 4);
    __CutsceneWait(0x14);
    __ActorMessage(3, 0);
    __CutsceneWait(0xa);
    __MapActor_DoAnim(2, 3);
    __CutsceneWait(0x1e);
    __ActorMessage(2, 0);
    __CutsceneWait(0xa);
    __MapActor_Face(2, 0, 0x1e);
    __ShowActorMessage_NoWait(0x2002, 0);
}
void __Actor_SetBehavior(void *, int);
void OvlFunc_967_2008508(void);

typedef struct {
    unsigned char pad1[0x23];
    unsigned char f23;
    unsigned char pad2[0x50 - 0x24];
    unsigned char *sprite;
    unsigned char pad3[0x59 - 0x54];
    unsigned char f59;
} Actor;

int LaliveroRooms_MapInit(void) {
    GlobalState *state = &gState;
    short *pState1c2;
    short val_b3;
    short val_1c2;
    Actor *actor;
    int zero, four, mask, eight;
    int mask2;
    GlobalState *s;
    short *p;
    short v15;

    pState1c2 = (short *)((char *)state + (0xe1 << 1));
    if (*pState1c2 == 0x5a) {
        __SetFlag(0x9a7);
    }

    *(int *)((char *)iwram_3001ebc + (0xe0 << 1)) = 0x209;
    val_b3 = *(short *)((char *)state + (0xe0 << 1));
    if (val_b3 == (int)Lconst_b3) {
        actor = __MapActor_GetActor(0x14);
        zero = 0;
        actor->f23 = zero;
        four = 4;
        actor->f59 |= four;
        mask = 0 - 13;
        actor->sprite[9] = (actor->sprite[9] & mask) | (eight = 8);

        actor = __MapActor_GetActor(0x12);
        actor->f23 = zero;
        actor->f59 |= four;
        actor->sprite[9] = (actor->sprite[9] & mask) | eight;

        actor = __MapActor_GetActor(0x13);
        actor->f59 |= four;
        actor->f23 = zero;
        actor->sprite[9] = (actor->sprite[9] & mask) | eight;

        __MapActor_SetAnim(0xf, 6);

        val_1c2 = *pState1c2;
        if (val_1c2 == 12) {
            *(short *)((char *)state + (0xe2 << 1)) = val_b3;
            *(short *)((char *)state + (0xe3 << 1)) = val_1c2;
        }
    }

    s = &gState;
    if (*(short *)((char *)s + (0xe0 << 1)) == (int)Lconst_b4) {
        actor = __MapActor_GetActor(0xd);
        actor->f59 |= 4;
        actor->f23 = 0;
        mask2 = 0 - 13;
        actor->sprite[9] = (actor->sprite[9] & mask2) | 8;

        if (__GetFlag(0x300)) {
            __MapActor_SetBehavior(0xe, ActorCmd_ARRAY_944__02009314);
        }

        p = (short *)((char *)s + (0xe1 << 1));
        if (*p == 0x63) {
            OvlFunc_967_2008508();
            __Actor_SetBehavior(__MapActor_GetActor(0xc), 6);
            __Actor_SetBehavior(__MapActor_GetActor(0xb), 6);
            v15 = 0x15;
            *p = v15;
        }
    }

    return 0;
}
INCLUDE_ASM("asm/maps/lalivero_rooms/lalivero_rooms_data.s");

INCLUDE_ASM("asm/maps/lalivero_rooms/imports.s");
