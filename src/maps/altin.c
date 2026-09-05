/* rom_7b8cb0 (overlay file 931): consolidated TU — altin map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/altin/exports.s");

INCLUDE_ASM("asm/maps/altin/Altin_GetEntrances.s");

int Altin_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02009390[];

void *Altin_GetExits(void) {
    return (void *)gOvl_02009390;
}

INCLUDE_ASM("asm/maps/altin/Altin_GetActors.s");
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_4b[], _EVENT_4c[];
extern unsigned char gScript_930__02009730[];
extern unsigned char Lm931_19f4[] __asm__(".Lm931_19f4");
extern unsigned char Lm931_1724[] __asm__(".Lm931_1724");

int Altin_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_4b) return (int)gScript_930__02009730;
    if (ev == (int)_EVENT_4c) return (int)Lm931_19f4;
    return (int)Lm931_1724;
}

extern unsigned char iwram_3001ebc[];

void OvlFunc_931_200815c(void) {
    unsigned short *r2;
    unsigned short r3;

    __CutsceneStart();
    __MessageID(0x18bd);
    __ShowActorMessage_NoWait(8, 0);
    if (__Func_8091c7c(0, 0) == 1) {
        __ActorMessage(8, 0);
    } else {
        r2 = (unsigned short *)(*(unsigned int *)iwram_3001ebc + (0xec << 1));
        r3 = *r2;
        r3 += 1;
        *r2 = r3;
        __Func_8093054(8, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_931_20081b0(void) {
    __CutsceneStart();
    __MessageID(0x1918);
    __Func_8093054(9, 0);
    __CutsceneEnd();
}

extern void __MessageID(int);
extern void __Func_8093054(int, int);
extern void __ActorMessage_Wait(int, int, int);
extern unsigned char *__Func_8093554(void);
extern void __Func_80933d4(int, int);
extern void __Func_80933f8(int, int, int, int);
extern void __MapActor_Face(int, int, int);
extern void __Func_8092adc(int, int, int);
extern void __Func_8093530(void);
extern void __MapActor_DoAnim(int, int);
void OvlFunc_931_20081d0(void) {
    int flag;
    int *actor;
    int *isaac;
    int dir = 0x4000;

    do { } while (dir == 0);

    __CutsceneStart();
    if (__GetFlag(0x909)) {
        __MessageID(0x191f);
        __Func_8093054(0xe, 0);
    } else {
        __MapActor_SetAnim(0xe, 4);
        __MessageID(0x18c7);
        __ActorMessage_Wait(0xe, 0, 10);
        flag = __GetFlag(0x8ff);
        if (flag == 0) {
            actor = __MapActor_GetActor(0x12);
            __Func_8093554()[0x55] = flag;
            __Func_80933d4(0x10000, 0x2000);
            __Func_80933f8(actor[2], actor[3], actor[4], 1);
            __MapActor_Face(0, dir, 0);
            __Func_8092adc(0xe, 0x3000, 0);
            __Func_8093530();
            __CutsceneWait(0x78);
            isaac = __MapActor_GetActor(0);
            __Func_80933f8(isaac[2], isaac[3], isaac[4], 1);
            __Func_8093530();
        }
        __MapActor_DoAnim(0xe, 4);
    }
    __CutsceneEnd();
}

void OvlFunc_931_2008298(void) {
    __CutsceneStart();
    __MessageID(0x1924);
    __Func_8093054(0x11, 0);
    __CutsceneEnd();
}

void OvlFunc_931_20082b8(void) {
    __CutsceneStart();
    __MessageID(0x1932);
    __Func_8093054(9, 0);
    __CutsceneEnd();
}

void OvlFunc_931_20082d8(void) {
    __CutsceneStart();
    __MessageID(0x18d9);
    __Func_8093054(0xa, 0);
    __CutsceneEnd();
}

void OvlFunc_931_20082f8(void) {
    __CutsceneStart();
    __MessageID(0x18e1);
    __Func_8093054(0xe, 0);
    __CutsceneEnd();
}

void OvlFunc_931_2008318(void) {
    __CutsceneStart();
    __MessageID(0x194a);
    __Func_8093054(0x15, 0);
    __CutsceneEnd();
}

unsigned int OvlFunc_931_2008338(void) {
    unsigned int r0;
    unsigned int r2;
    unsigned int r3;

    r0 = __MapActor_GetActor(0);
    r2 = 0x5fff;
    r3 = *(unsigned short *)((char *)r0 + 6);
    r3 += r2;
    r2 = 0x3ffe0000;
    r3 <<= 16;
    if (r3 <= r2) {
        return 1;
    }
    return 0;
}

INCLUDE_ASM("asm/maps/altin/OvlFunc_931_2008360.s");
INCLUDE_ASM("asm/maps/altin/OvlFunc_931_20083d4.s");
INCLUDE_ASM("asm/maps/altin/OvlFunc_931_2008448.s");

void OvlFunc_931_20084bc(void)
{
    unsigned short v;

    v = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6) + 0x5fff;
    if (v <= 0x3ffe) {
        __Func_80b3284(6, 0x12);
    } else {
        __CutsceneStart();
        if (__GetFlag(0x909) != 0) {
            __MessageID(0x1947);
            __ActorMessage(0x12, 0);
        } else {
            __MessageID(0x18f5);
            __Func_8093054(0x12, 0);
        }
        __CutsceneEnd();
    }
}

struct TableEntry {
    int unk0;
    short unk4;
    short unk6;
};

extern struct TableEntry Lm931_1e70[] __asm__(".Lm931_1e70");

void __CutsceneStart(void);
int __MapActor_GetActor(int);
void __PlaySound(int);
void __CopyMapTiles(int, int, int, int, int, int);
void __CutsceneWait(int);
void __Func_8010560(int, int, int);
void __MapActor_SetSpeed(int, int, int);
void __MapActor_SetAnim(int, int);
void __Func_8092208(int, int, int);
void __Func_8092b08(int, int);
void __MapActor_TravelBy(int, int, int);
void __Func_8091e9c(int);
void __MapTransitionOut(void);
void __WaitMapTransition(void);
void __CutsceneEnd(void);

void OvlFunc_931_2008524(void)
{
    int speed_x = 0x8000;
    int speed_y = 0x4000;
    int step = -4;
    unsigned char *base;
    unsigned int i;
    int actor;
    short index;
    short r8_val;
    short r7_val;
    int r6_val;
    int t1, t2;

    do { } while (speed_x == 0);

    base = *(unsigned char **)iwram_3001ebc;
    __CutsceneStart();
    for (i = 8; i <= 0x41; i++) {
        actor = __MapActor_GetActor(i);
        if (actor != 0) {
            *(unsigned char *)(actor + 0x55) = 0;
        }
    }
    index = *(short *)(base + (0xb6 << 1)) - 2;
    r8_val = Lm931_1e70[index].unk4;
    r7_val = Lm931_1e70[index].unk6;

    if (index == 1) {
        __PlaySound(0xbc);
        __CopyMapTiles(0x2a, 0x21, r8_val, r7_val, 2, 2);
        r6_val = r8_val + 2;
        __CopyMapTiles(0x2a, 0x23, r6_val, r7_val, 2, 2);
        __CutsceneWait(4);
        __CopyMapTiles(0x28, 0x21, r8_val, r7_val, 2, 2);
        __CopyMapTiles(0x28, 0x23, r6_val, r7_val, 2, 2);
        __CutsceneWait(4);
    } else {
        __PlaySound(0x9e);
        if (index == 3) {
            t1 = 1;
            t2 = 2;
            __CopyMapTiles(0x21, 0x2a, 8, 0x11, t1, t2);
        }
        __Func_8010560(Lm931_1e70[index].unk0, r8_val, r7_val);
    }

    __MapActor_SetSpeed(0, speed_x, speed_y);
    *(int *)(*(unsigned char **)iwram_3001ebc + (0xe0 << 1)) = 0x80 << 1;
    *(unsigned char *)(__MapActor_GetActor(0) + 0x55) = 0;
    __MapActor_SetAnim(0, 2);

    if (index == 6) {
        __Func_8092208(0, 2, 0);
    } else if (index != 1) {
        __Func_8092208(0, 2, step);
    } else {
        __Func_8092b08(0, 2);
        __MapActor_TravelBy(0, 0, step);
    }

    __CutsceneWait(10);
    __Func_8091e9c(*(short *)(base + (0xb6 << 1)));
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/altin/OvlFunc_931_20086a4.s");
INCLUDE_ASM("asm/maps/altin/OvlFunc_931_20086f0.s");
INCLUDE_ASM("asm/maps/altin/OvlFunc_931_20087b8.s");

void OvlFunc_931_200884c(void) {
    int r3;
    r3 = *(int *)((char *)__MapActor_GetActor(0x13) + 8);
    if ((r3 >> 20) == 0x16) {
        __SetFlag(0x906);
    } else {
        __ClearFlag(0x906);
    }
}

INCLUDE_ASM("asm/maps/altin/Altin_MapInit.s");
INCLUDE_ASM("asm/maps/altin/OvlFunc_931_2008904.s");
struct Actor {
    char pad0[6];
    unsigned short facing;
    char pad8[0x59 - 8];
    unsigned char unk59;
};

int __GetFlag(int);
void __MapActor_SetPos(int, int, int);
void OvlFunc_931_2008b2c(void)
{
    int p_3280 = 0x3280000;
    int p_2d70 = 0x2d70000;
    int p_31a0 = 0x31a0000;
    int p_3390 = 0x3390000;
    int p_2300 = 0x2300000;
    int p_2c60 = 0x2c60000;
    int p_2400 = 0x2400000;
    int p_1270 = 0x1270000;
    int p_2e80 = 0x2e80000;
    struct Actor *actor;

    do { } while (p_3280 == 0);

    if (__GetFlag(0x240) == 0) {
        __MapActor_SetPos(8, p_3280, p_2d70);
        actor = __MapActor_GetActor(8);
        actor->facing = 0x3000;
        __MapActor_SetPos(9, p_31a0, p_3390);
    }
    if (__GetFlag(0x241) == 0) {
        __MapActor_SetPos(10, p_2300, p_2c60);
        actor = __MapActor_GetActor(10);
        actor->facing = 0x1000;
        __MapActor_SetPos(11, p_2400, p_2c60);
    }
    if (__GetFlag(0x242) == 0) {
        __MapActor_SetPos(15, p_1270, p_2e80);
        actor = __MapActor_GetActor(15);
        actor->facing = 0xb000;
    } else {
        actor = __MapActor_GetActor(15);
        actor->unk59 |= 4;
    }
    actor = __MapActor_GetActor(0x11);
    if (actor != 0) {
        actor->unk59 |= 4;
    }
    actor = __MapActor_GetActor(0x10);
    if (actor != 0) {
        actor->unk59 |= 4;
    }
}
INCLUDE_ASM("asm/maps/altin/OvlFunc_931_2008c0c.s");
INCLUDE_ASM("asm/maps/altin/OvlFunc_931_2008c44.s");
extern unsigned char iwram_3001e40[];
extern void OvlFunc_931_2008c44(void);

/* Private layout — the TU's file-scope struct Actor (:292) is a different view. */
struct Actor931 {
    char pad[0x64];
    unsigned short unk64;
    unsigned short unk66;
    int extra;
    void *func;
};

void OvlFunc_931_2008d08(void) {
    int a = 0x400000;
    int b = 0x1900000;
    struct Actor931 *actor;
    int flags;

    do { } while (a == 0);

    flags = *(int *)iwram_3001e40 & 3;
    if (flags == 0) {
        actor = (struct Actor931 *)__CreateActor(0xde, a, 0, b);
        if (actor != 0) {
            actor->unk64 = 0x14;
            actor->unk66 = flags;
            actor->extra = 0x14;
            OvlFunc_931_2008c0c(actor);
            actor->func = OvlFunc_931_2008c44;
            __Actor_SetAnim(actor, 1);
        }
    }
}
INCLUDE_ASM("asm/maps/altin/OvlFunc_931_2008d58.s");
INCLUDE_ASM("asm/maps/altin/altin_data.s");

INCLUDE_ASM("asm/maps/altin/imports.s");
