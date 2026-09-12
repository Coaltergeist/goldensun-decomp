/* rom_7b8cb0 (overlay file 931): consolidated TU — altin map overlay. */

#include "nonmatching.h"
#include "api.h"

INCLUDE_ASM("asm/maps/altin/exports.s");

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char Lconst_4b[] __asm__(".Lconst_4b");
__asm__(".equ .Lconst_4b, 0x4b");
extern unsigned char Lconst_4c[] __asm__(".Lconst_4c");
__asm__(".equ .Lconst_4c, 0x4c");
extern unsigned char Lm931_1120[] __asm__(".Lm931_1120");
extern unsigned char Lm931_1288[] __asm__(".Lm931_1288");
extern unsigned char Lm931_10f0[] __asm__(".Lm931_10f0");

void *Altin_GetEntrances(void)
{
    int offset;
    short a;

    offset = 0xe0;
    offset <<= 1;
    a = *(short *)((char *)&gState + offset);
    if (a == (int)Lconst_4b) {
        return Lm931_1120;
    }
    if (a == (int)Lconst_4c) {
        return Lm931_1288;
    }
    return Lm931_10f0;
}

int Altin_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02009390[];

void *Altin_GetExits(void) {
    return (void *)gOvl_02009390;
}

extern unsigned char Lm931_140c[] __asm__(".Lm931_140c");
extern unsigned char Lm931_15bc[] __asm__(".Lm931_15bc");
extern unsigned char Lm931_13f4[] __asm__(".Lm931_13f4");

void *Altin_GetActors(void)
{
    int offset;
    short a;
    unsigned char *ptr;

    offset = 0xe0;
    offset <<= 1;
    a = *(short *)((char *)&gState + offset);
    if (a == (int)Lconst_4b) {
        if (__GetFlag(0x909) != 0) {
            ptr = Lm931_140c;
            ptr[0x8e] = 0;
            ptr[0xa6] = 0;
        }
        return Lm931_140c;
    }
    if (a == (int)Lconst_4c) {
        if (__GetFlag(0x8fd) != 0) {
            Lm931_15bc[0x2e] = 1;
        }
        if (__GetFlag(0x8fe) != 0 || __GetFlag(0x907) != 0) {
            Lm931_15bc[0x5e] = 1;
        }
        __Func_808b868(Lm931_15bc);
        return Lm931_15bc;
    }
    return Lm931_13f4;
}
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
extern void __ActorMessage_Wait(int, int, int);
extern void __ActorMessage(int, int);
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
            API_MapActor_Face(0, 0x4000, 0);
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

void OvlFunc_931_2008360(void) {
    if (__GetFlag(0x242) == 0) {
        __CutsceneStart();
        __MessageID(0x18e7);
        __Func_8093054(0xf, 0);
        __CutsceneEnd();
    } else if (OvlFunc_931_2008338() != 0) {
        __Func_80b0278(0x13, 0xf);
    } else {
        __CutsceneStart();
        __MessageID(0x18ea);
        if (__GetFlag(0x909) != 0) {
            __MessageID(0x1941);
        }
        __ActorMessage(0xf, 0);
        __CutsceneEnd();
    }
}
void OvlFunc_931_20083d4(void) {
    if (__GetFlag(0x241) == 0) {
        __CutsceneStart();
        __MessageID(0x18ed);
        __ActorMessage(0x14, 0);
        __CutsceneEnd();
    } else if (OvlFunc_931_2008338() != 0) {
        __Func_80b0278(0x14, 0x11);
    } else {
        __CutsceneStart();
        __MessageID(0x18ee);
        if (__GetFlag(0x909) != 0) {
            __MessageID(0x1943);
        }
        __ActorMessage(0x11, 0);
        __CutsceneEnd();
    }
}
void OvlFunc_931_2008448(void) {
    if (__GetFlag(0x240) == 0) {
        __CutsceneStart();
        __MessageID(0x18f1);
        __ActorMessage(0x15, 0);
        __CutsceneEnd();
    } else if (OvlFunc_931_2008338() != 0) {
        __Func_80b0278(0x15, 0x10);
    } else {
        __CutsceneStart();
        __MessageID(0x18f2);
        if (__GetFlag(0x909) != 0) {
            __MessageID(0x1945);
        }
        __ActorMessage(0x10, 0);
        __CutsceneEnd();
    }
}

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
    unsigned char *base;
    unsigned int i;
    int actor;
    short index;
    short r8_val;
    short r7_val;
    int r6_val;
    int t1, t2;

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

    API_MapActor_SetSpeed(0, 0x8000, 0x4000);
    *(int *)(*(unsigned char **)iwram_3001ebc + (0xe0 << 1)) = 0x80 << 1;
    *(unsigned char *)(__MapActor_GetActor(0) + 0x55) = 0;
    __MapActor_SetAnim(0, 2);

    if (index == 6) {
        API_Func_8092208(0, 2, 0);
    } else if (index != 1) {
        API_Func_8092208(0, 2, -4);
    } else {
        __Func_8092b08(0, 2);
        API_MapActor_TravelBy(0, 0, -4);
    }

    __CutsceneWait(10);
    __Func_8091e9c(*(short *)(base + (0xb6 << 1)));
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}
void OvlFunc_931_20086a4(void)
{
    unsigned char *base;

    base = *(unsigned char **)iwram_3001ebc;
    __CutsceneStart();
    *(unsigned char *)(__MapActor_GetActor(0) + 0x55) = 0;
    __PlaySound(0x7b);
    API_Func_8092208(0, 2, -0x10);
    __Func_8091e9c(*(short *)(base + (0xb6 << 1)));
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}
struct Actor931 {
    char pad[8];
    int x;
    int y;
    int z;
    int unk14;
    char pad18[0x28 - 0x18];
    int unk28;
    char pad2c[0x48 - 0x2c];
    int unk48;
    char pad4c[0x5b - 0x4c];
    unsigned char unk5b;
    char pad5c[0x64 - 0x5c];
    short unk64;
    short unk66;
    int extra;
    void *func;
};

void OvlFunc_931_20086f0(struct Actor931 *actor)
{
    if (actor->unk66 != 0) {
        actor->unk66--;
        if (actor->unk66 == 1) {
            API_Func_8012330(-1, -1, 0xe666);
        }
    }

    if (actor->unk28 == 0) {
        __Actor_SetAnim(actor, 1);
        actor->y -= 0x18000;
        if (actor->y < actor->unk14) {
            if (actor->extra != 0) {
                __PlaySound(0xe5);
                actor->extra = 0;
                actor->unk66 = 4;
                API_Func_8012330(0, 0x10000, 0x10000);
            }
            actor->y = actor->unk14;
        }
        actor->unk5b = 1;
    } else {
        actor->unk5b = 0;
    }

    if (actor->unk64 == 0) {
        __PlaySound(0x98);
        actor->extra = 1;
        __Actor_SetAnim(actor, 2);
        actor->unk28 = 0x30000;
    }

    actor->unk64++;
    if (actor->unk64 == 60) {
        actor->unk64 = 0;
    }
}

void OvlFunc_931_20087b8(void)
{
    struct Actor931 *actor;

    actor = (struct Actor931 *)__MapActor_GetActor(0x12);
    actor->unk64 = 0;
    actor->unk66 = 0;
    actor->unk48 = 0x6666;
    actor->func = OvlFunc_931_20086f0;
    API_MapActor_SetSpeed(0x12, 0x13333, 0x9999);
    API_MapActor_TravelToWait(0x12, 0x1c, 0x1cc);
    API_MapActor_TravelToWait(0x12, 0x18, 0x1c0);
    __PlaySound(0xe5);
    __DeleteFieldActor(0x12);
    API_Func_8012330(0, 0x10000, 0x10000);
    __CutsceneWait(4);
    API_Func_8012330(-1, -1, 0xe666);
    __CutsceneWait(0x28);
    __MapActor_SetAnim(0x12, 1);
}

void OvlFunc_931_200884c(void) {
    int r3;
    r3 = *(int *)((char *)__MapActor_GetActor(0x13) + 8);
    if ((r3 >> 20) == 0x16) {
        __SetFlag(0x906);
    } else {
        __ClearFlag(0x906);
    }
}

int Altin_MapInit(void)
{
    int offset;
    short a;

    if (__GetFlag(0x8fd) != 0) {
        __SetFlag(0x240);
    }
    if (__GetFlag(0x8fe) != 0 || __GetFlag(0x907) != 0) {
        __SetFlag(0x241);
    }
    if (__GetFlag(0x8fe) != 0 && __GetFlag(0x907) != 0) {
        __SetFlag(0x242);
    }

    offset = 0xe0;
    offset <<= 1;
    a = *(short *)((char *)&gState + offset);
    if (a == (int)Lconst_4b) {
        OvlFunc_931_2008904();
    } else if (a == (int)Lconst_4c) {
        OvlFunc_931_2008b2c();
    }
    return 0;
}
struct Actor {
    char pad0[6];
    unsigned short facing;
    char pad8[0x23 - 8];
    unsigned char unk23;
    char pad24[0x59 - 0x24];
    unsigned char unk59;
};

int __GetFlag(int);
void __MapActor_SetPos(int, int, int);
void __Func_8010704(int, int, int, int, int, int);
void __Func_8091ff0(int);
void __Func_8092950(int, int);
void __StartTask(void *, int);
void __WaitFrames(int);
void __Func_80933f8(int, int, int, int);
void __Func_800fe9c(void);
void OvlFunc_931_2008d08(void);

void OvlFunc_931_2008904(void)
{
    struct Actor931 *actor0;
    int offset;
    int t1, t2;

    actor0 = (struct Actor931 *)__MapActor_GetActor(0);

    if (__GetFlag(0x242) != 0) {
        __CopyMapTiles(0x40, 0x20, 0, 0x20, 0x20, 0x20);
        __Func_8010704(0x40, 0x20, 0x20, 0x20, 0, 0);
        __DeleteFieldActor(0x14);
        __DeleteFieldActor(0x15);
    } else if (__GetFlag(0x241) != 0) {
        __CopyMapTiles(0x40, 0, 0, 0x20, 0x20, 0x20);
        __Func_8010704(0x40, 0, 0x20, 0x20, 0, 0);
        __DeleteFieldActor(0x11);
        __DeleteFieldActor(0x14);
        __DeleteFieldActor(0x15);
    } else if (__GetFlag(0x240) != 0) {
        __CopyMapTiles(0, 0x40, 0, 0x20, 0x20, 0x20);
        __Func_8010704(0, 0x40, 0x20, 0x20, 0, 0);
        __DeleteFieldActor(0x10);
        __DeleteFieldActor(0x11);
        __DeleteFieldActor(0x15);
    } else {
        __Func_8010704(0, 0x20, 0x20, 0x20, 0, 0);
        __DeleteFieldActor(0xf);
        __DeleteFieldActor(0x10);
        __DeleteFieldActor(0x11);
    }

    if (__GetFlag(0x8ff) != 0) {
        __DeleteFieldActor(0x12);
    } else {
        __Func_8091ff0(0xaa);
        __Func_8092950(0x12, 2);
        __MapActor_SetAnim(0x12, 3);
        __StartTask(OvlFunc_931_2008d08, 0xc8 << 4);
    }

    offset = 0xe1;
    offset <<= 1;
    if (*(short *)((char *)&gState + offset) == 3) {
        __ClearFlag(0x12f);
    }

    t1 = 0x14;
    t2 = 0x29;
    __Func_8010704(0, 0x21, 4, 3, t1, t2);

    if (__GetFlag(0x906) != 0) {
        API_MapActor_SetPos(0x13, 0xb4 << 17, 0xa8 << 16);
    }

    __Actor_SetSpriteFlags(__MapActor_GetActor(0x13), 0);

    __Func_8092950(0x16, 0xf);
    __Func_8092950(0x17, 0xf);
    __Func_8092950(0x18, 0xf);

    ((struct Actor *)__MapActor_GetActor(0x16))->unk59 |= 8;
    ((struct Actor *)__MapActor_GetActor(0x17))->unk59 |= 8;
    ((struct Actor *)__MapActor_GetActor(0x18))->unk59 |= 8;

    ((struct Actor *)__MapActor_GetActor(0x16))->unk23 |= 2;
    ((struct Actor *)__MapActor_GetActor(0x17))->unk23 |= 2;
    ((struct Actor *)__MapActor_GetActor(0x18))->unk23 |= 2;

    __Func_8092b08(0x16, 1);
    __Func_8092b08(0x17, 1);
    __Func_8092b08(0x18, 1);

    __WaitFrames(1);
    __CutsceneStart();
    __Func_80933f8(actor0->x, actor0->y, actor0->z, 0);
    __Func_800fe9c();
    __CutsceneEnd();
    __WaitFrames(1);
}
void OvlFunc_931_2008b2c(void)
{
    struct Actor *actor;

    if (__GetFlag(0x240) == 0) {
        API_MapActor_SetPos(8, 0x3280000, 0x2d70000);
        actor = __MapActor_GetActor(8);
        actor->facing = 0x3000;
        API_MapActor_SetPos(9, 0x31a0000, 0x3390000);
    }
    if (__GetFlag(0x241) == 0) {
        API_MapActor_SetPos(10, 0x2300000, 0x2c60000);
        actor = __MapActor_GetActor(10);
        actor->facing = 0x1000;
        API_MapActor_SetPos(11, 0x2400000, 0x2c60000);
    }
    if (__GetFlag(0x242) == 0) {
        API_MapActor_SetPos(15, 0x1270000, 0x2e80000);
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
void OvlFunc_931_2008c0c(unsigned char *actor)
{
    unsigned char *ptr;
    unsigned char *sprite;
    int zero;

    ptr = actor + 0x55;
    zero = 0;
    *ptr = zero;
    sprite = *(unsigned char **)(actor + 0x50);
    zero -= 0xd;
    sprite[9] = (sprite[9] & zero) | 4;
    __Func_80929d8(actor, 3);
    __Actor_SetSpriteFlags(actor, 0);
    *(int *)(actor + 0x18) = 0x4ccc;
    *(int *)(actor + 0x1c) = 0x4ccc;
}

void OvlFunc_931_2008c44(struct Actor931 *actor)
{
    int rnd;
    short *unk64_ptr;
    int shift;

    rnd = ((unsigned int)__Random() * 2) >> 16;
    unk64_ptr = &actor->unk64;
    rnd -= 1;
    rnd <<= 16;
    shift = *unk64_ptr << 12;
    rnd >>= 1;
    *(int *)((char *)actor + 8) += shift + rnd;

    if (*unk64_ptr <= 3) {
        rnd = ((unsigned int)__Random() * 0x8000) >> 16;
        *(int *)((char *)actor + 0x10) -= rnd - 0xffff0000;
        *(int *)((char *)actor + 0x18) += 0x2666;
        *(int *)((char *)actor + 0x1c) += 0xfffff5c3;
    } else {
        *(int *)((char *)actor + 0x10) += 0x20000;
        *(int *)((char *)actor + 0x18) += 0x7ae;
        *(int *)((char *)actor + 0x1c) += 0x7ae;
    }

    if (((*unk64_ptr * (unsigned int)__Random()) >> 16) == 0) {
        __Func_80929d8(actor, 7);
    }

    if (*unk64_ptr != 0) {
        (*unk64_ptr)--;
    } else {
        *unk64_ptr = (((unsigned int)__Random() * 5) >> 16) * 2 + 2;
    }

    actor->extra--;
    if (actor->extra == 0) {
        actor->func = 0;
        __DeleteActor(actor);
    }
}
extern unsigned char iwram_3001e40[];

void OvlFunc_931_2008d08(void) {
    struct Actor931 *actor;
    int flags;

    flags = *(int *)iwram_3001e40 & 3;
    if (flags == 0) {
        actor = (struct Actor931 *)API_CreateActor(0xde, 0x400000, 0, 0x1900000);
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

extern void __SetCameraTarget(int, int);

void OvlFunc_931_2008d58(void)
{
    __CutsceneStart();
    __Func_80933d4(0x6666, 0xccc);
    API_Func_80933f8(0x3f0000, -1, 0x1c20000, 1);
    __Func_8093530();
    __CutsceneWait(0x1e);
    __MapActor_SetAnim(0x12, 1);
    __Func_8091ff0(-1);
    __StopTask(OvlFunc_931_2008d08);
    __CutsceneWait(0x14);
    API_MapActor_Face(0, 0x12, 0);
    API_Func_8092adc(0, 0x4000, 0);
    API_Func_8092adc(0x12, 0, 0x14);
    API_Func_8092adc(0x12, 0xd000, 0x28);
    __PlaySound(0x93);
    API_Func_80925cc(0x12, 2);
    __CutsceneWait(0x14);
    API_Func_8092adc(0x12, 0xb000, 0x28);
    OvlFunc_931_20087b8();
    __SetCameraTarget(0, 1);
    __Func_8093530();
    __MapActor_DoAnim(0xe, 4);
    __SetFlag(0x8ff);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/altin/altin_data.s");

INCLUDE_ASM("asm/maps/altin/imports.s");
