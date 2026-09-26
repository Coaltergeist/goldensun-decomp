/* rom_7d6418 (overlay file 951): consolidated TU — lucky_fountain map overlay. */

#include "nonmatching.h"

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char Lm951_1aec[] __asm__(".Lm951_1aec");
extern unsigned char Lm951_1cfc[] __asm__(".Lm951_1cfc");
extern unsigned char Lconst_bd[] __asm__(".Lconst_bd");
__asm__(".equ .Lconst_bd, 0xbd");

INCLUDE_ASM("asm/maps/lucky_fountain/exports.s");

extern unsigned char gOvl_02009a08[];

unsigned int LuckyFountain_GetEntrances(void) {
    return (unsigned int)gOvl_02009a08;
}

unsigned int LuckyFountain_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02009ac8[];

void *LuckyFountain_GetExits(void) {
    return (void *)gOvl_02009ac8;
}

unsigned int *LuckyFountain_GetActors(void)
{
    unsigned int r3;
    unsigned int r1;

    r3 = (unsigned int)&gState;
    r1 = 0xe0;
    r1 <<= 1;
    r3 += r1;
    r1 = 0;
    if (*(short *)((char *)r3 + r1) == (int)Lconst_bd) {
        return (unsigned int *)Lm951_1aec;
    }
    return (unsigned int *)Lm951_1cfc;
}

extern unsigned char Lconst_e39[] __asm__(".Lconst_e39");
__asm__(".equ .Lconst_e39, 0xe39");

void OvlFunc_951_2008074(int actor) {
    int msg = (int)Lconst_e39;

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

extern unsigned char Lconst_e19[] __asm__(".Lconst_e19");
__asm__(".equ .Lconst_e19, 0xe19");

void OvlFunc_951_20080bc(int actor) {
    int msg = (int)Lconst_e19;

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

extern void OvlFunc_951_2008880(void);
extern void OvlFunc_951_2008ac8(void);

static inline int GetFlag(int flag)
{
    extern int __GetFlag(int);
    return __GetFlag(flag);
}

void OvlFunc_951_2008104(void)
{
    unsigned char *base;
    unsigned long v;

    base = (unsigned char *)&gState;
    v = *(unsigned long *)(base + (0xfa * 2));
    if (GetFlag(0x200) == 0) {
        __SetFlag(0x200);
        OvlFunc_951_2008880();
    }
    __CutsceneStart();
    __MapActor_TravelToAnimWait(v, 0x78, 0x98);
    __Func_8092adc(v, 0x4000, 0);
    OvlFunc_951_2008ac8();
    __CutsceneEnd();
}

void OvlFunc_951_2008154(void) {
    __CutsceneStart();
    __MessageID(0xe34);
    __ShowActorMessage_NoWait(-1, 0);
    __CutsceneEnd();
}

void OvlFunc_951_2008178(void) {
    __CutsceneStart();
    __MessageID(0xe35);
    __ShowActorMessage_NoWait(-1, 0);
    __CutsceneEnd();
}

extern void OvlFunc_951_20088f8(int);

void OvlFunc_951_200819c(void) {
    OvlFunc_951_20088f8(0);
}

extern unsigned char _EVENT_bd[];
extern unsigned char Events_TolbiSpring[];
extern unsigned char Events_GameBuildings[];

int LuckyFountain_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_bd) return (int)Events_TolbiSpring;
    return (int)Events_GameBuildings;
}
INCLUDE_ASM("asm/maps/lucky_fountain/LuckyFountain_MapInit.s");
INCLUDE_ASM("asm/maps/lucky_fountain/OvlFunc_951_20084bc.s");
INCLUDE_ASM("asm/maps/lucky_fountain/OvlFunc_951_2008880.s");
INCLUDE_ASM("asm/maps/lucky_fountain/OvlFunc_951_20088f8.s");
extern unsigned char ewram_2001000[];
extern unsigned char iwram_3001ebc[];
extern unsigned char const_89[] __asm__(".Lconst_89");
__asm__(".equ .Lconst_89, 0x89");

/* Private coins-view of gState (the TU's file-scope GlobalState at :28 is opaque
   704B); a member access keeps the `ldr [base, #16]` form the ref codegen wants. */
struct GS951 { unsigned char _pad[16]; unsigned int coins; };

void OvlFunc_951_20089f8(void) {
    extern struct GS951 gState951 __asm__("gState");
    extern int __Func_8077348(void);
    extern void __CutsceneStart(void);
    extern void __MessageID(int);
    extern void __ShowActorMessage_NoWait(int, int);
    extern void __Func_808ba38(void);
    extern void __Func_8019908(int, int);
    extern int __Func_8091c7c(int, int);
    extern void __ActorMessage(int, int);
    extern void __MapActor_TravelToAnimWait(int, int, int);
    extern void __Func_8092adc(int, int, int);
    extern void __CutsceneWait(int);
    extern void __SetDestMap2(int, int);
    extern void __Func_8091f90(int, int);
    extern void __CutsceneEnd(void);

    unsigned int val;
    unsigned int coins;
    unsigned int r2;
    unsigned short r3;
    unsigned long long t0;
    unsigned int zero;

    val = __Func_8077348() * 10;
    __CutsceneStart();
    coins = gState951.coins;
    if (coins < val) {
        __MessageID(0xe12);
        __ShowActorMessage_NoWait(9, 0);
    } else {
        *(unsigned int *)ewram_2001000 = coins;
        __Func_808ba38();
        __MessageID(0xe0e);
        __Func_8019908(val, 5);
        t0 = 0;
        do { t0 = (unsigned long) t0; } while (0);
        zero = t0;
        __ShowActorMessage_NoWait(9, zero);
        if (__Func_8091c7c(0, 0) == 0) {
            __ActorMessage(9, 0);
            __MapActor_TravelToAnimWait(0, 0x78, 0x80);
            __MapActor_TravelToAnimWait(0, 0x78, 0x98);
            __Func_8092adc(0, 0x8000, 0);
            __CutsceneWait(0x14);
            __SetDestMap2(0x1fd, 0);
            __Func_8091f90((int)const_89, 0xd);
        } else {
            r2 = *(unsigned int *)iwram_3001ebc;
            r3 = *(unsigned short *)(r2 + (0xec << 1));
            r3 += 1;
            *(unsigned short *)(r2 + (0xec << 1)) = r3;
            __ActorMessage(9, 0);
        }
        __CutsceneEnd();
    }
}
INCLUDE_ASM("asm/maps/lucky_fountain/OvlFunc_951_2008ac8.s");
extern int Lm951_2018[] __asm__(".Lm951_2018");

int OvlFunc_951_2008d70(int idx)
{
    extern unsigned int __Random(void);
    extern int _modsi3_RAM(int, int);
    signed char *p;
    int off;
    int val;
    int mod;
    int result;

    result = 0;
    if (idx >= 0) {
        if (idx == 5) {
            idx = (__Random() * 5) >> 16;
        }
        p = (signed char *)&gState;
        off = idx + (0x9a << 1);
        val = p[off];
        mod = _modsi3_RAM(val + (int)((__Random() * 2) >> 16) + 4, 3);
        p[off] = mod;
        result = Lm951_2018[idx * 3 + mod];
    }
    return result;
}
INCLUDE_ASM("asm/maps/lucky_fountain/OvlFunc_951_2008dd0.s");

extern unsigned char *__MapActor_GetActor(int actor);

void OvlFunc_951_2008e44(int actor, int visible) {
    unsigned char *p;

    p = __MapActor_GetActor(actor);
    if (p != (unsigned char *)0) {
        p[0x54] = visible;
    }
}

INCLUDE_ASM("asm/maps/lucky_fountain/OvlFunc_951_2008e5c.s");
extern unsigned char Lm951_2070[] __asm__(".Lm951_2070");
extern unsigned char Lm951_205a[] __asm__(".Lm951_205a");
struct Foo {
    signed int unk_00;
    signed int unk_04;
    signed int unk_08;
    signed short unk_0c;
    signed short unk_0e;
    signed short unk_10;
    signed short unk_12;
    signed short unk_14;
    signed short unk_16;
};

extern struct Foo Lm951_20d0[] __asm__(".Lm951_20d0");
extern unsigned short Lm951_2062[] __asm__(".Lm951_2062");
extern unsigned char Lm951_205e[] __asm__(".Lm951_205e");
extern void OvlFunc_951_2008e5c(void);

void OvlFunc_951_20096a8(void)
{
    int i = 0;
    unsigned char *r0 = Lm951_2070;
    unsigned char *r6 = Lm951_205a;
    struct Foo *r2 = Lm951_20d0;
    unsigned short *r5 = Lm951_2062;
    unsigned char *r4 = Lm951_205e;
    for (i = 0; i != 4; ++i) {
        unsigned int tmp;
        r2->unk_00 = *r6 << 16;
        r2->unk_08 = *r4 << 16;
        tmp = *r5;
        r2->unk_04 = 0;
        r2->unk_0c = tmp;
        r2->unk_0e = 0;
        r2->unk_10 = 0;
        r2->unk_12 = 0;
        r2->unk_14 = 0;
        r6++;
        r4++;
        r5++;
        r2++;
    }
    *(int *)(r0 + 4) = 0xffe20000;
    *(int *)(r0 + 8) = 0;
    *(int *)(r0 + 0xc) = 0x640000;
    *(int *)(r0 + 0x40) = 0;
    *(int *)(r0 + 0x44) = 0;
    *(int *)(r0 + 0x48) = 0;
    *(int *)(r0 + 0x4c) = 0;
    __Actor_SetAnim(__MapActor_GetActor(0x14), 2);
    __Actor_SetAnim(__MapActor_GetActor(0x15), 2);
    __StartTask(OvlFunc_951_2008e5c, 0xc83);
}
extern int Lm951_20c0[] __asm__(".Lm951_20c0");
extern int Lm951_2130 __asm__(".Lm951_2130");
extern int Lm951_2134 __asm__(".Lm951_2134");
extern int Lm951_2138 __asm__(".Lm951_2138");
extern unsigned char ewram_2000434[];

int OvlFunc_951_200973c(int arg0)
{
    unsigned char *r5 = Lm951_2070;
    int *actor_ref;
    int zero = 0;
    int val_0;
    int val_ffff;

    *(int *)(r5 + 8) = zero;
    *(int *)(r5 + 0x14) = zero;
    *(int *)(r5 + 0x20) = zero;
    *(int *)(r5 + 0x2c) = zero;
    *(int *)Lm951_20c0 = arg0;
    Lm951_2134 = zero;
    val_ffff = 0xffff;
    *(unsigned short *)(r5 + 2) = val_ffff;
    actor_ref = (int *)ewram_2000434;
    Lm951_2130 = zero;

    for (; ; Lm951_2130++) {
        if (Lm951_2130 == 0x32) {
            __PlaySound(0x96 << 1);
        }
        if (Lm951_2130 == 0x10) {
            __MapActor_SetAnim(*actor_ref, 0x1d);
            val_0 = 0;
            *(unsigned short *)(r5 + 2) = val_0;
            *(int *)(r5 + 0x40) = 0x14ccc;
            *(int *)(r5 + 0x44) = 0x80 << 11;
            *(int *)(r5 + 0x48) = 0xfffe0000;
            *(int *)(r5 + 4) = 0xf0 << 15;
            *(int *)(r5 + 8) = 0x80 << 13;
            *(int *)(r5 + 0xc) = 0x98 << 16;
            *(int *)(r5 + 0x4c) = 0x96 << 1;
            if (*(int *)Lm951_20c0 == 1) {
                __Actor_SetAnim(__MapActor_GetActor(0x10), 3);
                __Actor_SetAnim(__MapActor_GetActor(0x11), 0);
                OvlFunc_951_2008e44(0xf, 1);
                OvlFunc_951_2008e44(0xe, 1);
                OvlFunc_951_2008e44(0xd, 1);
            } else {
                __Actor_SetAnim(__MapActor_GetActor(0xb), 3);
                __Actor_SetAnim(__MapActor_GetActor(0xc), 0);
                OvlFunc_951_2008e44(0xa, 1);
                OvlFunc_951_2008e44(9, 1);
                OvlFunc_951_2008e44(8, 1);
            }
        }
        __WaitFrames(1);
        if (Lm951_2134 == 1) {
            break;
        }
    }
    return Lm951_2138;
}
INCLUDE_ASM("asm/maps/lucky_fountain/lucky_fountain_data.s");

INCLUDE_ASM("asm/maps/lucky_fountain/imports.s");
