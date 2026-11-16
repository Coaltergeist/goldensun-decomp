/* rom_7e0928 (overlay file 956): consolidated TU — colosseum_final_3 map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

extern int OvlFunc_956_20086a4();
extern void OvlFunc_956_200857c();

extern unsigned char gOvl_0200d000[];

unsigned int ColosseumFinal3_GetEntrances(void) {
    return (unsigned int)gOvl_0200d000;
}

unsigned int ColosseumFinal3_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200d090[];

unsigned int ColosseumFinal3_GetExits(void) {
    return (unsigned int)gOvl_0200d090;
}
extern unsigned char gScript_881__0200d0a8[];

unsigned int ColosseumFinal3_GetActors(void) {
    return (unsigned int)gScript_881__0200d0a8;
}

extern signed char L4c20[][6] __asm__(".Lm956_4c20");
extern int V5484 __asm__(".Lm956_5484");
extern int V5480 __asm__(".Lm956_5480");
extern struct Actor *__MapActor_GetActor(int);
extern void __Func_809ad90(int);
extern void __WaitFrames(int);

void OvlFunc_956_200804c(void)
{
    extern unsigned char gState[];
    extern unsigned char *iwram_3001ebc;
    unsigned char *p;
    unsigned int r2;
    struct Actor *actor;
    int r4;
    int r6;
    int val;
    int idx;

    p = iwram_3001ebc;
    r2 = 0xfa;
    r2 <<= 1;
    actor = __MapActor_GetActor(*(int *)(gState + r2));
    r4 = actor->pos.z >> 20;

    if (V5484 == 0) {
        V5480 = (V5480 + 1) & 3;
        for (r6 = 0x12; r6 <= 0x16; r6++) {
            val = L4c20[V5480][r6 - 0x12];
            API_MapActor_SetAnim(r6, val);
            API_MapActor_SetAnim(r6 + 5, val + 8);
            API_Func_8010704(0x20, 0xb, 1, 2, 0x21 + (r6 - 0x12) * 2, 0xb);
            if (val != 7) {
                API_Func_8010704(0x4a, 0xc, 1, 1, 0x21 + (r6 - 0x12) * 2, 0xb);
            }
        }
        API_MapActor_SetAnim(0x1c, L4c20[V5480][5]);
    } else {
        short *dst;
        for (r6 = 0x12, idx = V5480, dst = (short *)(p + 0x182); r6 <= 0x16; r6++) {
            val = L4c20[idx][r6 - 0x12];
            if ((unsigned int)(actor->pos.x - (r6 << 21) + 0x31ffff) <= 0x13fffe) {
                if (r4 == 11 && val == 4) {
                    *dst = val;
                }
                if (r4 == 12 && val == 5) {
                    *dst = val;
                }
            }
        }
    }

    V5484++;
    if ((unsigned int)V5484 > 17) {
        V5484 = 0;
    }
}

extern unsigned char L5484[] __asm__(".Lm956_5484");
extern unsigned char L5480[] __asm__(".Lm956_5480");
extern void OvlFunc_956_200804c(void);

void OvlFunc_956_2008188(void)
{
    void (*r5)(void);

    *(int *)L5484 = 0;
    r5 = OvlFunc_956_200804c;
    *(int *)L5480 = 0;
    __StopTask(r5);
    r5();
}

extern int __StartTask(void (*task)(void), unsigned int priority);
extern void OvlFunc_956_200804c(void);

void OvlFunc_956_20081b4(void) {
    __StartTask(OvlFunc_956_200804c, 0xc8 << 4);
}
void OvlFunc_956_20081c8(void)
{
    extern int V5480 __asm__(".Lm956_5480");
    extern int V5484 __asm__(".Lm956_5484");
    int i;

    __WaitFrames(10);
    i = 0;
    while (V5480 != 3 || V5484 != 1) {
        __WaitFrames(1);
        i++;
        if (i >= 0x78) return;
    }
}
void OvlFunc_956_2008204(void)
{
    extern unsigned char gState[];
    extern unsigned char *iwram_3001ebc;
    unsigned int r2;
    unsigned char *p;
    struct Actor *actor;
    struct Actor *other;
    int id;
    int z;

    p = iwram_3001ebc;
    r2 = 0xfa;
    r2 <<= 1;
    id = *(int *)((char *)gState + r2);
    other = *(struct Actor **)(p + 0x1e0);
    actor = (struct Actor *)__MapActor_GetActor(id);
    z = *(short *)((char *)actor + 0x12);
    if (z >= 0xb7 && z <= 0xba) {
        other->pos.x -= 0xcccc;
        actor->pos.x -= 0xcccc;
    }
}

void OvlFunc_956_200824c(void) {
    int a;
    int b;
    API_SetFlag(0xd8 << 2);
    a = 0x31;
    b = 0x3d;
	API_Func_8010704(0x2f, 0x3d, 1, 4, a, b);
}


extern struct Actor *__MapActor_GetActor(int);

void OvlFunc_956_2008274(void) {
    struct Actor *actor;

    actor = __MapActor_GetActor(9);
    actor->scale.x = 0x80 << 9;
    actor->scale.y = 0x80 << 9;

    actor = __MapActor_GetActor(0xb);
    actor->accel = 0x6666;
    actor->speed = 0xcccc;
    API_Actor_TravelTo(actor, actor->pos.x, 0x80 << 14, actor->pos.z);

    actor = __MapActor_GetActor(0xa);
    actor->accel = 0x6666;
    actor->speed = 0xcccc;
    API_Actor_TravelTo(actor, actor->pos.x, 0x80 << 11, actor->pos.z);

    API_SetFlag(0x362);

    API_Func_8010704(0xf, 0xc, 1, 1, 0xd, 0xc);
    API_Func_8010704(0xe, 0xc, 1, 1, 9, 0xc);
}
extern void __Actor_SetSpriteFlags(struct Actor *actor, int flags);

void OvlFunc_956_20082f8(void)
{
    extern unsigned char gState[];
    struct Actor *actor;
    unsigned int r2;
    int id;
    int flag;

    r2 = 0xfa;
    r2 <<= 1;
    id = *(int *)((char *)gState + r2);
    flag = API_GetFlag(0x362);
    if (flag == 0) {
        {
            struct Actor *a = (struct Actor *)__MapActor_GetActor(0xa);
            if (a != NULL) {
                API_MapActor_TravelTo(id, *(short *)((char *)a + 0xa), *(short *)((char *)a + 0x12));
            }
        }
        API_MapActor_WaitMovement(id);

        {
            struct Actor *a = (struct Actor *)__MapActor_GetActor(0xb);
            a->__unk55 = flag;
            a->accel = 0x6666;
            a->speed = 0xcccc;
            API_Actor_TravelTo(a, a->pos.x, 0x80 << 14, a->pos.z);
        }

        {
            struct Actor *a = (struct Actor *)__MapActor_GetActor(0xa);
            a->__unk55 = flag;
            a->accel = 0x6666;
            a->speed = 0xcccc;
            API_Actor_TravelTo(a, a->pos.x, 0x80 << 11, a->pos.z);
        }

        actor = (struct Actor *)__MapActor_GetActor(id);

        actor->__unk55 = flag;
        actor->accel = 0x6666;
        actor->speed = 0xcccc;
        API_Actor_TravelTo(actor, actor->pos.x, 0x80 << 11, actor->pos.z);

        __Actor_SetSpriteFlags(actor, 1);
        API_MapActor_WaitMovement(id);
        API_Func_8010704(0, 0x18, 1, 1, 9, 0xc);
        API_WaitFrames(2);
        __Actor_SetSpriteFlags(actor, 1);
        actor->__unk55 = 3;
        actor->floorPos = actor->pos.y;
        API_SetFlag(0x367);
    }
}

void OvlFunc_956_2008404(void) {
    extern unsigned char gState[];
    unsigned int r2;
    struct Actor *actor;
    int id;

    r2 = 0xfa;
    r2 <<= 1;
    id = *(int *)((char *)gState + r2);
    API_MapActor_SetAnim(id, 1);

    actor = (struct Actor *)__MapActor_GetActor(0xb);
    actor->__unk55 = 0;
    actor->accel = 0x6666;
    actor->speed = 0xcccc;
    API_Actor_TravelTo(actor, actor->pos.x, 0x80 << 11, actor->pos.z);

    actor = (struct Actor *)__MapActor_GetActor(0xa);
    actor->__unk55 = 0;
    actor->accel = 0x6666;
    actor->speed = 0xcccc;
    API_Actor_TravelTo(actor, actor->pos.x, 0x80 << 14, actor->pos.z);

    API_MapActor_WaitMovement(0xa);
    API_Func_8010704(0, 0x19, 1, 1, 9, 0xc);
    API_WaitFrames(2);
    API_ClearFlag(0x367);
}

void OvlFunc_956_20084a4(void)
{
    struct Actor *actor;
    int x;
    int z;

    actor = __MapActor_GetActor(0xc);
    x = actor->pos.x >> 20;
    if (x == 9) {
        z = actor->pos.z >> 20;
        if (z == 0xc) {
            {
                struct Actor *a = __MapActor_GetActor(0xc);
                __Actor_SetSpriteFlags(a, 0);
                a->flags = 2;
                a->__unk55 = 0;
                a->accel = 0x6666;
                a->speed = 0xcccc;
                API_Actor_TravelTo(a, a->pos.x, 0x80 << 11, a->pos.z);
            }
            {
                struct Actor *a = __MapActor_GetActor(0xb);
                a->flags = 2;
                a->accel = 0x6666;
                a->speed = 0xcccc;
                API_Actor_TravelTo(a, a->pos.x, 0x80 << 14, a->pos.z);
            }
            {
                struct Actor *a = __MapActor_GetActor(0xa);
                a->accel = 0x6666;
                a->speed = 0xcccc;
                API_Actor_TravelTo(a, a->pos.x, 0x80 << 11, a->pos.z);
            }

            API_SetFlag(0xda << 2);
            API_Func_8010704(0xf, 0xc, 1, 1, 0xd, z);
            API_Func_8010704(1, 0x19, 1, 1, x, z);
        }
    }
}

extern void OvlFunc_common1_2060(void);
extern void OvlFunc_956_20084a4(void);

void OvlFunc_956_200857c(void)
{
	OvlFunc_common1_2060();
	OvlFunc_956_20084a4();
}

extern struct Actor *__MapActor_GetActor(int);
extern void __SetFlagByte(int, int);

void OvlFunc_956_200858c(void)
{
    int x;

    x = __MapActor_GetActor(0xd)->pos.x >> 20;
    __SetFlagByte(0xdc << 2, x);
    API_Func_8010704(0x12, 0xa, 3, 1, 0x12, 0xb);
    API_Func_8010704(0x11, 0xb, 1, 1, x, 0xb);
}

void OvlFunc_956_20085d0(void) {}


void OvlFunc_956_20085d4(void) {
    OvlFunc_common1_2060();
}

extern int __Func_8011f54(int, int, int);

void OvlFunc_956_20085e0(void)
{
    int i;

    for (i = 0xf; i <= 0x11; i++) {
        struct Actor *actor = __MapActor_GetActor(i);

        if (__Func_8011f54(0, actor->pos.x, actor->pos.z) == 0) {
            actor->flags = 2;
            actor->__unk55 = 0;
            API_Func_8010704(0x53, 0xd, 1, 1, actor->pos.x >> 20, actor->pos.z >> 20);
            API_Func_8010704(0x53, 0xd, 1, 1, actor->pos.x >> 20, (actor->pos.z >> 20) + 0x34);
            API_SetFlag(i + 0x205);
        }
    }
}

#include "state/global_state.h"
struct Ovl_OvlFunc_956_200937c {
    char pad0[8];
    int x;
    int y;
    int z;
    int pad14;
    int unk18;
    int unk1c;
    char pad2[0x64 - 0x20];
    short s64;
    short s66;
};
extern GlobalState gState;

void OvlFunc_956_2008658(void) {
    unsigned int r2;
    struct Actor *a;
    int x;
    int z;
    int v;

    r2 = 0xfa;
    r2 <<= 1;
    a = __MapActor_GetActor(*(int *)((char *)&gState + r2));
    x = a->pos.x >> 20;
    z = a->pos.z >> 20;
    v = 0x17;
    if (x == 0x51 && z == 0xc) {
        if ((a->facing & 0xe000) == 0x4000) {
            v = 0xfd;
        }
        API_Func_8012078(0, x << 20, z << 20, v);
    }
}


int OvlFunc_956_20086a4(int arg0, int arg1)
{
    struct Actor *actor;
    int x0, z0;

    if (__Func_8012038(0, arg0, arg1) == 0xff)
        return -2;
    x0 = arg0 >> 20;
    z0 = arg1 >> 20;
    if ((actor = (struct Actor *)__MapActor_GetActor(0xf),
            actor->pos.x >> 20 == x0 && actor->pos.z >> 20 == z0) ||
        (actor = (struct Actor *)__MapActor_GetActor(0x10),
            actor->pos.x >> 20 == x0 && actor->pos.z >> 20 == z0) ||
        (actor = (struct Actor *)__MapActor_GetActor(0x11),
            actor->pos.x >> 20 == x0 && actor->pos.z >> 20 == z0))
        return -1;
    return 0;
}


int OvlFunc_956_2008714(int arg0, int arg1)
{
    if (OvlFunc_956_20086a4(arg0, arg1 - 0x180000) != 0)
        return -1;
    if (OvlFunc_956_20086a4(arg0, arg1 - 0x80000) != 0)
        return -1;
    if (OvlFunc_956_20086a4(arg0, arg1 + 0x80000) != 0)
        return -1;
    if (OvlFunc_956_20086a4(arg0, arg1 + 0x180000) != 0)
        return -1;
    return 0;
}

void OvlFunc_956_200876c(void)
{
    extern unsigned char CS956_State[] __asm__("gState");
    extern unsigned int CS956_Keys __asm__("gKeyHeld");
    extern unsigned short CS956_Directions[] __asm__(".Lm956_4c38");
    extern struct Actor *CS956_GetActor(unsigned int) __asm__("__MapActor_GetActor");
    extern void CS956_Translate(int, unsigned int, vec3_t *) __asm__("__vec3_translate");
    extern void CS956_SetAnim(struct Actor *, int) __asm__("__Actor_SetAnim");
    extern void CS956_WaitMovement(struct Actor *) __asm__("__Actor_WaitMovement");
    extern unsigned char *CS956_Alloc(int, int) __asm__("__galloc_ewram");
    extern void CS956_CameraTarget(void *, struct Actor *) __asm__("__Camera_SetTarget");
    extern int OvlFunc_956_2008714(int, int);
    extern void OvlFunc_common1_2060(void);
    extern void OvlFunc_956_20085e0(void);
    struct Actor *leader;
    struct Actor *block;
    int *leaderIdField;
    unsigned int stateBase;
    int leaderId;
    int x, z, nextX;
    int distance;
    int animation, leaderStep;
    int direction;
    unsigned char *scene;
    vec3_t projected;

    stateBase = (unsigned int)CS956_State;
    leaderIdField = (int *)(stateBase + 0x1f4);
    leader = CS956_GetActor(*leaderIdField);
    block = CS956_GetActor(31);
    distance = 0;
    direction = CS956_Directions[leader->facing >> 13];
    leaderId = *leaderIdField;
    projected.x = (leader->pos.x & ~0xfffff) + 0x80000;
    projected.y = leader->pos.y;
    projected.z = (leader->pos.z & ~0xfffff) + 0x80000;
    CS956_Translate(0x100000, direction, &projected);
    x = block->pos.x;
    z = block->pos.z;
    if (((projected.x - x >= 0) ? projected.x - x : x - projected.x) > 0x80000
        || ((projected.z - z >= 0) ? projected.z - z : z - projected.z) > 0x200000) {
        goto fail;
    }
    if (CS956_Keys & 0x20) {
        animation = 2;
        leaderStep = -8;
        do {
            nextX = x - 0x100000;
            if (OvlFunc_956_2008714(nextX, z) == 0) {
                ++distance;
                x = nextX;
            } else {
                break;
            }
        } while (1);
    } else if (CS956_Keys & 0x10) {
        animation = 3;
        leaderStep = 8;
        do {
            nextX = x + 0x100000;
            if (OvlFunc_956_2008714(nextX, z) == 0) {
                ++distance;
                x = nextX;
            } else {
                break;
            }
        } while (1);
    } else {
        return;
    }
    if (distance == 0) return;
    API_Func_8010704(0x4a, 8, 1, 4, block->pos.x >> 20, 9);
    API_Func_8010704(0x78, 0x3c, 8, 5, 0x4a, 0x3c);
    API_CutsceneStart();
    API_MapActor_SetAnim(leaderId, 8);
    API_CutsceneWait(6);
    block->speed = 0x8000;
    block->accel = 0x3333;
    CS956_SetAnim(block, animation);
    API_Actor_TravelTo(block, x, 0, z);
    API_CutsceneWait(6);
    API_MapActor_SetAnim(leaderId, 2);
    scene = CS956_Alloc(27, 0xccc);
    CS956_CameraTarget(*(void **)(scene + 0x1e0), block);
    __MapActor_SetSpeed(leaderId, 0x8000, 0x3333);
    API_PlaySound(0xef);
    CS956_SetAnim(leader, 2);
    API_Actor_TravelTo(leader, leader->pos.x + (distance * leaderStep) * 0x10000, 0, leader->pos.z);
    CS956_WaitMovement(leader);
    CS956_SetAnim(leader, 1);
    CS956_WaitMovement(block);
    if (x >= 0x5300000) {
        API_SetFlag(0x369);
        API_MapActor_SetAnim(31, 3);
        API_MapActor_TravelBy(31, 18, 6);
        API_CutsceneWait(30);
        CS956_SetAnim(block, 8);
        CS956_WaitMovement(block);
        block->flags = 2;
        API_Func_8010704(0x56, 10, 1, 2, 0x54, 10);
        API_Func_8010704(0x56, 9, 1, 1, 0x54, 12);
        API_PlaySound(0x120);
        API_PlaySound(0xf0);
    } else {
        CS956_SetAnim(block, 1);
        API_PlaySound(0x120);
        API_PlaySound(0xd5);
        API_Func_8010704(0x55, 9, 1, 4, x >> 20, 9);
        API_Func_8010704(0x55, 9, 1, 4, x >> 20, 0x3d);
    }
    API_CutsceneWait(15);
    API_CutsceneEnd();
    return;

fail:
    OvlFunc_common1_2060();
    OvlFunc_956_20085e0();
}

extern void __Func_80118c0(unsigned int);
extern void __Func_80118a8(unsigned int);
extern void __PlaySound(unsigned int);

unsigned int OvlFunc_956_2008a20(void) {
    __Func_80118c0(1);
    __Func_80118a8(2);
    __PlaySound(0x90 << 1);
    __PlaySound(0xd9);
    return 0;
}

extern unsigned char gScript_956__0200cc48[];
extern void __Actor_SetAnim(int, int);
extern void __Actor_SetScript(struct Actor *, void *);

void OvlFunc_956_2008a44(void)
{
    struct Actor *actor;

    actor = __MapActor_GetActor(0x1e);
    actor->__unk55 = 0;
    actor->accel = 0x19999;
    actor->speed = 0x19999;
    __Actor_SetAnim((int)actor, 2);
    __Actor_SetScript(actor, gScript_956__0200cc48);
    API_SetFlag(0x363);
}


void OvlFunc_956_2008a84(void) {
  int v;

  __Func_809ad90(0x1c);
  __SetFlag(0x361);
  __WaitFrames(10);
  v = *(int *)L5480;
  while (v != 1 && v != 3) {
    __WaitFrames(1);
    v = *(int *)L5480;
  }
  __WaitFrames(1);
  __StopTask(OvlFunc_956_200804c);
}

extern void __Actor_TravelTo(int a, int b, int c, int d);
extern void __Actor_WaitMovement(unsigned int arg0);
void OvlFunc_956_2008ad4(void)
{
    GlobalState *p = &gState;
    struct Actor *actor;
    int *id;
    unsigned int z;

    id = (int *)((char *)p + 0x1f4);
    actor = __MapActor_GetActor(*id);
    actor->accel = 0x80 << 9;
    actor->speed = 0x80 << 10;
    API_MapActor_Surprise(*id, 0x81 << 1);
    __Actor_SetAnim((int)actor, 5);
    z = actor->pos.z & 0xfff00000;
    API_Actor_TravelTo(actor, actor->pos.x, actor->pos.y, z + (0xc0 << 13));
    __Actor_WaitMovement((int)actor);
}


void OvlFunc_956_2008b30(void)
{
    unsigned char *base;
    unsigned char *actor;
    unsigned int z;

    base = (unsigned char *)&gState;
    actor = (unsigned char *)__MapActor_GetActor(*(unsigned int *)(base + (0xfa * 2)));
    if (*(int *)(actor + 8) > 0x2980000) {
        *(int *)(actor + 8) = 0x2980000;
    }
    *(int *)(actor + 0x34) = 0x10000;
    *(int *)(actor + 0x30) = 0x20000;
    __Actor_SetAnim((int)actor, 5);
    z = *(unsigned int *)(actor + 0x10) & 0xfff00000;
    __Actor_TravelTo((int)actor,
                    *(int *)(actor + 8),
                    *(int *)(actor + 0xc),
                    z + 0xc0000);
    __Actor_WaitMovement((int)actor);
    __MapActor_Surprise(*(unsigned int *)(base + (0xfa * 2)), 0x102);
    __Func_8092708(*(unsigned int *)(base + (0xfa * 2)), 6, 0);
}

void OvlFunc_956_2008ba0(void) {}

struct CS956_BattleState {
    unsigned char before22b[0x22b];
    unsigned char unk22b;
};
extern struct CS956_BattleState CS956_Battle __asm__("gState");
extern unsigned char Lconst_91[] __asm__(".Lconst_91");
__asm__(".equ .Lconst_91, 0x91");
extern void OvlFunc_common1_78(int);
extern void OvlFunc_common1_16f8(void);
extern int OvlFunc_common1_1814(int, int);
extern void OvlFunc_common1_1708(void);
extern void __StartMapBattle(int, int);
extern void __Func_8091f90(int, int);
extern void __Func_8091fa8(int, int);

struct CS956_RoomLeaderView {
    unsigned char pad0[0x1c2];
    short room;
    unsigned char pad1[0x1f4 - 0x1c4];
    int leaderId;
};

struct CS956_TransitionView {
    unsigned char pad0[0x1c0];
    int unk1c0;
    int unk1c4;
    int unk1c8;
};

extern unsigned char CS956_Message2073[] __asm__(".Lconst_2073");
__asm__(".equ .Lconst_2073, 0x2073");

void OvlFunc_956_2008ba4(int arg0)
{
    extern struct CS956_RoomLeaderView CS956_RLState __asm__("gState");
    extern struct CS956_TransitionView *iwram_3001ebc_tr __asm__("iwram_3001ebc");
    struct CS956_TransitionView *p;
    int id;
    int base;
    int offset;
    int msg;

    p = iwram_3001ebc_tr;
    id = CS956_RLState.leaderId;
    if (CS956_RLState.room == 2) {
        API_CutsceneStart();
        offset = arg0 * 3;
        base = (int)CS956_Message2073;
        API_MessageID(offset + base);
        API_ShowActorMessage_NoWait(arg0, 0);
        if (API_Func_8091c7c(id, 0) == 0) {
            msg = base + 1;
            API_MessageID(offset + msg);
            API_ActorMessage(arg0, 0);
            p->unk1c0 = 0x200;
            p->unk1c8 = 0xf;
            API_MapTransitionOut();
            API_WaitMapTransition();
            OvlFunc_common1_78(arg0);
            API_MapTransitionIn();
            API_WaitMapTransition();
        } else {
            msg = base + 2;
            API_MessageID(offset + msg);
            API_ActorMessage(arg0, 0);
        }
        API_CutsceneEnd();
    }
}

void OvlFunc_956_2008c5c(void)
{
    int val;
    int i;
    int stage;

    OvlFunc_common1_16f8();
    API_CutsceneStart();
    val = OvlFunc_common1_1814(3, 0x11);
    OvlFunc_common1_1708();
    stage = 4;
    for (i = 0; i < 10; i++) {
        API_MapActor_WaitScript(8);
    }
    API_MapActor_SetSpeed(8, 0x80 << 9, 0x80 << 8);
    API_MapActor_TravelToAnim(8, 0xbf << 3, 0xc0);
    API_MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
    API_MapActor_TravelToAnimWait(0, 0xbb << 3, 0xc0);
    API_MapActor_SetAnim(8, 1);
    API_MapActor_TurnToFaceActor(0, 8, 0);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(8, 3);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(0, 0x80 << 10, 0x80 << 9);
    API_MapActor_SetSpeed(8, 0x80 << 10, 0x80 << 9);
    API_MapActor_TravelToAnim(0, 0xbc << 3, 0xc0);
    API_MapActor_TravelToAnimWait(8, 0xbe << 3, 0xc0);
    API_MapActor_SetAnim(0, 0x10);
    API_MapActor_SetAnim(8, 9);
    API_CutsceneWait(10);
    __StartMapBattle(0x48, stage - val + 1);
    do {
        CS956_Battle.unk22b = 3;
    } while (0);
    __Func_8091f90((int)Lconst_91, 4);
    __Func_8091fa8((int)Lconst_91, 5);
    API_SetFlag(0x8d << 1);
}

extern unsigned int OvlFunc_common1_21c8(void);

void OvlFunc_956_2008d70(void)
{
    if (OvlFunc_common1_21c8())
        return;
    __Func_8093c00();
}


void OvlFunc_956_2008d84(void)
{
	if (OvlFunc_common1_21c8() == 0)
		__Func_8093c00();
	else
		OvlFunc_956_200857c();
}

extern unsigned char gScript_968__0200d488[];

void *ColosseumFinal3_GetEvents(void) {
    return (void *)gScript_968__0200d488;
}

struct ColosseumInitStateView {
    unsigned char prefix[0x1c2];
    short room;
    unsigned char gap[0x1f2 - 0x1c4];
    unsigned char partyMode;
};
static inline void ColosseumInitByte(unsigned char *p, int value) { *p = value; }
__asm__(".equ .LColosseumBattleFile, 0xe6");
extern unsigned char ColosseumBattleFile[] __asm__(".LColosseumBattleFile");
extern void __Func_8010704(int, int, int, int, int, int);
static inline void ColosseumCopyTiles(int srcX, int srcY, int width, int height, int dstX, int dstY)
{
    __Func_8010704(srcX, srcY, width, height, dstX, dstY);
}
static inline void ColosseumInitTiles(int a, int b, int c, int d, int e, int f)
{
    extern void __Func_8010788(int, int, int, int, int, int);
    __Func_8010788(a, b, c, d, e, f);
}

int ColosseumFinal3_MapInit(void)
{
    extern struct ColosseumInitStateView ColosseumInitState __asm__("gState");
    extern unsigned char *ColosseumInitField __asm__("iwram_3001ebc");
    extern struct Actor *__MapActor_GetActor(int);
    extern void ColosseumInitSpriteFlags(void *, int) __asm__("__Actor_SetSpriteFlags");
    extern void ColosseumInitActorAnim(void *, int) __asm__("__Actor_SetAnim");
    extern void ColosseumInitActorScript(void *, void *) __asm__("__Actor_SetScript");
    extern int __GetFlagByte(int);
    extern int __Func_8011f54(int, int, int);
    extern void ColosseumInitLayer(int) __asm__("__Func_80118c0");
    extern void __Func_8092950(int, int);
    extern void __Func_809ad90(int);
    extern void __DeleteFieldActor(int);
    extern void __MapActor_SetExtra(int, int);
    extern void __Func_8010788(int, int, int, int, int, int);
    extern void OvlFunc_956_2008658(void);
    extern void OvlFunc_956_200804c(void);
    extern void OvlFunc_956_2009474(int);
    extern void OvlFunc_956_2009a0c(int);
    extern int OvlFunc_common1_1608(int, int);
    extern int OvlFunc_common1_1ecc(int, int, int, int, int, int, int);
    extern void OvlFunc_common1_0(void);
    extern void OvlFunc_common1_78(int);
    extern void OvlFunc_common1_ea0(int);
    extern void OvlFunc_common1_1fb4(int);
    extern void OvlFunc_common1_148(void);
    extern void OvlFunc_common1_488(void);
    extern unsigned char ActorCmd_ARRAY_956__0200cbec[];
    struct Actor *actor;
    struct ColosseumInitStateView *state;
    int column, id, terrain;

    *(int *)(ColosseumInitField + 0x1c0) = 0x100;
    API_SetFlag(0x144);
    API_StartTask(OvlFunc_956_2008658, 0xc80);
    API_Func_8010704(0x4a, 0x3c, 8, 6, 0x78, 0x3c);
    actor = __MapActor_GetActor(9);
    ColosseumInitSpriteFlags(actor, 0);
    actor = __MapActor_GetActor(10);
    ColosseumInitSpriteFlags(actor, 0);
    ColosseumInitByte(&actor->__unk55, 0);
    actor->pos.y = 0x200000;
    actor = __MapActor_GetActor(11);
    ColosseumInitSpriteFlags(actor, 0);
    ColosseumInitByte(&actor->__unk55, 0);
    actor->pos.y = 0x40000;
    if (API_GetFlag(0x362)) {
        API_MapActor_SetAnim(9, 5);
        actor = __MapActor_GetActor(10);
        actor->pos.y = 0x40000;
        actor = __MapActor_GetActor(11);
        actor->pos.y = 0x200000;
        API_Func_8010704(15, 12, 1, 1, 13, 12);
    } else {
        actor = __MapActor_GetActor(9);
        actor->scale.x = 0x18000;
        actor->scale.y = 0x18000;
        if (API_GetFlag(0x367)) {
            API_Func_8010704(0, 24, 1, 1, 9, 12);
        } else {
            API_Func_8010704(0, 25, 1, 1, 9, 12);
        }
    }
    if (API_GetFlag(0x368)) {
        API_Func_8010704(15, 12, 1, 1, 13, 12);
        API_Func_8010704(1, 25, 1, 1, 9, 12);
        actor = __MapActor_GetActor(12);
        ColosseumInitSpriteFlags(actor, 0);
        ColosseumInitByte(&actor->__unk55, 0);
        actor->pos.y = 0x20000;
        ColosseumInitByte(&actor->flags, 2);
        actor = __MapActor_GetActor(10);
        actor->pos.y = 0x40000;
        ColosseumInitByte(&actor->flags, 2);
        actor = __MapActor_GetActor(11);
        actor->pos.y = 0x200000;
    }
    column = __GetFlagByte(0x370);
    if (column == 0) column = 19;
    actor = __MapActor_GetActor(13);
    actor->pos.x = (column << 20) + 0x80000;
    ColosseumInitByte(&actor->__unk55, 0);
    ColosseumInitByte(&actor->flags, 2);
    API_Func_8010704(18, 10, 3, 1, 18, 11);
    API_Func_8010704(17, 11, 1, 1, column, 11);
    for (id = 15; id <= 17; id++) {
        actor = __MapActor_GetActor(id);
        terrain = __Func_8011f54(0, actor->pos.x, actor->pos.z);
        if (actor->pos.y == 0 && terrain == 0) {
            ColosseumInitByte(&actor->flags, 2);
            ColosseumInitByte(&actor->__unk55, terrain);
            API_Func_8010704(0x53, 13, 1, 1, actor->pos.x >> 20, actor->pos.z >> 20);
            API_Func_8010704(0x53, 13, 1, 1, actor->pos.x >> 20, (actor->pos.z >> 20) + 0x34);
        }
    }
    if (API_GetFlag(0x361)) {
        for (id = 18; id <= 22; id++) {
            actor = __MapActor_GetActor(id);
            actor->flags = 2;
            ColosseumInitActorAnim(actor, 2);
            actor = __MapActor_GetActor(id + 5);
            actor->flags = 2;
            actor->__unk55 = 0;
            actor->pos.y = 0x200000;
            ColosseumInitActorAnim(actor, 10);
            ColosseumCopyTiles(0x4a, 12, 1, 1, 0x21 + (id - 18) * 2, 11);
        }
        API_MapActor_SetAnim(28, 10);
        __Func_809ad90(28);
    } else {
        for (id = 18; id <= 22; id++) {
            actor = __MapActor_GetActor(id);
            actor->flags = 2;
            actor = __MapActor_GetActor(id + 5);
            actor->flags = 2;
            actor->__unk55 = 0;
            actor->pos.y = 0x200000;
        }
        API_StartTask(OvlFunc_956_200804c, 0xc80);
    }
    if (API_GetFlag(0x360)) {
        API_MapActor_SetAnim(29, 4);
        API_Func_8010704(0x2f, 0x3d, 1, 4, 0x31, 0x3d);
    }
    if (API_GetFlag(0x363)) {
        ColosseumInitLayer(1);
        actor = __MapActor_GetActor(30);
        ColosseumInitByte(&actor->__unk55, 0);
        actor->pos.x = 0x46a0000;
        actor->pos.z = 0xb80000;
        ColosseumInitSpriteFlags(actor, 0);
        ColosseumInitActorAnim(actor, 3);
        ColosseumInitActorScript(actor, ActorCmd_ARRAY_956__0200cbec);
    } else {
        ColosseumInitLayer(2);
    }
    if (API_GetFlag(0x369)) {
        actor = __MapActor_GetActor(31);
        ColosseumInitActorAnim(actor, 8);
        ColosseumInitByte(&actor->flags, 2);
        API_Func_8010704(0x56, 10, 1, 2, 0x54, 10);
        API_Func_8010704(0x56, 9, 1, 1, 0x54, 12);
    } else {
        actor = __MapActor_GetActor(31);
        API_Func_8010704(0x55, 9, 1, 4, actor->pos.x >> 20, 9);
        API_Func_8010704(0x55, 9, 1, 4, actor->pos.x >> 20, 0x3d);
    }
    actor = __MapActor_GetActor(9);
    ColosseumInitByte(&actor->__unk55, 0);
    ColosseumInitByte(&actor->flags, 2);
    actor = __MapActor_GetActor(10);
    ColosseumInitByte(&actor->__unk55, 0);
    ColosseumInitByte(&actor->flags, 2);
    actor = __MapActor_GetActor(11);
    ColosseumInitByte(&actor->__unk55, 0);
    ColosseumInitByte(&actor->flags, 2);
    API_MapActor_SetAnim(8, 9);
    state = &ColosseumInitState;
    ColosseumInitByte(&state->partyMode, 0);
    OvlFunc_common1_1608(39, 3);
    OvlFunc_common1_1608(40, 17);
    __Func_8092950(8, 2);
    switch (state->room) {
    case 1:
        OvlFunc_common1_1ecc(0, 8, 6, 0x5e80000, 0xc00000, 39, 40);
        ColosseumInitTiles(0x7f, 0, 1, 2, 5, 2);
        __DeleteFieldActor(32);
        __DeleteFieldActor(33);
        __DeleteFieldActor(34);
        __DeleteFieldActor(35);
        __DeleteFieldActor(36);
        __DeleteFieldActor(37);
        __DeleteFieldActor(38);
        if (!API_GetFlag(0x109)) {
            API_PlaySound(17);
            OvlFunc_common1_78(0);
            OvlFunc_common1_0();
            __MapActor_SetExtra(1, 0);
            OvlFunc_common1_ea0(3);
        }
        __MapActor_SetExtra(1, 0);
        __MapActor_SetExtra(2, 0);
        __MapActor_SetExtra(3, 0);
        OvlFunc_common1_1fb4((int)ColosseumBattleFile);
        break;
    case 2:
        API_StartTask(OvlFunc_common1_148, 0xc80);
        __DeleteFieldActor(39);
        __DeleteFieldActor(40);
        if (!API_GetFlag(0x109)) {
            OvlFunc_common1_0();
            OvlFunc_common1_78(1);
            OvlFunc_common1_ea0(0);
        }
        break;
    case 3:
        if (!API_GetFlag(0x109)) {
            OvlFunc_956_2009a0c(32);
            OvlFunc_common1_488();
        }
        break;
    case 4:
        OvlFunc_956_2009474(1);
        API_Func_8091e9c(4);
        API_SetFlag(0x950);
        API_SetFlag(0x951);
        break;
    case 5:
        OvlFunc_956_2009474(-1);
        API_Func_8091e9c(5);
        API_SetFlag(0x950);
        break;
    }
    return 0;
}

int OvlFunc_956_200937c(struct Ovl_OvlFunc_956_200937c *obj) {
    obj->x += obj->s64 << 8;
    obj->y += obj->s66 << 8;
    obj->unk18 += 0x666;
    obj->unk1c += 0x666;
    obj->s64 += 5;
    obj->s66 -= 1;
    return 0;
}

extern int _modsi3_RAM(int, int);
extern int V5b80 __asm__(".Lm956_5b80");
extern unsigned char gScript_956__0200d96c[];

void OvlFunc_956_20093c0(void)
{
    struct Actor *actor;
    int actorId;
    int x;
    int y;

    actor = __MapActor_GetActor(0);
    x = actor->pos.x;
    actorId = 0x29;
    y = actor->pos.y;

    switch (_modsi3_RAM(++V5b80, 180)) {
    case 10:
        break;
    case 20:
        actorId = 0x2a;
        break;
    case 30:
        actorId = 0x2b;
        break;
    default:
        return;
    }

    actor = __MapActor_GetActor(actorId);
    if (actor == NULL)
        return;

    {
        struct Actor *leader = __MapActor_GetActor(0);
        if (leader != NULL) {
            API_MapActor_SetPos(actorId, leader->pos.x, leader->pos.z);
        }
    }

    __Actor_SetSpriteFlags(__MapActor_GetActor(actorId), 0);
    actor->__unk55 = 0;
    actor->scale.x = 0x6666;
    actor->scale.y = 0x6666;
    actor->pos.x = x + 0x40000;
    actor->pos.y = y + 0x40000;
    actor->prevPos.y = y + 0x40000;
    actor->waveCounter = 0x19;
    actor->__unk66 = 0x80;
    API_MapActor_SetBehavior(actorId, (int)gScript_956__0200d96c);
}
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_2009474.s");
void OvlFunc_956_2009a0c(int arg0)
{
    struct Actor *actor;
    int x;
    int z;
    int facing;

    actor = __MapActor_GetActor(arg0);
    x = *(short *)((char *)actor + 0xa);
    z = *(short *)((char *)actor + 0x12);

    API_CutsceneStart();

    API_MapActor_SetSpeed(arg0, 0x80 << 9, 0x80 << 8);
    API_MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
    API_MapActor_SetSpeed(1, 0x80 << 9, 0x80 << 8);
    API_MapActor_SetSpeed(2, 0x80 << 9, 0x80 << 8);
    API_MapActor_SetSpeed(3, 0x80 << 9, 0x80 << 8);

    API_MapActor_SetPos(0, x << 16, (z << 16) - 0x300000);
    API_MapActor_SetPos(1, (x << 16) - 0x100000, (z << 16) - 0x280000);
    API_MapActor_SetPos(2, (x << 16) + 0x100000, (z << 16) - 0x280000);
    API_MapActor_SetPos(3, x << 16, (z << 16) - 0x200000);
    API_MapActor_SetPos(arg0, x << 16, (z << 16) - 0x500000);

    actor = __MapActor_GetActor(0);
    facing = 0xc0 << 8;
    actor->facing = facing;

    API_SetCameraTarget(0, 0);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_MessageID(0x20ed);

    API_MapActor_DoAnim(arg0, 3);
    API_ActorMessage(arg0, 0);
    API_Func_80925cc(arg0, 2);
    API_ActorMessage(arg0, 0);
    API_Func_80925cc(arg0, 2);
    API_ActorMessage(arg0, 0);
    API_Func_80925cc(arg0, 2);
    API_ActorMessage(arg0, 0);

    API_MapActor_SetAnim(3, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(6);

    API_MapActor_SetAnim(1, 2);
    actor = __MapActor_GetActor(0);
    if (actor != NULL) {
        API_MapActor_TravelTo(1, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
    }

    API_MapActor_SetAnim(2, 2);
    actor = __MapActor_GetActor(0);
    if (actor != NULL) {
        API_MapActor_TravelTo(2, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
    }

    API_MapActor_SetAnim(3, 2);
    actor = __MapActor_GetActor(0);
    if (actor != NULL) {
        API_MapActor_TravelTo(3, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
    }

    API_MapActor_TravelToAnimWait(arg0, x - 0x10, z - 0x40);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetPos(2, 0, 0);
    API_MapActor_SetPos(3, 0, 0);
    API_MapActor_TravelToAnimWait(arg0, x - 0x10, z - 0x10);
    API_MapActor_TravelToAnimWait(arg0, x, z);
    API_Func_8092adc(arg0, facing, 10);

    API_CutsceneEnd();
}

void OvlFunc_common1_2c4(void);
int OvlFunc_common1_4cc(void *, int);
void OvlFunc_common1_1490(int, int, int);
void OvlFunc_common1_14f4(int, int, int);
void OvlFunc_common1_1550(void);
void OvlFunc_common1_588(void *, int);

void __CutsceneStart(void);
void __CutsceneEnd(void);
void __MessageID(int);
void __Func_80933d4(int, int);
void __Func_80933f8(int, int, int, int);
void __Func_8093530(void);
void __CutsceneWait(int);
void __ActorMessage(void *, int);
void __WaitFrames(int);
struct Actor *__MapActor_GetActor(int);
void __SetCameraTarget(int, int);

void OvlFunc_956_2009c20(void *arg0)
{
    unsigned int r3;
    unsigned int r2;
    int r6;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    if (*(short *)r3 == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    __CutsceneStart();
    r6 = OvlFunc_common1_4cc(arg0, 1);
    if (r6 == 0) {
        __MessageID(0x20b2);
        __Func_80933d4(0xc0 << 10, 0xc0 << 7);
        __Func_80933f8(0x98 << 16, -1, 0xc8 << 16, 1);
        __Func_8093530();
        __CutsceneWait(0x1e);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1490(0x68, 0x44, 0);
        __CutsceneWait(0x3c);
        OvlFunc_common1_14f4(0xa8, 0x60, 0xa);
        __CutsceneWait(0x46);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1550();
        __WaitFrames(2);

        {
            struct Actor *a = __MapActor_GetActor(0xa);
            a->__unk55 = r6;
            a->accel = 0x6666;
            a->speed = 0xcccc;
            API_Actor_TravelTo(a, a->pos.x, 0x40000, a->pos.z);
        }

        {
            struct Actor *a = __MapActor_GetActor(0xb);
            a->__unk55 = r6;
            a->accel = 0x6666;
            a->speed = 0xcccc;
            API_Actor_TravelTo(a, a->pos.x, 0x200000, a->pos.z);
            __Actor_WaitMovement(a);
            __CutsceneWait(0x2d);
        }

        {
            struct Actor *a = __MapActor_GetActor(0xa);
            a->__unk55 = r6;
            a->accel = 0x6666;
            a->speed = 0xcccc;
            API_Actor_TravelTo(a, a->pos.x, 0x200000, a->pos.z);
        }

        {
            struct Actor *a = __MapActor_GetActor(0xb);
            a->__unk55 = r6;
            a->accel = 0x6666;
            a->speed = 0xcccc;
            API_Actor_TravelTo(a, a->pos.x, 0x40000, a->pos.z);
            __Actor_WaitMovement(a);
            __CutsceneWait(0xf);
        }

        __ActorMessage(arg0, 0);
        OvlFunc_common1_1490(0x68, 0x44, 0);
        __CutsceneWait(0x1e);
        OvlFunc_common1_14f4(0xa8, 0x60, 0xa);
        __CutsceneWait(0x28);
        OvlFunc_common1_14f4(0x68, 0x44, 0xa);
        __CutsceneWait(0x46);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1550();
        __WaitFrames(2);
        __SetCameraTarget(0, 0);
        OvlFunc_common1_588(arg0, 1);
    } else if (r6 == 1) {
        __MessageID(0x20b1);
        __ActorMessage(arg0, 0);
    }

    OvlFunc_common1_5e4(r6, arg0, 1);
    __CutsceneEnd();
}
static inline int CS956_TurnActor(int a0, int a1, int a2)
{
    extern int CS956_Func_8092adc(int, int, int) __asm__("__Func_8092adc");
    return CS956_Func_8092adc(a0, a1, a2);
}

extern struct ColosseumInitStateView ColosseumInitState __asm__("gState");
extern int CS956_1078(int, int, int) __asm__("OvlFunc_common1_1078");
extern int CS956_15b8(int, int, int) __asm__("OvlFunc_common1_15b8");
extern int CS956_1578(int, int, int) __asm__("OvlFunc_common1_1578");
extern int CS956_1490(int, int, int) __asm__("OvlFunc_common1_1490");
extern int CS956_14f4(int, int, int) __asm__("OvlFunc_common1_14f4");
extern void OvlFunc_common1_1254(int);
extern void OvlFunc_common1_1314(int);
extern void __Func_8093fa0(void);
extern int OvlFunc_common1_5e4();

void OvlFunc_956_2009df8(int arg0)
{
    int result;

    if (ColosseumInitState.room == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    API_CutsceneStart();
    result = OvlFunc_common1_4cc((void *)arg0, 2);
    if (result == 0) {
        API_MessageID(0x20b7);
        API_Func_80933d4(0xc0 << 10, 0xc0 << 7);
        API_Func_80933f8(0xbc << 17, -1, 0x98 << 16, 1);
        API_Func_8093530();
        API_CutsceneWait(0x1e);
        API_ActorMessage(arg0, 0);
        CS956_1078(0, 0x8c << 1, 0xc8);
        API_MapActor_SetSpeed(0, 0xc0 << 9, 0xc0 << 8);
        CS956_15b8(0, 0x8c << 1, 0x98);
        CS956_15b8(0, 0x94 << 1, 0x98);
        API_CutsceneWait(10);

        __Func_8093c00();
        API_Func_80933f8(-1, -1, -1, 0);
        CS956_TurnActor(0, 0xc0 << 8, 0xf);
        __Func_8093c00();
        API_Func_80933f8(-1, -1, -1, 0);
        CS956_TurnActor(0, 0, 0xf);
        __Func_8093c00();
        API_Func_80933f8(-1, -1, -1, 0);
        API_Func_8092adc(0, 0x80 << 7, 0xf);

        API_ActorMessage(arg0, 0);
        CS956_1490(0x60, 0x28, 0);
        CS956_14f4(0x80, 0x28, 10);
        API_CutsceneWait(0x1e);
        CS956_14f4(0xa0, 0x28, 10);
        API_CutsceneWait(0x1e);
        CS956_14f4(0xa0, 0x48, 10);
        API_CutsceneWait(0x1e);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1550();
        OvlFunc_common1_1254(0);
        API_SetCameraTarget(0, 0);
        OvlFunc_common1_588((void *)arg0, 2);
    } else if (result == 1) {
        API_MessageID(0x20b6);
        API_ActorMessage(arg0, 0);
    }

    OvlFunc_common1_5e4(result, arg0, 2);
    API_CutsceneEnd();
}

static inline void CS956_Half(unsigned short *p, int v)
{
    *p = v;
}

void OvlFunc_956_2009f90(int arg0)
{
    extern unsigned char *iwram_3001ebc;
    int r6;
    unsigned char *p;

    if (ColosseumInitState.room == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    API_CutsceneStart();
    r6 = OvlFunc_common1_4cc((void *)arg0, 3);
    if (r6 == 0) {
        p = iwram_3001ebc;
        API_MessageID(0x20bb);
        OvlFunc_956_2008188();
        API_Func_80933d4(0xc0 << 10, 0xc0 << 7);
        API_Func_80933f8(0x9a << 18, -1, 0xb8 << 16, 1);
        API_Func_8093530();
        API_CutsceneWait(0x1e);
        API_ActorMessage(arg0, 0);
        OvlFunc_956_20081b4();
        API_CutsceneWait(0x3c);
        API_ActorMessage(arg0, 0);
        CS956_1078(0, 0xfc << 1, 0xc8);
        CS956_TurnActor(0, 0, 0);
        OvlFunc_956_20081c8();
        API_MapActor_SetSpeed(0, 0xc0 << 9, 0xc0 << 8);
        CS956_1578(0, 0xaa << 2, 0xc8);

        if (*(short *)(p + (0xc1 << 1)) != 5) {
            do {
                API_WaitFrames(1);
                r6++;
                if (r6 > 0xef)
                    break;
            } while (*(short *)(p + (0xc1 << 1)) != 5);
        }

        OvlFunc_956_2008b30();
        API_Func_8092adc(0, 0xc0 << 8, 0x14);
        API_MapActor_Emote(0, 0x103, 0x3c);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1254(0);
        API_SetCameraTarget(0, 0);
        OvlFunc_common1_588((void *)arg0, 3);
        CS956_Half((unsigned short *)(p + (0xc1 << 1)), 0);
    } else if (r6 == 1) {
        API_MessageID(0x20ba);
        API_ActorMessage(arg0, 0);
    }

    OvlFunc_common1_5e4(r6, arg0, 3);
    API_CutsceneEnd();
}

void OvlFunc_956_200a0f0(int arg0)
{
    int result;

    if (ColosseumInitState.room == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    API_CutsceneStart();
    result = OvlFunc_common1_4cc((void *)arg0, 4);
    if (result == 0) {
        struct Actor *a;
        int x;
        int y;
        int x1;
        int y1;

        API_MessageID(0x20bf);
        API_Func_80933d4(0xc0 << 10, 0xc0 << 7);
        API_Func_80933f8(0xd6 << 18, -1, 0xa8 << 16, 1);
        API_Func_8093530();
        API_CutsceneWait(0x1e);
        API_ActorMessage(arg0, 0);
        API_ActorMessage(arg0, 0);
        CS956_1078(0, 0xcc << 2, 0xc8);
        API_MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
        API_MapActor_TravelToAnimWait(0, 0xd2 << 2, 0xc8);
        CS956_TurnActor(0, 0xc0 << 8, 0x14);
        __Func_8093fa0();
        API_Func_80933f8(-1, -1, -1, 0);
        API_MapActor_SetSpeed(0, 0x80 << 8, 0x80 << 7);

        a = __MapActor_GetActor(0);
        y = a->pos.y;
        x = a->pos.x;
        API_MapActor_SetSpeed(0, 0x80 << 8, 0x80 << 7);

        API_MapActor_SetAnim(0, 0xa);
        y1 = y + (0xc0 << 11);
        API_Actor_TravelTo(a, x, y1, a->pos.z);
        __Actor_WaitMovement((unsigned int)a);

        API_MapActor_SetAnim(0, 0xe);
        x1 = x + (0x80 << 15);
        API_Actor_TravelTo(a, x1, y1, a->pos.z);
        __Actor_WaitMovement((unsigned int)a);

        API_MapActor_SetAnim(0, 0xa);
        y += 0xd8 << 14;
        API_Actor_TravelTo(a, x1, y, a->pos.z);
        __Actor_WaitMovement((unsigned int)a);

        API_MapActor_SetAnim(0, 0xf);
        x += 0xc0 << 14;
        API_Actor_TravelTo(a, x, y, a->pos.z);
        __Actor_WaitMovement((unsigned int)a);

        API_MapActor_SetAnim(0, 0xc);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1254(0);
        API_SetCameraTarget(0, 0);
        OvlFunc_common1_588((void *)arg0, 4);
    } else if (result == 1) {
        API_MessageID(0x20be);
        API_ActorMessage(arg0, 0);
    }

    OvlFunc_common1_5e4(result, arg0, 4);
    API_CutsceneEnd();
}

extern int __GetFieldActor(void);
extern void __Actor_Stop(void);
extern void __Actor_SetAnim(int a, int b);

void OvlFunc_956_200a2c4(int arg0, int arg1, int arg2) {
    int r5;
    r5 = __GetFieldActor();
    if (r5 != 0) {
        __Actor_Stop();
        __Actor_SetAnim(r5, 5);
        __Actor_TravelTo(r5, arg1 << 16, *(int *)((char *)r5 + 0xc), arg2 << 16);
    }
}
void OvlFunc_956_200a2f4(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    unsigned int r5;

    r5 = __GetFieldActor();
    if (r5 != 0) {
        __Actor_Stop();
        __Actor_SetAnim(r5, 5);
        __Actor_TravelTo(r5, arg1 << 16, *(unsigned int *)((char *)r5 + 0xc), arg2 << 16);
        __Actor_WaitMovement(r5);
        __Actor_SetAnim(r5, 1);
    }
}

void OvlFunc_956_200a330(int arg0)
{
    extern struct ColosseumInitStateView ColosseumInitState __asm__("gState");
    int result;
    int i;
    struct Actor *actor;

    if (ColosseumInitState.room == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    API_CutsceneStart();
    result = OvlFunc_common1_4cc((void *)arg0, 5);
    if (result == 0) {
        API_MessageID(0x20c3);
        API_Func_80933d4(0xc0 << 10, 0xc0 << 7);
        API_Func_80933f8(0x87 << 19, -1, 0xa8 << 16, 1);
        API_Func_8093530();
        API_CutsceneWait(0x1e);
        API_ActorMessage(arg0, 0);
        API_ActorMessage(arg0, 0);
        CS956_1078(0, 0x3d8, 0xb8);
        API_MapActor_SetSpeed(0, 0xc0 << 9, 0xc0 << 8);
        OvlFunc_956_200a2f4(0, 0x3e0, 0xb8);
        API_MapActor_SetSpeed(0, 0x4ccc, 0x2666);
        OvlFunc_956_200a2c4(0, 0x460, 0xb8);
        API_CutsceneWait(0x78);
        API_MapActor_Surprise(0, 0x101);
        API_CutsceneWait(0x78);
        OvlFunc_common1_1314(0);
        API_MapActor_SetAnim(0, 1);
        API_MapActor_Surprise(0, 0x100);
        API_MapActor_Emote(0, 0x105, 0);

        actor = __MapActor_GetActor(0);
        for (i = 0; i < 0x78; i++) {
            if (actor->pos.x > (0xf8 << 18))
                actor->pos.x -= 0x13333;
            API_WaitFrames(1);
        }

        API_MapActor_Emote(0, 0x103, 0x3c);
        OvlFunc_956_200a2c4(0, 0x460, 0xb8);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1314(0);
        ColosseumInitState.partyMode = 1;
        OvlFunc_common1_1254(0);
        API_SetCameraTarget(0, 0);
        OvlFunc_common1_588((void *)arg0, 5);
    } else if (result == 1) {
        API_MessageID(0x20c2);
        API_ActorMessage(arg0, 0);
    }

    OvlFunc_common1_5e4(result, arg0, 5);
    API_CutsceneEnd();
}
INCLUDE_ASM("asm/maps/colosseum_final_3/colosseum_final_3_data.s");
void OvlFunc_956_200a4d0(void *arg0)
{
    unsigned int r3;
    unsigned int r2;
    int r6;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    if (*(short *)r3 == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    __CutsceneStart();
    r6 = OvlFunc_common1_4cc(arg0, 6);
    if (r6 == 0) {
        __MessageID(0x20c7);
        __Func_80933d4(0xc0 << 10, 0xc0 << 7);
        __Func_80933f8(0xa1 << 19, -1, 0x98 << 16, 1);
        __Func_8093530();
        __CutsceneWait(0x1e);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1490(0xb4, 0x58, 0);
        __CutsceneWait(0x3c);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_14f4(0x20, 0x54, 10);
        __CutsceneWait(0x1e);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_14f4(0x60, 0x54, 0x1e);
        __CutsceneWait(0x3c);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1550();
        __CutsceneWait(2);
        __SetCameraTarget(0, 0);
        OvlFunc_common1_588(arg0, 6);
    } else if (r6 == 1) {
        __MessageID(0x20c6);
        __ActorMessage(arg0, 0);
    }

    OvlFunc_common1_5e4(r6, arg0, 6);
    __CutsceneEnd();
}
