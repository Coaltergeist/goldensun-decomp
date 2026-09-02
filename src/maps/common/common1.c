// fakematch
/* common1: consolidated shared-overlay TU (linked by the 3 overlays that reference it). */

#include "nonmatching.h"


void OvlFunc_common1_0(void)
{
    extern void __MapActor_SetPos(int pos, int x, int y);
  int c;
  int x1, y1;
  int x2, y2;
  int x3, y3;

  c = 0x80 << 12;

  x1 = __GetFlagByte(0xe0 << 2);
  y1 = __GetFlagByte(0xe2 << 2);
  x1 <<= 20;
  x1 += c;
  y1 <<= 20;
  y1 += c;
  __MapActor_SetPos(1, x1, y1);

  x2 = __GetFlagByte(0xe4 << 2);
  y2 = __GetFlagByte(0xe6 << 2);
  x2 <<= 20;
  x2 += c;
  y2 <<= 20;
  y2 += c;
  __MapActor_SetPos(2, x2, y2);

  x3 = __GetFlagByte(0xe8 << 2);
  y3 = __GetFlagByte(0xea << 2);
  x3 <<= 20;
  x3 += c;
  y3 <<= 20;
  y3 += c;
  __MapActor_SetPos(3, x3, y3);
}

INCLUDE_ASM("asm/maps/common/OvlFunc_common1_78.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_148.s");
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern unsigned char iwram_3001ebc[];
extern GlobalState gState;

void OvlFunc_common1_190(void)
{
    unsigned char *iw;
    int min_dist;
    int best_actor;
    int off;
    int r7;
    void *target_actor;
    int i;
    void *actor;
    int diff_x;
    int diff_y;
    int dx;
    int dist;
    int val2;

    iw = *(unsigned char **)iwram_3001ebc;
    min_dist = 0x80;
    best_actor = 8;
    min_dist <<= 13;

    off = 0xfa;
    r7 = *(int *)((char *)&gState + (off << 1));
    target_actor = (void *)__MapActor_GetActor(r7);
    __CutsceneStart();

    for (i = 8; i <= 66; i++) {
        actor = (void *)__MapActor_GetActor(i);
        if (!actor)
            continue;

        if (*(unsigned char *)((char *)actor + 0x54) != 1)
            continue;

        if (*(short *)(*(int *)(*(int *)((char *)actor + 0x50) + 0x28)) != 165)
            continue;

        diff_x = (*(int *)((char *)target_actor + 8) - *(int *)((char *)actor + 8)) / 65536;
        diff_y = (*(int *)((char *)target_actor + 0x10) - *(int *)((char *)actor + 0x10)) / 65536;

        if (diff_y > 0)
            continue;

        dx = diff_x;
        if (dx < 0)
            dx = -dx;

        if (diff_y < 0)
            diff_y = -diff_y;

        dist = dx + diff_y;
        if (dist < min_dist) {
            best_actor = i;
            min_dist = dist;
        }
    }

    __MessageID(0x2085);
    __ActorMessage(best_actor, 0);

    *(int *)(iw + 0x1c0) = 512;
    *(int *)(iw + 0x1c8) = 15;

    __CutsceneWait(20);
    __MapTransitionOut();
    __WaitMapTransition();

    __SetFlagByte((r7 << 4) + 880, *(int *)((char *)target_actor + 8) >> 20);
    val2 = *(int *)((char *)target_actor + 0x10) >> 20;
    __SetFlagByte((r7 << 4) + 888, val2);
    r7++;

    if (r7 > 3) {
        __Func_8091e9c(10);
        __SetFlag(282);
    } else {
        OvlFunc_common1_78(r7);
        __MapTransitionIn();
        __WaitMapTransition();
        *(int *)(iw + 0x1c0) = 0;
    }

    __CutsceneEnd();
}
extern void OvlFunc_common1_78(int);
extern unsigned char Msg2086[] __asm__("0x2086");

void OvlFunc_common1_2c4(unsigned int arg0)
{
    unsigned char *ptr;
    int *actor;
    int r6;
    unsigned int msg;
    int res;
    int off;
    int *p;
    int val1;
    int val;
    unsigned char *b;
    unsigned short zero;
    int v;

    ptr = *(unsigned char **)iwram_3001ebc;
    __MapActor_GetActor(arg0);
    __MapActor_GetActor(arg0);

    off = 0xfa;
    r6 = *(int *)((char *)&gState + (off << 1));
    actor = (int *)__MapActor_GetActor(r6);

    __CutsceneStart();
    msg = (unsigned int)Msg2086;
    __MessageID(msg);
    __ShowActorMessage_NoWait(arg0, 0);

    b = *(unsigned char **)iwram_3001ebc;
    val1 = 0x2089;
    *(unsigned short *)(b + 0xcc2) = val1;
    b += 0xcc4;
    val = 4;
    *(unsigned short *)b = val;

    res = __Func_8091c7c(r6, 0);
    if (res == 0) {
        __MessageID(msg + 1);
        zero = 0;
        do { zero = (unsigned short)zero; } while (0);
        __ActorMessage(arg0, zero);
        off = 0xe0;
        p = (int *)(ptr + (off << 1));
        *p = 0x80 << 2;
        *(int *)(ptr + (0xe4 << 1)) = 15;
        __MapTransitionOut();
        __WaitMapTransition();
        v = *(int *)((char *)actor + 8);
        __SetFlagByte((r6 << 4) + (0xdc << 2), v >> 20);
        v = *(int *)((char *)actor + 0x10);
        v >>= 20;
        __SetFlagByte((r6 << 4) + (0xde << 2), v);
        r6++;
        if (r6 > 3) {
            __Func_8091e9c(10);
            __SetFlag(0x8d << 1);
        } else {
            OvlFunc_common1_78(r6);
            __MapTransitionIn();
            __WaitMapTransition();
            *p = res;
        }
    } else {
        __MessageID(msg + 2);
        __ActorMessage(arg0, 0);
    }
    __CutsceneEnd();
}
unsigned char *__MapActor_GetActor(unsigned int);
void __CutsceneStart(void);
int __GetPartySize(void);
void __MessageID(int);
int __Func_8093054(int, int);
void __MapActor_SetSpeed(int, int, int);
void __MapActor_TravelToAnim(int, int, int);
void __CutsceneWait(int);
void __MapActor_TravelToAnimWait(int, int, int);
void __MapTransitionOut(void);
void __WaitMapTransition(void);
void __Func_8091e9c(int);
void __ActorMessage(int, int);
void __CutsceneEnd(void);

static inline void MapActor_SetSpeed(int actor, int x, int y) {
    __MapActor_SetSpeed(actor, x << 9, y << 8);
}

void OvlFunc_common1_3e4(unsigned int arg0)
{
    int r7;
    int r6;
    unsigned char *actor;

    actor = __MapActor_GetActor(arg0);
    r7 = *(short *)(actor + 10);
    r6 = *(short *)(actor + 18);
    __CutsceneStart();
    if (__GetPartySize() <= 1) {
        __MessageID(0x20e5);
        if (__Func_8093054(arg0, 0) == 0) {
            MapActor_SetSpeed(0, 0x80, 0x80);
            MapActor_SetSpeed(arg0, 0x80, 0x80);
            __MapActor_TravelToAnim(arg0, r7, r6 + 0x40);
            __CutsceneWait(15);
            __MapActor_TravelToAnimWait(0, r7, r6);
            __MapActor_TravelToAnimWait(0, r7, r6 + 0x20);
            __MapTransitionOut();
            __WaitMapTransition();
            __Func_8091e9c(11);
        }
    } else {
        __MessageID(0x20e8);
        __ActorMessage(arg0, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_common1_488(void)
{
    unsigned short t;
    unsigned short v;

    t = 0xe0 << 2;
    do { t = (unsigned short) t; } while (0);
    v = t;
    __SetFlagByte(v, 0);

    t = 0xe2 << 2;
    do { t = (unsigned short) t; } while (0);
    v = t;
    __SetFlagByte(v, 0);

    t = 0xe4 << 2;
    do { t = (unsigned short) t; } while (0);
    v = t;
    __SetFlagByte(v, 0);

    t = 0xe6 << 2;
    do { t = (unsigned short) t; } while (0);
    v = t;
    __SetFlagByte(v, 0);

    t = 0xe8 << 2;
    do { t = (unsigned short) t; } while (0);
    v = t;
    __SetFlagByte(v, 0);

    t = 0xea << 2;
    do { t = (unsigned short) t; } while (0);
    v = t;
    __SetFlagByte(v, 0);
}

INCLUDE_ASM("asm/maps/common/OvlFunc_common1_4cc.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_588.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_5e4.s");

void OvlFunc_common1_850(unsigned int arg0, unsigned int arg1in)
{
    register unsigned int arg1 __asm__("r8") = arg1in;
    unsigned short *unit;
    int i;

    unit = (unsigned short *)__GetUnit(arg0, arg1);
    __GiveItemTo(arg0, arg1);
    i = 0;
    unit = (unsigned short *)((char *)unit + 0xd8);
    while (i <= 14) {
        if (*unit++ == arg1) {
            __EquipItem(arg0, i);
        }
        i++;
    }
}

INCLUDE_ASM("asm/maps/common/OvlFunc_common1_88c.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_920.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_e10.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_ea0.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_fac.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_1078.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_1254.s");

void OvlFunc_common1_1314(unsigned int arg0) {
    unsigned int r5;
    unsigned int r3;

    r5 = __MapActor_GetActor(arg0);
    __Actor_Stop(r5);
    r3 = 0;
    *(unsigned int *)(r5 + 0x24) = r3;
    *(unsigned int *)(r5 + 0x2c) = r3;
    r3 = 0x80;
    r3 <<= 24;
    *(unsigned int *)(r5 + 0x38) = r3;
    *(unsigned int *)(r5 + 0x40) = r3;
}


void OvlFunc_common1_1334(void)
{
    extern unsigned char L14[] __asm__(".Lc1_14");
    unsigned char *r5;
    int r3;
    int r2;

    r5 = L14;
    r2 = 0;
    r3 = *(short *)(r5 + r2);
    r2 = 1;
    r2 = -r2;
    if (r3 != r2)
        return;
    *(short *)r5 = __Func_80209b0();
}

INCLUDE_ASM("asm/maps/common/OvlFunc_common1_1354.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_1490.s");


void OvlFunc_common1_14f4(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    extern unsigned char L21[] __asm__(".Lc1_21");
    extern unsigned char L48[] __asm__(".Lc1_48");
    extern unsigned char L45[] __asm__(".Lc1_45");
    extern unsigned char L38[] __asm__(".Lc1_38");
    extern unsigned char L29[] __asm__(".Lc1_29");
    extern unsigned char L42[] __asm__(".Lc1_42");
    extern unsigned char L32[] __asm__(".Lc1_32");
    extern unsigned char L17[] __asm__(".Lc1_17");
    extern int OvlFunc_common1_1354;
    *(unsigned short *)L21 = (unsigned short)arg0;
    *(unsigned short *)L48 = (unsigned short)arg1;
    *(unsigned short *)L38 = *(unsigned short *)L45;
    *(unsigned short *)L42 = *(unsigned short *)L29;
    *(unsigned short *)L32 = (unsigned short)arg2;
    *(unsigned short *)L17 = 0;
    __StartTask(&OvlFunc_common1_1354, 0xc8 << 4);
}


void OvlFunc_common1_1550(void) {
    extern unsigned char L14[] __asm__(".Lc1_14");
    extern void OvlFunc_common1_1354(void);
    short *r5;
    __StopTask(OvlFunc_common1_1354);
    r5 = (short *)L14;
    __Func_8003f3c(*(short *)r5);
    *(short *)r5 = -1;
}

extern unsigned char *__GetFieldActor(unsigned int);
extern void __Actor_Stop(void);
extern void __Actor_SetAnim(void *, int);
extern void __Actor_TravelTo(void *, int, int, int);

void OvlFunc_common1_1578(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    unsigned char *actor;
    int v;
    unsigned char zero;

    actor = __GetFieldActor(arg0);
    if (actor != (unsigned char *)0) {
        zero = 0;
        v = 0x80 << 10;
        *(int *)(actor + 0x30) = v;
        v >>= 1;
        *(int *)(actor + 0x34) = v;
        actor[0x5b] = zero;
        __Actor_Stop();
        __Actor_SetAnim(actor, 5);
        __Actor_TravelTo(actor, arg1 << 16, *(int *)(actor + 0xc), arg2 << 16);
    }
}

INCLUDE_ASM("asm/maps/common/OvlFunc_common1_15b8.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_1608.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_16cc.s");

void OvlFunc_common1_16f8(void) {
}


void OvlFunc_common1_16fc(void) {
    extern unsigned short ewram_2001000;
    unsigned short *dst = &ewram_2001000;
    unsigned short value = 9;
    *dst = value;
}


void OvlFunc_common1_1708(void) {
    extern unsigned char ewram_2001000[];
    unsigned char *r5;
    r5 = ewram_2001000;
    while (*(short *)r5 != 9) {
        __WaitFrames(1);
    }
}

INCLUDE_ASM("asm/maps/common/OvlFunc_common1_172c.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_17c0.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_1814.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_1928.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_1b08.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_1ecc.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_1fb4.s");


void OvlFunc_common1_2008(unsigned short arg0) {
    extern unsigned int iwram_3001f3c;
    unsigned int ptr = iwram_3001f3c;
    *((unsigned short *)(ptr + 0xdc)) = arg0;
}

INCLUDE_ASM("asm/maps/common/OvlFunc_common1_2018.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_2060.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_21c8.s");
