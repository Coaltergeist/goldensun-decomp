/* rom_7ddb88 (overlay file 955): consolidated TU — colosseum_final_2 map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

extern unsigned char gOvl_0200c414[];

unsigned int ColosseumFinal2_GetEntrances(void) {
    return (unsigned int)gOvl_0200c414;
}

unsigned int ColosseumFinal2_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200c474[];

unsigned int ColosseumFinal2_GetExits(void) {
    return (unsigned int)gOvl_0200c474;
}
extern unsigned char gOvl_0200c48c[];

unsigned int ColosseumFinal2_GetActors(void) {
    return (unsigned int)gOvl_0200c48c;
}

void OvlFunc_955_200804c(void) {}

extern void OvlFunc_common1_2060(void);

void OvlFunc_955_2008050(void) {
    OvlFunc_common1_2060();
}

extern struct Actor *__MapActor_GetActor(int);

void OvlFunc_955_200805c(void) {
    int e;
    int f;

    if (__MapActor_GetActor(0xb)->pos.x >> 20 == 0x24) {
        API_SetFlag(0x335);
        e = 0x23;
        f = 0x4d;
        API_Func_8010704(0x23, 0x4e, 1, 1, e, f);
    } else {
        API_ClearFlag(0x335);
        e = 0x23;
        f = 0x4d;
        API_Func_8010704(0x22, 0x4d, 1, 1, e, f);
    }
}

void OvlFunc_955_20080b0(void)
{
	OvlFunc_common1_2060();
	OvlFunc_955_200805c();
}

void OvlFunc_955_20080c0(void) {
    extern void __SetFlagByte(int, int);
    int v;

    API_Func_8010704(0x64, 0xb, 0xc, 4, 0xe, 0xb);
    v = __MapActor_GetActor(0xc)->pos.x >> 20;
    __SetFlagByte(0xd0 << 2, v);
    API_Func_8010704(0x47, 0x10, 1, 1, v, 0x10);
    v = __MapActor_GetActor(0xd)->pos.x >> 20;
    __SetFlagByte(0xd2 << 2, v);
    API_Func_8010704(0x47, 0x10, 1, 1, v, 0x10);
    v = __MapActor_GetActor(0xe)->pos.x >> 20;
    __SetFlagByte(0xd4 << 2, v);
    API_Func_8010704(0x47, 0x10, 1, 1, v, 0x10);
}

extern unsigned int iwram_3001f30;

void OvlFunc_955_2008150(void) {
    unsigned int ptr;
    ptr = iwram_3001f30;
    *((unsigned char *)(ptr + 0x35)) = 1;
}

extern void __Actor_WaitMovement(struct Actor *);

void OvlFunc_955_2008160(void)
{
    struct Actor *actor;
    struct Sprite *sprite;
    int i;

    actor = __MapActor_GetActor(0x1e);
    sprite = actor->sprite;
    API_SetFlag(0xcc << 2);
    actor->accel = 0x1999;
    actor->speed = 0x13333;
    API_PlaySound(0xe3);
    API_Actor_TravelTo(actor, 0xa8 << 17, 0xa0 << 12, 0x84 << 17);
    for (i = 0; i < 10; i++) {
        sprite->rotation -= i * 0x24;
        API_WaitFrames(1);
    }
    API_Actor_TravelTo(actor, 0xa5 << 17, -0x100000, 0x84 << 17);
    for (i = 10; i < 32; i++) {
        sprite->rotation -= i * 0x24;
        API_WaitFrames(1);
    }
    __Actor_WaitMovement(actor);
    API_CutsceneWait(2);
    API_PlaySound(0xf0);
    sprite->rotation = 0;
    API_MapActor_SetAnim(0x1e, 4);
    actor->pos.x = 0xa8 << 17;
    actor->pos.y = -0x80000;
    actor->pos.z = 0x84 << 17;
    actor->motion.y = 0;
    actor->motion.x = 0;
    API_Func_8010704(0x13, 0x10, 1, 1, 0x14, 0x10);
    API_Func_8010704(0x14, 0x50, 1, 1, 0x15, 0x50);
}

void OvlFunc_955_2008258(void) {
    struct Actor *actor;
    API_SetFlag(0x331);
    actor = __MapActor_GetActor(0x14);
    actor->__unk55 = 0;
    API_Func_8010704(0x2e, 0x11, 1, 1, 0x2c, 0x11);
}

void OvlFunc_955_200828c(void) {
    struct Actor *actor;
    API_SetFlag(0x332);
    actor = __MapActor_GetActor(0x15);
    actor->__unk55 = 0;
    API_Func_8010704(0x2e, 0x11, 1, 1, 0x32, 0x11);
}

void OvlFunc_955_20082c0(void)
{
    int s1;
    int s2;
    __SetFlag(0x333);
    s1 = 0x20;
    s2 = 0x4d;
    API_Func_8010704(0x20, 0x25, 1, 4, s1, s2);
}

extern void __Func_8092708(unsigned int, int, int);
extern unsigned char gState;

void OvlFunc_955_20082e8(void) {
    unsigned int r3;

    r3 = (unsigned int)&gState;
    r3 += 0xfa << 1;
    __Func_8092708(*(unsigned int *)r3, 6, 0);
}

extern void __Func_8093c00(void);

void OvlFunc_955_2008304(void) {
    __Func_8093c00();
}

extern void __Actor_SetAnim(struct Actor *, int);

void OvlFunc_955_2008310(int actorId, int arg1, int arg2)
{
    struct Actor *actor1;
    struct Actor *actor2;
    int x;
    int z;
    unsigned int r3;

    r3 = (unsigned int)&gState;
    r3 += 0xfa << 1;
    actor1 = __MapActor_GetActor(*(int *)r3);
    actor2 = __MapActor_GetActor(actorId);
    API_CutsceneStart();

    x = ((actor1->pos.x + (arg1 << 16)) & 0xfff00000) + 0x80000;
    z = ((actor1->pos.z + (arg2 << 16)) & 0xfff00000) + 0x80000;
    actor1->speed = 0x10000;
    actor1->accel = 0x8000;
    API_Actor_TravelTo(actor1, x, actor1->pos.y, z);
    __Actor_SetAnim(actor1, 0x1b);

    x = ((actor2->pos.x + (arg1 << 16)) & 0xfff00000) + 0x80000;
    z = ((actor2->pos.z + (arg2 << 16)) & 0xfff00000) + 0x80000;
    actor2->speed = 0x10000;
    actor2->accel = 0x8000;
    API_Actor_TravelTo(actor2, x, actor2->pos.y, z);

    if (arg1 < 0 || arg2 < 0) {
        __Actor_SetAnim(actor2, 4);
    } else {
        __Actor_SetAnim(actor2, 3);
    }

    API_PlaySound(0xe2);
    __Actor_WaitMovement(actor1);
    API_PlaySound(0x120);
    __Actor_SetAnim(actor2, 2);
    API_CutsceneEnd();
}
extern unsigned int gKeyHeld;
extern void OvlFunc_955_2008310(int, int, int);

void OvlFunc_955_2008400(void) {
    unsigned int r3;
    struct Actor *actor;
    int posX;
    int actorId;
    int speed;

    r3 = (unsigned int)&gState;
    r3 += 0xfa << 1;
    actor = __MapActor_GetActor(*(unsigned int *)r3);
    posX = actor->pos.x >> 20;

    speed = 0;
    actorId = 0x20;
    if (actor->pos.z >> 20 > 12) {
        actorId = 0x21;
    }

    if (__MapActor_GetActor(actorId)->pos.x >> 20 == posX) {
        if (posX > 0x33) {
            if (gKeyHeld & 0x20) {
                speed = -0x40;
            }
        } else {
            if (gKeyHeld & 0x10) {
                speed = 0x40;
            }
        }

        if (speed != 0) {
            OvlFunc_955_2008310(actorId, speed, 0);
            API_Func_8010704(0x78, 10, 5, 6, 0x30, 10);
            posX = __MapActor_GetActor(0x20)->pos.x >> 20;
            API_Func_8010704(0x34, 0x1c, 1, 3, posX, 10);
            posX = __MapActor_GetActor(0x21)->pos.x >> 20;
            API_Func_8010704(0x34, 0x1c, 1, 3, posX, 13);
        }
    }
}
extern const u8 L40c0[] __asm__(".Lm955_40c0");
extern void *__galloc_ewram(int, int);
extern void __Camera_SetTarget(void *, struct Actor *);

void OvlFunc_955_20084c0(int actorId, int b, int c)
{
    unsigned int r3;
    int leaderId;
    struct Actor *leaderActor;
    struct Actor *actor;
    int angle;
    int cond;
    int deltaX;
    int deltaZ;

    r3 = (unsigned int)&gState;
    r3 += 0xfa << 1;
    leaderId = *(int *)r3;
    leaderActor = __MapActor_GetActor(leaderId);
    actor = __MapActor_GetActor(actorId);

    angle = (leaderActor->facing + 0x1000) & 0xe000;

    cond = (actor->pos.x >> 20) != (b / 2);
    b <<= 19;
    c <<= 19;
    if (cond) {
        deltaX = (b - actor->pos.x) / 2;
        deltaZ = 0;
    } else {
        deltaX = 0;
        deltaZ = (c - actor->pos.z) / 2;
    }

    API_CutsceneStart();
    API_MapActor_SetAnim(leaderId, 8);
    API_CutsceneWait(6);

    actor->speed = 0x8000;
    actor->accel = 0x3333;
    __Actor_SetAnim(actor, L40c0[angle / 0x4000]);
    API_Actor_TravelTo(actor, b, 0, c);
    API_CutsceneWait(6);
    API_MapActor_SetAnim(leaderId, 2);

    __Camera_SetTarget(*(void **)((u8 *)__galloc_ewram(0x1b, 0xccc) + 0x1e0), actor);
    API_MapActor_SetSpeed(leaderId, 0x8000, 0x3333);
    __Actor_SetAnim(leaderActor, 2);
    API_Actor_TravelTo(leaderActor, leaderActor->pos.x + deltaX, 0, leaderActor->pos.z + deltaZ);
    API_PlaySound(0xef);
    __Actor_WaitMovement(leaderActor);
    __Actor_SetAnim(leaderActor, 1);
    __Actor_WaitMovement(actor);
    API_PlaySound(0x120);
    API_PlaySound(0xd5);
    __Actor_SetAnim(actor, 1);
    API_CutsceneWait(15);
    API_CutsceneEnd();
}

void OvlFunc_955_200862c(void) {
    int v;

    API_Func_8010704(0x64, 0xb, 0xc, 4, 0xe, 0xb);
    v = __MapActor_GetActor(0xf)->pos.x >> 20;
    API_Func_8010704(0xd, 0x1c, 1, 4, v, 0xb);
    v = __MapActor_GetActor(0x10)->pos.x >> 20;
    API_Func_8010704(0xd, 0x1c, 1, 4, v, 0xb);
    v = __MapActor_GetActor(0x11)->pos.z >> 20;
    API_Func_8010704(0xd, 0x1c, 4, 1, 0x12, v);
}

extern void OvlFunc_955_20084c0(int a, int b, int c);
extern void OvlFunc_955_200862c(void);

void OvlFunc_955_200869c(void)
{
	OvlFunc_955_20084c0(0xf, 0x1d, 0x1a);
	OvlFunc_955_200862c();
}


void OvlFunc_955_20086b0(void)
{
	OvlFunc_955_20084c0(0xf, 0x21, 0x1a);
	OvlFunc_955_200862c();
}


void OvlFunc_955_20086c4(void)
{
	OvlFunc_955_20084c0(0x10, 0x2d, 0x1a);
	OvlFunc_955_200862c();
}


void OvlFunc_955_20086d8(void)
{
	OvlFunc_955_20084c0(0x10, 0x31, 0x1a);
	OvlFunc_955_200862c();
}


void OvlFunc_955_20086ec(void)
{
	OvlFunc_955_20084c0(0x11, 0x28, 0x17);
	OvlFunc_955_200862c();
}


void OvlFunc_955_2008700(void)
{
	OvlFunc_955_20084c0(0x11, 0x28, 0x19);
	OvlFunc_955_200862c();
}

extern unsigned int L4838[] __asm__(".Lm955_4838");
extern unsigned int L4834[] __asm__(".Lm955_4834");

struct CS955M_State { unsigned char pad[0x1f4]; int leaderId; };
extern struct CS955M_State CS955M_State __asm__("gState");
void OvlFunc_955_2008714(void)
{
    struct Actor *leader;
    struct Actor *actor;
    int i;
    int dx;
    int dz;

    leader = __MapActor_GetActor(CS955M_State.leaderId);

    for (i = 0x16; i <= 0x19; i++) {
        actor = __MapActor_GetActor(i);
        actor->stop = 0;

        dx = actor->pos.x - leader->pos.x;
        if (dx >= 0 ? dx <= 0x9ffff : leader->pos.x - actor->pos.x <= 0x9ffff) {
            dz = actor->pos.z - leader->pos.z;
            if (dz >= 0 ? dz <= 0x9ffff : leader->pos.z - actor->pos.z <= 0x9ffff) {
                if (__GetFlag(0x82 << 1)) {
                    leader->pos.z = actor->pos.z;
                } else {
                    leader->pos.z += actor->motion.z;
                }
            }
        }
    }

    if (L4838[0] != 0 && actor->prevPos.x == (int)0x80000000) {
        if (L4834[0] == 0) {
            API_Func_8010704(0x3a, 0x1c, 7, 1, 0x3a, 0xd);
        } else {
            API_Func_8010704(0x3a, 0xa, 1, 1, 0x3a, 0xb);
        }
    } else {
        API_Func_8010704(0x39, 0xb, 1, 1, 0x3a, 0xb);
        API_Func_8010704(0x3a, 0xe, 7, 1, 0x3a, 0xd);
    }

    if (L4838[0] == 0) {
        L4834[0] ^= 1;
        if (L4834[0] != 0) {
            API_Actor_TravelTo(__MapActor_GetActor(0x16), 0xea << 18, 0, 0xb8 << 16);
            API_Actor_TravelTo(__MapActor_GetActor(0x17), 0xf2 << 18, 0, 0xf8 << 16);
            API_Actor_TravelTo(__MapActor_GetActor(0x18), 0xfa << 18, 0, 0xb8 << 16);
            API_Actor_TravelTo(__MapActor_GetActor(0x19), 0x81 << 19, 0, 0xf8 << 16);
            API_MapActor_SetAnim(0x1f, 0xb);
        } else {
            API_Actor_TravelTo(__MapActor_GetActor(0x16), 0xea << 18, 0, 0xd8 << 16);
            API_Actor_TravelTo(__MapActor_GetActor(0x17), 0xf2 << 18, 0, 0xd8 << 16);
            API_Actor_TravelTo(__MapActor_GetActor(0x18), 0xfa << 18, 0, 0xd8 << 16);
            API_Actor_TravelTo(__MapActor_GetActor(0x19), 0x81 << 19, 0, 0xd8 << 16);
            API_MapActor_SetAnim(0x1f, 0xa);
        }
    }

    L4838[0]++;
    if (L4838[0] > 0x77) {
        if (!__GetFlag(0x82 << 1)) {
            L4838[0] = 0;
        }
    }
}

// fakematch
extern void OvlFunc_955_2008714(void);
extern unsigned int L4838[] __asm__(".Lm955_4838");
extern unsigned int L4834[] __asm__(".Lm955_4834");
extern void __StopTask(void (*)(void));
extern void __MapActor_SetPos(int, int, int);
extern void __MapActor_SetAnim(int, int);

void OvlFunc_955_20088ec(void)
{
    L4838[0] = 0;
    L4834[0] = 0;
    __StopTask(OvlFunc_955_2008714);

    API_MapActor_SetPos(0x16, 0x3a80000, 0xd80000);
    API_MapActor_SetPos(0x17, 0x3c80000, 0xd80000);
    API_MapActor_SetPos(0x18, 0x3e80000, 0xd80000);
    API_MapActor_SetPos(0x19, 0x4080000, 0xd80000);

    __MapActor_SetAnim(0x1f, 10);
}

extern void __StartTask(void (*f)(void), int x);
extern void __ClearFlag(int x);

void OvlFunc_955_2008950(void) {
    int x;
    x = 0xc85;
    __StartTask(OvlFunc_955_2008714, x);
    __ClearFlag(0x82 << 1);
}

void OvlFunc_955_2008970(void)
{
    int i;

    API_WaitFrames(10);
    i = 0;
    while (L4834[0] != 0 || L4838[0] != 0x4b) {
        API_WaitFrames(1);
        i++;
        if (i >= 600)
            return;
    }
}
extern void __Func_809ad90(int);

void OvlFunc_955_20089b0(void)
{
    __Func_809ad90(0x1f);
    API_SetFlag(0x334);
    if (L4834[0] != 0) {
        L4838[0] = 0;
    }
    API_WaitFrames(30);
    API_WaitFrames(1);
    __StopTask(OvlFunc_955_2008714);
    API_Func_8010704(0x3a, 0x1c, 7, 1, 0x3a, 0xd);
    API_Func_8010704(0x39, 0xb, 1, 1, 0x3a, 0xb);
}
struct CS955_BattleState {
    unsigned char before22b[0x22b];
    unsigned char unk22b;
};
extern struct CS955_BattleState CS955_Battle __asm__("gState");
extern unsigned char Lconst_90[] __asm__(".Lconst_90");
__asm__(".equ .Lconst_90, 0x90");
extern void OvlFunc_common1_16f8(void);
extern int OvlFunc_common1_1814(int, int);
extern void OvlFunc_common1_1708(void);
extern void __StartMapBattle(int, int);
extern void __Func_8091f90(int, int);
extern void __Func_8091fa8(int, int);

void OvlFunc_955_2008a1c(void)
{
    int val;
    int i;
    int stage;

    OvlFunc_common1_16f8();
    API_CutsceneStart();
    val = OvlFunc_common1_1814(0x4d, 0x59);
    OvlFunc_common1_1708();
    stage = 2;
    for (i = 0; i < 10; i++) {
        API_MapActor_WaitScript(8);
    }
    API_MapActor_SetSpeed(8, 0x80 << 9, 0x80 << 8);
    API_MapActor_TravelToAnim(8, 0x58, 0x80 << 1);
    API_MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
    API_MapActor_TravelToAnimWait(0, 0x78, 0x80 << 1);
    API_MapActor_SetAnim(8, 1);
    API_MapActor_TurnToFaceActor(0, 8, 0);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(8, 3);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(0, 0x80 << 10, 0x80 << 9);
    API_MapActor_SetSpeed(8, 0x80 << 10, 0x80 << 9);
    API_MapActor_TravelToAnim(0, 0x70, 0x80 << 1);
    API_MapActor_TravelToAnimWait(8, 0x60, 0x80 << 1);
    API_MapActor_SetAnim(0, 0x10);
    API_MapActor_SetAnim(8, 9);
    API_CutsceneWait(10);
    __StartMapBattle(0x48, stage - val + 1);
    do {
        CS955_Battle.unk22b = 3;
    } while (0);
    __Func_8091f90((int)Lconst_90, 4);
    __Func_8091fa8((int)Lconst_90, 5);
    API_SetFlag(0x8d << 1);
}

extern unsigned char gOvl_0200c83c[];

void *ColosseumFinal2_GetEvents(void) {
    return (void *)gOvl_0200c83c;
}

extern void __DeleteFieldActor(int);
extern void __Func_807808c(int);
extern void OvlFunc_common1_fac(int);

void OvlFunc_955_2008b38(int arg0)
{
    __DeleteFieldActor(0x28);
    __DeleteFieldActor(0x29);
    __Func_807808c(1);
    API_CutsceneStart();
    API_MapActor_SetPos(8, 0xb0 << 15, 0x80 << 17);
    API_MapActor_SetPos(0, 0xf0 << 15, 0x80 << 17);
    API_MapActor_Face(8, 0x80 << 7, 0);
    API_MapActor_Face(0, 0x80 << 7, 0);
    if (arg0 < 0) {
        API_MapActor_SetAnim(8, 0xa);
        API_MapActor_SetAnim(0, 0x23);
    } else {
        API_MapActor_SetAnim(8, 8);
        API_MapActor_SetAnim(0, 0x1c);
    }
    API_WaitFrames(1);
    API_Func_80933f8(0xd0 << 15, 0, 0xc0 << 16, 0);
    OvlFunc_common1_fac(arg0);
    API_CutsceneEnd();
}

struct Colosseum2StateView {
    unsigned char prefix[0x1c2];
    short room;
    unsigned char gap[0x1f2 - 0x1c4];
    unsigned char partyMode;
};
static inline void Colosseum2Byte(unsigned char *p, int value) { *p = value; }
static inline void Colosseum2Flags(struct Actor *actor, int zero, int flags) {
    unsigned char *p = &actor->__unk55;
    *p = zero;
    p -= 0x32;
    *p = flags;
}
__asm__(".equ .LColosseum2BattleFile, 0xe5");
extern unsigned char Colosseum2BattleFile[] __asm__(".LColosseum2BattleFile");
static inline void Colosseum2Tiles(int a, int b, int c, int d, int e, int f)
{
    extern void __Func_8010788(int, int, int, int, int, int);
    __Func_8010788(a, b, c, d, e, f);
}

int ColosseumFinal2_MapInit(void)
{
    extern struct Colosseum2StateView Colosseum2State __asm__("gState");
    extern unsigned char *Colosseum2Field __asm__("iwram_3001ebc");
    extern int Colosseum2GetActor(int) __asm__("__MapActor_GetActor");
    extern void Colosseum2ActorAnim(struct Actor *, int) __asm__("__Actor_SetAnim");
    extern int __GetFlagByte(int);
    extern int __Func_8092950(int, int);
    extern void __Func_809ad90(int);
    extern int Colosseum2TaskStatus(void (*)(void), unsigned int) __asm__("__Func_8004358");
    extern void __DeleteFieldActor(int);
    extern void __MapActor_SetExtra(int, int);
    extern void OvlFunc_955_200862c(void);
    extern void OvlFunc_955_2008714(void);
    extern void OvlFunc_955_20090dc(int);
    extern int OvlFunc_common1_1608(int, int);
    extern int OvlFunc_common1_1ecc(int, int, int, int, int, int, int);
    extern void OvlFunc_common1_0(void);
    extern void OvlFunc_common1_78(int);
    extern void OvlFunc_common1_ea0(int);
    extern void OvlFunc_common1_1fb4(int);
    extern void OvlFunc_common1_148(void);
    extern void OvlFunc_common1_488(void);
    struct Actor *actor;
    struct Colosseum2StateView *state;
    int id, column, tileX, tileColumn, hiddenMode;
    unsigned char *byte;

    *(int *)(Colosseum2Field + 0x1c0) = 0;
    API_SetFlag(0x144);
    API_Func_8010704(14, 11, 12, 4, 100, 11);
    API_Func_8010704(48, 10, 5, 6, 120, 10);
    for (id = 26; id <= 30; id++) {
        actor = (struct Actor *)Colosseum2GetActor(id);
        Colosseum2ActorAnim(actor, 4);
        Colosseum2Byte(&actor->__unk55, 0);
        actor->pos.y = 0;
        Colosseum2Byte(&actor->flags, 2);
    }
    byte = (unsigned char *)Colosseum2GetActor(18);
    byte += 0x23;
    Colosseum2Byte(byte, 2);
    if (API_GetFlag(0x330)) {
        actor = (struct Actor *)Colosseum2GetActor(30);
        actor->pos.x = 0x1500000;
        actor->pos.y = -0x80000;
        actor->pos.z = 0x1080000;
        API_Func_8010704(19, 16, 1, 1, 20, 16);
        API_Func_8010704(20, 80, 1, 1, 21, 80);
    } else {
        actor = (struct Actor *)Colosseum2GetActor(30);
        Colosseum2ActorAnim(actor, 3);
        actor->pos.y = 0x100000;
    }
    byte = (unsigned char *)Colosseum2GetActor(11);
    byte += 0x23;
    hiddenMode = 0;
    Colosseum2Byte(byte, 2);
    if (API_GetFlag(0x335)) {
        API_Func_8010704(35, 78, 1, 1, 35, 77);
    }
    if (API_GetFlag(0x333)) {
        API_MapActor_SetAnim(19, 4);
        API_Func_8010704(32, 37, 1, 4, 32, 77);
    }
    if (API_GetFlag(0x331)) {
        byte = (unsigned char *)Colosseum2GetActor(20);
        byte += 0x55;
        Colosseum2Byte(byte, hiddenMode);
        byte = (unsigned char *)Colosseum2GetActor(20);
        byte += 0x23;
        Colosseum2Byte(byte, 2);
        API_MapActor_SetAnim(20, 5);
        API_Func_8010704(46, 17, 1, 1, 44, 17);
    }
    if (API_GetFlag(0x332)) {
        byte = (unsigned char *)Colosseum2GetActor(21);
        byte += 0x55;
        Colosseum2Byte(byte, hiddenMode);
        byte = (unsigned char *)Colosseum2GetActor(21);
        byte += 0x23;
        Colosseum2Byte(byte, 2);
        API_MapActor_SetAnim(21, 5);
        API_Func_8010704(46, 17, 1, 1, 50, 17);
    }
    actor = (struct Actor *)Colosseum2GetActor(32);
    tileColumn = actor->pos.x >> 20;
    Colosseum2Flags(actor, hiddenMode, 2);
    API_Func_8010704(52, 28, 1, 3, tileColumn, 10);
    actor = (struct Actor *)Colosseum2GetActor(33);
    tileColumn = actor->pos.x >> 20;
    Colosseum2Flags(actor, hiddenMode, 2);
    API_Func_8010704(52, 28, 1, 3, tileColumn, 13);
    column = __GetFlagByte(0x340);
    if (column == 0) column = 0x49;
    actor = (struct Actor *)Colosseum2GetActor(12);
    actor->pos.x = (column << 20) + 0x80000;
    Colosseum2Flags(actor, hiddenMode, 2);
    API_Func_8010704(71, 16, 1, 1, column, 16);
    column = __GetFlagByte(0x348);
    if (column == 0) column = 0x4c;
    actor = (struct Actor *)Colosseum2GetActor(13);
    actor->pos.x = (column << 20) + 0x80000;
    Colosseum2Flags(actor, hiddenMode, 2);
    API_Func_8010704(71, 16, 1, 1, column, 16);
    column = __GetFlagByte(0x350);
    if (column == 0) column = 0x4f;
    actor = (struct Actor *)Colosseum2GetActor(14);
    actor->pos.x = (column << 20) + 0x80000;
    Colosseum2Flags(actor, hiddenMode, 2);
    API_Func_8010704(71, 16, 1, 1, column, 16);
    OvlFunc_955_200862c();
    API_MapActor_SetAnim(31, 10);
    if (API_GetFlag(0x334)) {
        for (id = 22; id <= 25; id++) {
            actor = (struct Actor *)Colosseum2GetActor(id);
            actor->flags = 2;
            Colosseum2ActorAnim(actor, 4);
            API_Func_8010704(56, 13, 1, 1, 58 + (id - 22) * 2, 13);
        }
        API_MapActor_SetAnim(31, 10);
        __Func_809ad90(31);
    } else {
        for (id = 22; id <= 25; id++) {
            actor = (struct Actor *)Colosseum2GetActor(id);
            Colosseum2Byte(&actor->flags, 2);
            Colosseum2ActorAnim(actor, 4);
            actor->speed = 0x8000;
            actor->accel = 0x3333;
        }
        API_StartTask(OvlFunc_955_2008714, 0xc85);
        Colosseum2TaskStatus(OvlFunc_955_2008714, 1);
    }
    API_MapActor_SetAnim(8, 9);
    state = &Colosseum2State;
    Colosseum2Byte(&state->partyMode, 0);
    OvlFunc_common1_1608(41, 89);
    OvlFunc_common1_1608(40, 77);
    __Func_8092950(8, 1);
    switch (state->room) {
    case 1:
        OvlFunc_common1_1ecc(0, 8, 5, 0x680000, 0x1000000, 40, 41);
        Colosseum2Tiles(127, 0, 1, 2, 79, 6);
        __DeleteFieldActor(34);
        __DeleteFieldActor(35);
        __DeleteFieldActor(36);
        __DeleteFieldActor(37);
        __DeleteFieldActor(38);
        __DeleteFieldActor(39);
        if (!API_GetFlag(0x109)) {
            API_PlaySound(17);
            OvlFunc_common1_78(0);
            OvlFunc_common1_0();
            OvlFunc_common1_ea0(2);
        }
        __MapActor_SetExtra(1, 0);
        __MapActor_SetExtra(2, 0);
        __MapActor_SetExtra(3, 0);
        OvlFunc_common1_1fb4((int)Colosseum2BattleFile);
        break;
    case 2:
        API_StartTask(OvlFunc_common1_148, 0xc80);
        __DeleteFieldActor(40);
        __DeleteFieldActor(41);
        if (!API_GetFlag(0x109)) {
            OvlFunc_common1_0();
            OvlFunc_common1_78(1);
            OvlFunc_common1_ea0(0);
        }
        break;
    case 3:
        if (!API_GetFlag(0x109)) {
            OvlFunc_955_20090dc(34);
            OvlFunc_common1_488();
        }
        break;
    case 4:
        OvlFunc_955_2008b38(2);
        API_Func_8091e9c(4);
        break;
    case 5:
        OvlFunc_955_2008b38(-2);
        API_Func_8091e9c(5);
        break;
    }
    return 0;
}
static inline void CS955_TravelToPlayer(int actorId)
{
    struct Actor *player = __MapActor_GetActor(0);
    if (player != 0)
        API_MapActor_TravelTo(actorId, ((short *)&player->pos.x)[1],
                             ((short *)&player->pos.z)[1]);
}
void OvlFunc_955_20090dc(int actorId)
{
    struct Actor *actor = __MapActor_GetActor(actorId);
    int x = ((short *)&actor->pos.x)[1];
    int z = ((short *)&actor->pos.z)[1];
    unsigned int fixedX;
    unsigned int fixedZ;
    API_CutsceneStart();
    API_MapActor_SetSpeed(actorId, 0x10000, 0x8000);
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_SetSpeed(1, 0x10000, 0x8000);
    API_MapActor_SetSpeed(2, 0x10000, 0x8000);
    API_MapActor_SetSpeed(3, 0x10000, 0x8000);
    fixedX = (unsigned int)x << 16;
    fixedZ = (unsigned int)z << 16;
    API_MapActor_SetPos(0, fixedX, fixedZ - 0x300000);
    API_MapActor_SetPos(1, fixedX - 0x100000, fixedZ - 0x280000);
    API_MapActor_SetPos(2, fixedX + 0x100000, fixedZ - 0x280000);
    API_MapActor_SetPos(3, fixedX, fixedZ - 0x200000);
    API_MapActor_SetPos(actorId, fixedX, fixedZ - 0x500000);
    __MapActor_GetActor(0)->facing = 0xc000;
    API_SetCameraTarget(0, 0);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_MessageID(0x20e9);
    API_MapActor_DoAnim(actorId, 3);
    API_ActorMessage(actorId, 0);
    API_Func_80925cc(actorId, 2);
    API_ActorMessage(actorId, 0);
    API_Func_80925cc(actorId, 2);
    API_ActorMessage(actorId, 0);
    API_Func_80925cc(actorId, 2);
    API_ActorMessage(actorId, 0);
    API_MapActor_SetAnim(3, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(6);
    API_MapActor_SetAnim(1, 2);
    CS955_TravelToPlayer(1);
    API_MapActor_SetAnim(2, 2);
    CS955_TravelToPlayer(2);
    API_MapActor_SetAnim(3, 2);
    CS955_TravelToPlayer(3);
    API_MapActor_TravelToAnimWait(actorId, x - 16, z - 64);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetPos(2, 0, 0);
    API_MapActor_SetPos(3, 0, 0);
    API_MapActor_TravelToAnimWait(actorId, x - 16, z - 16);
    API_MapActor_TravelToAnimWait(actorId, x, z);
    API_Func_8092adc(actorId, 0xc000, 10);
    API_CutsceneEnd();
}
extern struct Colosseum2StateView Colosseum2State __asm__("gState");
extern void OvlFunc_common1_2c4(void);
extern int OvlFunc_common1_4cc(int, int);
extern int OvlFunc_common1_1078(int, int, int);
extern int OvlFunc_common1_15b8(int, int, int);
extern void OvlFunc_common1_1254(int);
extern void OvlFunc_common1_588(int, int);
extern int OvlFunc_common1_5e4(int, int, int);
extern void __Func_8093fa0(void);

void OvlFunc_955_20092f0(int arg0)
{
    int res;
    int x;
    struct Actor *actor;

    if (Colosseum2State.room == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    API_CutsceneStart();
    res = OvlFunc_common1_4cc(arg0, 1);
    if (res == 0) {
        API_MessageID(0x209e);
        API_Func_80933d4(0xc0 << 10, 0xc0 << 7);
        API_Func_80933f8(0x99 << 19, -1, 0xb8 << 16, 1);
        API_Func_8093530();
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1078(0, 0x9f << 3, 0xa8);
        x = 0xa1 << 3;
        API_MapActor_SetSpeed(0, 0xc0 << 9, 0xc0 << 8);
        OvlFunc_common1_15b8(0, x, 0xb8);
        OvlFunc_common1_15b8(0, x, 0xd8);
        x -= 0x40;
        OvlFunc_common1_15b8(0, x, 0xd8);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_15b8(0, x, 0xf8);
        OvlFunc_common1_15b8(0, 0x95 << 3, 0xf8);
        API_CutsceneWait(3);
        actor = __MapActor_GetActor(0);
        actor->motion.y = 0x80 << 11;
        API_MapActor_SetAnim(0, 0x1c);
        API_MapActor_Surprise(0, 0x81 << 1);
        API_CutsceneWait(30);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1254(0);
        API_SetCameraTarget(0, 0);
        OvlFunc_common1_588(arg0, 1);
    } else if (res == 1) {
        API_MessageID(0x209d);
        API_ActorMessage(arg0, 0);
    }
    OvlFunc_common1_5e4(res, arg0, 1);
    API_CutsceneEnd();
}

void OvlFunc_955_2009424(int arg0)
{
    int val;

    if (Colosseum2State.room == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    API_CutsceneStart();
    val = OvlFunc_common1_4cc(arg0, 2);
    if (val == 0) {
        API_MessageID(0x20a2);
        OvlFunc_955_20088ec();
        API_Func_80933d4(0xc0 << 10, 0xc0 << 7);
        API_Func_80933f8(0xf6 << 18, -1, 0xe8 << 16, 1);
        API_Func_8093530();
        __ActorMessage(arg0, 0);
        OvlFunc_955_2008950();
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1078(0, 0x438, 0x84 << 1);
        API_CutsceneWait(15);
        API_MapActor_SetSpeed(0, 0xc0 << 9, 0xc0 << 8);
        OvlFunc_common1_15b8(0, 0x438, 0xd8);
        OvlFunc_common1_15b8(0, 0x85 << 3, 0xd8);
        OvlFunc_955_2008970();
        __Func_8093c00();
        API_Func_80933f8(-1, -1, -1, 0);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1254(0);
        API_SetCameraTarget(0, 0);
        OvlFunc_common1_588(arg0, 2);
    } else if (val == 1) {
        API_MessageID(0x20a1);
        API_ActorMessage(arg0, 0);
    }
    OvlFunc_common1_5e4(val, arg0, 2);
    API_CutsceneEnd();
}

void OvlFunc_955_2009538(int arg0)
{
    extern int CS955_Call_8310(int, int, int) __asm__("OvlFunc_955_2008310");
    int result;

    if (Colosseum2State.room == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    API_CutsceneStart();
    result = OvlFunc_common1_4cc(arg0, 3);
    if (result == 0) {
        API_MessageID(0x20a6);
        API_Func_80933d4(0x30000, 0x6000);
        API_Func_80933f8(0x2f00000, -1, 0xc00000, 1);
        API_Func_8093530();
        API_CutsceneWait(60);
        API_Func_80933d4(0x10000, 0x2000);
        API_Func_80933f8(0x2f00000, -1, 0xe00000, 1);
        API_Func_8093530();
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1078(0, 0x358, 0x108);
        API_CutsceneWait(10);
        API_MapActor_SetSpeed(0, 0x18000, 0xc000);
        OvlFunc_common1_15b8(0, 0x358, 0x108);
        OvlFunc_common1_15b8(0, 0x358, 0xe8);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_15b8(0, 0x348, 0xe8);
        API_CutsceneWait(10);
        CS955_Call_8310(0x21, -0x40, 0);
        API_Func_80933f8(0x2f00000, -1, 0xd80000, 1);
        API_MapActor_SetAnim(0, 1);
        API_CutsceneWait(10);
        API_MapActor_SetSpeed(0, 0x10000, 0x8000);
        API_MapActor_TravelToAnimWait(0, 0x2f8, 0xe8);
        API_CutsceneWait(10);
        API_Func_8092adc(0, 0x4000, 30);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1254(0);
        API_SetCameraTarget(0, 0);
        API_MapActor_SetPos(0x21, 0x3480000, 0xe80000);
        OvlFunc_common1_588(arg0, 3);
    } else if (result == 1) {
        API_MessageID(0x20a5);
        API_ActorMessage(arg0, 0);
    }
    OvlFunc_common1_5e4(result, arg0, 3);
    API_CutsceneEnd();
}

static inline int CS955_TurnActor(int a0, int a1, int a2)
{
    extern int CS955_Func_8092adc(int, int, int) __asm__("__Func_8092adc");
    return CS955_Func_8092adc(a0, a1, a2);
}

void OvlFunc_955_20096d4(int arg0)
{
    int result;
    struct Actor *actor;

    if (Colosseum2State.room == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    API_CutsceneStart();
    result = OvlFunc_common1_4cc(arg0, 4);
    if (result == 0) {
        API_MessageID(0x20aa);
        API_Func_80933d4(0x30000, 0x6000);
        API_Func_80933f8(0x2180000, -1, 0xf00000, 1);
        API_Func_8093530();
        API_CutsceneWait(0x2d);
        API_Func_80933d4(0x10000, 0x2000);
        API_Func_80933f8(0x2180000, -1, 0xc00000, 1);
        API_Func_8093530();
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1078(0, 0x278, 0x108);
        API_MapActor_SetSpeed(0, 0x10000, 0x8000);
        API_MapActor_TravelToAnimWait(0, 0x268, 0x108);
        CS955_TurnActor(0, 0xc000, 0x14);
        __Func_8093fa0();
        API_Func_80933d4(0x4000, 0x800);
        API_Func_80933f8(0x2180000, -1, 0xa00000, 1);
        API_MapActor_SetSpeed(0, 0x8000, 0x4000);
        API_MapActor_SetAnim(0, 10);
        actor = __MapActor_GetActor(0);
        API_Actor_TravelTo(actor, actor->pos.x, actor->pos.y + 0x400000, actor->pos.z);
        API_MapActor_WaitMovement(0);
        __Func_8093fa0();
        API_Func_80933f8(-1, -1, -1, 0);
        API_ActorMessage(arg0, 0);
        API_MapActor_SetSpeed(0, 0x18000, 0xc000);
        OvlFunc_common1_15b8(0, 0x1e8, 0xf8);
        API_Func_8092adc(0, 0x4000, 0x14);
        __Func_8092708(0, 6, 0);
        API_Func_80933f8(0x2180000, -1, 0xa00000, 1);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1254(0);
        API_SetCameraTarget(0, 0);
        OvlFunc_common1_588(arg0, 4);
    } else if (result == 1) {
        API_MessageID(0x20a9);
        API_ActorMessage(arg0, 0);
    }
    OvlFunc_common1_5e4(result, arg0, 4);
    API_CutsceneEnd();
}
extern void __Actor_SetAnim(struct Actor *, int);
extern void __Actor_WaitMovement(struct Actor *);

void OvlFunc_955_2009898(int arg0, int arg1, int arg2)
{
    unsigned int r3;
    int leaderId;
    struct Actor *actorB;
    struct Actor *actorA;
    int cond;
    int dx;
    int dz;

    r3 = (unsigned int)&gState;
    r3 += 0xfa << 1;
    leaderId = *(int *)r3;

    actorB = __MapActor_GetActor(leaderId);
    actorA = __MapActor_GetActor(arg0);

    cond = actorA->pos.x >> 20 != arg1 / 2;
    arg1 <<= 16;
    arg2 <<= 16;
    if (cond) {
        dx = (arg1 - actorA->pos.x) / 2;
        dz = 0;
    } else {
        dx = 0;
        dz = (arg2 - actorA->pos.z) / 2;
    }

    API_MapActor_SetAnim(leaderId, 8);
    API_CutsceneWait(6);

    actorA->speed = 0x8000;
    actorA->accel = 0x3333;
    API_PlaySound(0xef);
    __Actor_SetAnim(actorA, 3);
    API_Actor_TravelTo(actorA, arg1, 0, arg2);

    API_CutsceneWait(6);

    API_MapActor_SetAnim(leaderId, 2);
    API_MapActor_SetSpeed(leaderId, 0x8000, 0x3333);

    __Actor_SetAnim(actorB, 2);
    API_Actor_TravelTo(actorB, actorB->pos.x + dx, 0, actorB->pos.z + dz);
    __Actor_WaitMovement(actorB);
    __Actor_SetAnim(actorB, 1);

    __Actor_WaitMovement(actorA);
    __Actor_SetAnim(actorA, 1);

    API_PlaySound(0x120);
    API_PlaySound(0xd5);
    API_CutsceneWait(15);
}
void OvlFunc_955_20099bc(int arg0)
{
    int res;

    if (Colosseum2State.room == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    API_CutsceneStart();
    res = OvlFunc_common1_4cc(arg0, 5);
    if (res == 0) {
        API_MessageID(0x20ae);
        API_Func_80933d4(0x80 << 10, 0x80 << 7);
        API_Func_80933f8(0xa4 << 17, -1, 0x84 << 17, 1);
        API_Func_8093530();
        API_CutsceneWait(30);
        API_Func_80933d4(0xc0 << 9, 0xc0 << 6);
        API_Func_80933f8(0x9c << 17, -1, 0xb0 << 16, 1);
        API_Func_8093530();
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1078(0, 0x198, 0x108);
        API_MapActor_SetSpeed(0, 0xc0 << 9, 0xc0 << 8);
        OvlFunc_common1_15b8(0, 0x198, 0xd8);
        API_Func_8092adc(0, 0x80 << 8, 10);
        API_ActorMessage(arg0, 0);
        OvlFunc_955_2009898(0x10, 0xb4 << 1, 0xd0);
        API_MapActor_Emote(0, 0x108, 0x2d);
        API_MapActor_SetSpeed(0, 0xc0 << 9, 0xc0 << 8);
        OvlFunc_common1_15b8(0, 0x178, 0xd8);
        OvlFunc_common1_15b8(0, 0x178, 0xf8);
        OvlFunc_common1_15b8(0, 0x9c << 1, 0xf8);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1254(0);
        API_SetCameraTarget(0, 0);
        API_MapActor_SetPos(0x10, 0xc4 << 17, 0xd0 << 16);
        OvlFunc_common1_588(arg0, 5);
    } else if (res == 1) {
        API_MessageID(0x20ad);
        API_ActorMessage(arg0, 0);
    }
    OvlFunc_common1_5e4(res, arg0, 5);
    API_CutsceneEnd();
}
INCLUDE_ASM("asm/maps/colosseum_final_2/colosseum_final_2_data.s");
