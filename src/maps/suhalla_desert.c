/* rom_7eaf28 (overlay file 960): consolidated TU — suhalla_desert map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "dma.h"

extern void __Func_8091f14(int a, int b);

void OvlFunc_960_2008314(void) {
    __Func_8091f14(15, 45);
}

extern void __Actor_SetSpriteFlags(unsigned int arg0, int arg1);

unsigned int OvlFunc_960_2008324(unsigned int arg0)
{
    __Actor_SetSpriteFlags(arg0, 0);
    *(unsigned char *)(arg0 + 0x59) = 0;
    return 0;
}

unsigned int OvlFunc_960_200833c(unsigned int arg0) {
    unsigned char *ptr = (unsigned char *)arg0;
    ptr[0x54] ^= 1;
    return 1;
}

#include "state/global_state.h"
extern GlobalState gState;
extern unsigned char _EVENT_a4[], _EVENT_a5[], _EVENT_a6[];
extern unsigned char gOvl_02009488[];
extern unsigned char Lm960_14d0[] __asm__(".Lm960_14d0");
extern unsigned char Lm960_1548[] __asm__(".Lm960_1548");
extern unsigned char Lm960_1458[] __asm__(".Lm960_1458");

void *SuhallaDesert_GetEntrances(void) {
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_a4) return gOvl_02009488;
    if (ev == (int)_EVENT_a5) return Lm960_14d0;
    if (ev == (int)_EVENT_a6) return Lm960_1548;
    return Lm960_1458;
}


int SuhallaDesert_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020095c0[];

unsigned int SuhallaDesert_GetExits(void) {
    return (unsigned int)gOvl_020095c0;
}

extern unsigned char Lm960_1610[] __asm__(".Lm960_1610");
extern unsigned char gScript_930__020096b8[];
extern unsigned char Lm960_1790[] __asm__(".Lm960_1790");
extern unsigned char Lm960_15f8[] __asm__(".Lm960_15f8");
extern unsigned char ConstActors_a4[] __asm__(".Lconst_actors_a4");
__asm__(".equ .Lconst_actors_a4, 0xa4");
extern unsigned char ConstActors_a5[] __asm__(".Lconst_actors_a5");
__asm__(".equ .Lconst_actors_a5, 0xa5");
extern unsigned char ConstActors_a6[] __asm__(".Lconst_actors_a6");
__asm__(".equ .Lconst_actors_a6, 0xa6");

void *SuhallaDesert_GetActors(void) {
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)ConstActors_a4) return Lm960_1610;
    if (ev == (int)ConstActors_a5) return gScript_930__020096b8;
    if (ev == (int)ConstActors_a6) return Lm960_1790;
    return Lm960_15f8;
}
extern unsigned char *__MapActor_GetActor(int);
extern unsigned char *iwram_3001ebc;
extern unsigned int iwram_3001e40;
extern int __GetFlagByte(int);
extern void __SetFlagByte(int, int);

void OvlFunc_960_2008400(void)
{
    unsigned char *actor;
    unsigned char *p;
    unsigned short *ptr;
    unsigned short val;
    int flag;
    int off;
    int off2;

    off = 0xfa << 1;
    actor = __MapActor_GetActor(*(int *)((char *)&gState + off));
    p = iwram_3001ebc;
    *(unsigned short *)(actor + 6) = iwram_3001e40 << 12;
    flag = __GetFlagByte(0x210);
    if (flag == 0) {
    } else if (flag == 1) {
        off2 = 0xc1 << 1;
        ptr = (unsigned short *)(p + off2);
        val = 0x63;
        *ptr = val;
    } else {
        if (__GetFlag(0x106) == 0)
            flag -= 1;
    }
    __SetFlagByte(0x210, flag);
}
#include "actor.h"
#include "api.h"
void OvlFunc_960_2008464(int arg0)
{
    extern unsigned char gStateBytes[] __asm__("gState");
    extern void OvlFunc_960_2008400(void);
    unsigned char *gs;
    struct Actor *actor;
    short *target;
    unsigned char *base;
    int leaderId;
    int flag;
    gs = gStateBytes;
    leaderId = *(int *)(gs + (0xfa << 1));
    actor = (struct Actor *)__MapActor_GetActor(leaderId);
    __MapActor_GetActor(arg0);
    flag = API_GetFlag(0x20f);
    if (flag != 0)
        return;
    API_CutsceneStart();
    API_MapActor_Surprise(leaderId, 0x101);
    API_MapActor_SetAnim(leaderId, 9);
    target = (short *)__MapActor_GetActor(arg0);
    if (target != 0) {
        API_MapActor_TravelTo(leaderId, target[5], target[9]);
    }
    API_MapActor_WaitMovement(leaderId);
    API_PlaySound(0xf4);
    API_StartTask(OvlFunc_960_2008400, 0xc8 << 4);
    actor->__unk55 = flag;
    API_Actor_TravelTo(actor, actor->pos.x, actor->pos.y + (0x80 << 14), actor->pos.z);
    API_MapActor_WaitMovement(leaderId);
    actor->motion.y = flag;
    actor->__unk55 = 4;
    *(gs + (0xf9 << 1)) = 2;
    API_SetFlag(0x20f);
    __SetFlagByte(0x86 << 2, arg0);
    __SetFlagByte(0x84 << 2, 0xb4);
    API_CutsceneEnd();
    base = iwram_3001ebc;
    *(u16 *)(base + (0xbe << 1)) = flag;
}

extern void OvlFunc_960_2008464(int);

void OvlFunc_960_2008558(void) {
    OvlFunc_960_2008464(8);
}


void OvlFunc_960_2008564(void) {
    OvlFunc_960_2008464(9);
}


void OvlFunc_960_2008570(void) {
    OvlFunc_960_2008464(10);
}


void OvlFunc_960_200857c(void) {
    OvlFunc_960_2008464(11);
}


void OvlFunc_960_2008588(void) {
    OvlFunc_960_2008464(12);
}

struct SuhallaStateActorView {
    unsigned char pad[0x1f4];
    int actorId;
};
extern struct SuhallaStateActorView gSuhallaStateActor __asm__("gState");

static inline void SuhallaStoreByte(unsigned char *p, int value)
{
    *p = value;
}

#define SUHALLA_QUEUE_DMA(queue, dest_val, src_expr)                 \
    do {                                                             \
        u32 savedIme = REG_IME;                                      \
        s32 count;                                                   \
        u32 *task;                                                   \
        s32 slot;                                                    \
        SET_IO(REG_IME, REG_ADDR_IME);                               \
        count = *(queue);                                            \
        if (count < 32) {                                            \
            slot = count * 12;                                       \
            count++;                                                 \
            task = (u32 *)(slot + (u32)(queue));                     \
            *(queue) = count;                                        \
            task++;                                                  \
            *task++ = (u32)(src_expr);                               \
            *task++ = (dest_val);                                    \
            *task = 0x20000;                                         \
        }                                                            \
        SET_IO(REG_IME, savedIme);                                   \
    } while (0)

void OvlFunc_960_2008594(int actorId)
{
    struct Actor *leader = (struct Actor *)__MapActor_GetActor(gSuhallaStateActor.actorId);
    struct Actor *tornado = (struct Actor *)__MapActor_GetActor(actorId);
    int alreadyActive = API_GetFlag(0x340);
    int savedX = *(short *)((unsigned char *)leader + 0xa);
    int savedZ = *(short *)((unsigned char *)leader + 0x12);
    int i, next;
    struct Actor *actor;
    unsigned char *flags;

    API_CutsceneStart();
    API_PlaySound(0xf4);
    i = 0;
    do {
        tornado->scale.x = 0x800 + (i << 11);
        tornado->scale.y = 0x1000 + (i << 12);
        if (!alreadyActive) {
            u16 *queue = (u16 *)&gDMATaskCount;
            next = i + 1;
            SUHALLA_QUEUE_DMA(queue, REG_ADDR_BLDALPHA, ((16 - next) << 8) | next);
        } else {
            next = i + 1;
        }
        API_WaitFrames(1);
        i = next;
    } while (i <= 15);
    API_SetFlag(0x1fe + actorId);
    API_SetFlag(0x340);
    if (API_GetFlag(0x9a0) && !API_GetFlag(0x9b6)) {
        API_SetFlag(0x9b6);
        API_MapActor_SetSpeed(13, 0x10000, 0x8000);
        API_MapActor_SetSpeed(0, 0x18000, 0xc000);
        actor = (struct Actor *)__MapActor_GetActor(0);
        if (actor)
            API_MapActor_SetPos(13, actor->pos.x, actor->pos.z);
        API_MapActor_Face(13, 0x4000, 0);
        flags = (unsigned char *)__MapActor_GetActor(13);
        flags += 0x5a;
        *flags = 0xfe & *flags;
        API_MapActor_TravelToAnim(13, savedX, savedZ - 16);
        flags = (unsigned char *)__MapActor_GetActor(0);
        flags += 0x5a;
        *flags = 0xfe & *flags;
        API_MapActor_TravelToAnimWait(0, savedX + 8, savedZ - 40);
        API_CutsceneWait(1);
        flags = (unsigned char *)__MapActor_GetActor(0);
        flags += 0x5a;
        SuhallaStoreByte(flags, 1 | *flags);
        API_MapActor_SetAnim(13, 1);
        API_Func_8092adc(0, 0x4000, 0);
        API_MessageID(0x262e);
        API_MapActor_Emote(13, 0x106, 60);
        API_ActorMessage(13, 0);
        API_MapActor_Emote(13, 0x102, 60);
        API_ActorMessage(13, 0);
        API_Func_8092adc(13, 0x2000, 0);
        API_MapActor_Emote(13, 0x101, 60);
        API_ActorMessage(13, 0);
        API_CutsceneWait(10);
        API_Func_8092adc(13, 0xc000, 30);
        API_Func_80925cc(13, 2);
        API_ActorMessage(13, 0);
        API_MapActor_DoAnim(13, 3);
        API_ActorMessage(13, 0);
        API_MapActor_SetSpeed(13, 0x10000, 0x8000);
        API_MapActor_SetAnim(13, 2);
        actor = (struct Actor *)__MapActor_GetActor(0);
        if (actor)
            API_MapActor_TravelTo(13, *(short *)((unsigned char *)actor + 0xa), *(short *)((unsigned char *)actor + 0x12));
        API_MapActor_WaitMovement(13);
        API_MapActor_SetPos(13, 0, 0);
    }
    API_CutsceneEnd();
}

extern void OvlFunc_960_2008594(int);

void OvlFunc_960_20087fc(void) {
    OvlFunc_960_2008594(8);
}


void OvlFunc_960_2008808(void) {
    OvlFunc_960_2008594(9);
}


void OvlFunc_960_2008814(void) {
    OvlFunc_960_2008594(10);
}


void OvlFunc_960_2008820(void) {
    OvlFunc_960_2008594(11);
}


void OvlFunc_960_200882c(void) {
    OvlFunc_960_2008594(12);
}


extern int __GetFlag(int);
extern void __SetFlag(int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int);
extern void __MessageID(int);
extern unsigned char *__MapActor_GetActor(int);
extern void __MapActor_SetPos(int, int, int);
extern void __MapActor_Face(int, int, int);
extern void __MapActor_TravelToAnimWait(int, int, int);
extern void __MapActor_TravelTo(int, int, int);
extern void __MapActor_WaitMovement(int);
extern void __MapActor_Emote(int, int, int);
extern void __MapActor_DoAnim(int, int);
extern void __MapActor_SetAnim(int, int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __ActorMessage(int, int);
extern void __Func_8092adc(int, int, int);
extern void __Func_80925cc(int, int);
extern void __Func_8093054(int, int);

void OvlFunc_960_2008838(void)
{
    struct Actor *actor;

    if (__GetFlag(0x9a0) == 0)
        return;
    if (__GetFlag(0x1b7) != 0)
        return;
    if (__GetFlag(0x9b0) == 0)
        return;

    __SetFlag(0x9b5);
    __CutsceneStart();
    __MessageID(0x2633);

    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0)
        __MapActor_SetPos(0xd, actor->pos.x, actor->pos.z);

    API_MapActor_Face(0xd, 0xc000, 0);
    API_MapActor_TravelToAnimWait(0, 0x1b8, 0x4e8);
    API_Func_8092adc(0xd, 0x4000, 0);
    API_MapActor_TravelToAnimWait(0, 0x1bc, 0x4d8);
    API_MapActor_Emote(0, 0x100, 0x28);
    API_Func_8092adc(0, 0x4000, 0x1e);
    __MapActor_DoAnim(0xd, 4);
    __ActorMessage(0xd, 0);
    API_MapActor_Emote(0, 0x105, 0x3c);
    API_MapActor_Emote(0xd, 0x105, 0x3c);
    __ActorMessage(0xd, 0);
    __CutsceneWait(0x1e);
    __Func_80925cc(0xd, 2);
    __ActorMessage(0xd, 0);
    API_Func_8092adc(0xd, 0xc000, 0x1e);
    __Func_8093054(0xd, 0);
    __CutsceneWait(0x1e);
    API_MapActor_Emote(0xd, 0x106, 0x3c);
    __ActorMessage(0xd, 0);
    __MapActor_DoAnim(0xd, 3);
    __ActorMessage(0xd, 0);
    API_MapActor_SetSpeed(0xd, 0xb333, 0x5999);
    API_MapActor_TravelToAnimWait(0xd, 0x1b8, 0x4e8);
    __ActorMessage(0xd, 0);
    __MapActor_DoAnim(0, 3);
    __MapActor_SetAnim(0xd, 2);

    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0)
        __MapActor_TravelTo(0xd, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));

    __MapActor_WaitMovement(0xd);
    __MapActor_SetPos(0xd, 0, 0);
    __CutsceneEnd();
}
#include "math.h"
extern int __Random(void);
extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);

struct SuhallaEffectData {
    int unk0;
    int unk4;
    int unk8;
    int unkc;
    int unk10;
    int unk14;
    short unk18;
    short unk1a;
    int unk1c;
    short unk20;
    short unk22;
    int unk24;
};

int OvlFunc_960_20089cc(struct Actor *arg0)
{
    struct SuhallaEffectData data;
    struct Actor *actor;
    int off;
    int zero;
    int dx;
    unsigned int flags;

    off = 0xfa << 1;
    actor = (struct Actor *)__MapActor_GetActor(*(int *)((char *)&gState + off));
    arg0->accel = 0x80 << 7;
    arg0->speed = 0xc0 << 9;
    zero = 0;
    arg0->__unk55 = zero;
    __Actor_SetSpriteFlags((unsigned int)arg0, 0);
    arg0->visible ^= 1;
    if (__GetFlag(0x82 << 1) != 0) {
        arg0->prevPos.x = 0x80 << 24;
        arg0->prevPos.y = 0x80 << 24;
        arg0->prevPos.z = 0x80 << 24;
    } else {
        arg0->prevPos.x = actor->pos.x;
        arg0->prevPos.y = actor->floorPos;
        arg0->prevPos.z = actor->pos.z;
        dx = ABS(arg0->pos.x - actor->pos.x);
        if (dx + ABS(arg0->pos.z - actor->pos.z) < (0x80 << 12)) {
            unsigned char *p = iwram_3001ebc;
            if (actor->__unk55 != 0) {
                unsigned short *ptr = (unsigned short *)(p + (0xc1 << 1));
                unsigned short val = 0x37;
                *ptr = val;
            }
            arg0->__unk55 = 3;
            arg0->prevPos.x = actor->pos.x;
            arg0->prevPos.y = actor->pos.y;
            arg0->prevPos.z = actor->pos.z;
        }
    }
    flags = iwram_3001e40 & 7;
    if (flags == 0) {
        data.unk8 = 0xcccc;
        data.unkc = 0xcccc;
        data.unk22 = (short)((((unsigned int)__Random() << 12) >> 16) + (0xf8 << 8));
        OvlFunc_common0_10c(arg0->pos.x, arg0->pos.y, arg0->pos.z, 0, flags, flags, 0x880001, &data);
    }
    return 1;
}
extern int __GetFlag(int);
extern void __SetFlag(int);
extern void __MapActor_SetBehavior(int, void *);
extern void __MapActor_SetPos(int, int, int);
typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_960__020097a8[];

void OvlFunc_960_2008adc(void) {
    int x = 0x780000;
    int y = 0x3380000;

    if (__GetFlag(0x9b7) == 0) {
        __SetFlag(0x20e);
        __MapActor_SetPos(0xc, x, y);
        __MapActor_SetBehavior(0xc, gScript_960__020097a8);
    }
}

extern unsigned int iwram_3001f30;

void OvlFunc_960_2008b14(void) {
    unsigned int ptr;
    ptr = iwram_3001f30;
    *((unsigned char *)(ptr + 0x34)) = 1;
}

extern unsigned char Const_A5[] __asm__(".Lconst_a5");
extern void __ClearFlag(int);
extern void __StartMapBattle(int, int);
extern void __MapActor_SetIdle(int);

INCLUDE_ASM("asm/maps/suhalla_desert/OvlFunc_960_2008b24.s");

extern void __PlaySound(int);
extern void __Func_80933f8(int, int, int, int);
extern void __WaitFrames(int);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __SetDestMap(int, int);
extern unsigned char Lconst_2[] __asm__(".Lconst_2");
__asm__(".equ .Lconst_2, 2");

void OvlFunc_960_2008c00(void)
{
    int flagByte;
    int off;
    unsigned char *actorId;
    struct Actor *actor1;
    struct Actor *actor2;
    int i;
    int ev;

    flagByte = __GetFlagByte(0x86 << 2);
    off = 0xfa << 1;
    actorId = (unsigned char *)((char *)&gState + off);
    actor1 = (struct Actor *)__MapActor_GetActor(*(int *)actorId);
    actor2 = (struct Actor *)__MapActor_GetActor(flagByte);
    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_PlaySound(0xdb);
    __Actor_SetSpriteFlags(*(unsigned int *)actorId, 0);
    actor2->__unk55 = 0;
    actor1->__unk55 = 0;
    actor1->motion.y = 0;
    actor1->__unk61 = 1;
    actor2->__unk61 = 1;
    for (i = 0x3b; i >= 0; i--) {
        actor1->motion.y += 0x3333;
        actor2->motion.y += 0x3333;
        API_WaitFrames(1);
    }
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_CutsceneEnd();
    API_SetFlag(0x91 << 1);
    off = 0xe0 << 1;
    ev = *(short *)((char *)&gState + off);
    if (ev == (int)Const_A5 && __GetFlagByte(0x86 << 2) == 11) {
        __SetDestMap((int)Lconst_2, 0x4d);
    } else {
        __SetDestMap((int)Lconst_2, 0x1b);
    }
}

extern unsigned int iwram_3001e40;

void OvlFunc_960_2008ce4(void)
{
    unsigned short v;
    unsigned int u;

    v = iwram_3001e40 & 0x3f;
    if (v > 0x1f)
        v = 0x40 - v;
    u = ((unsigned int)v >> 1) + 7;
    u |= (u << 10) | (u << 5);
    *(volatile unsigned short *)0x500019e = (u << 16) >> 16;
}

extern void __Func_8010704(int, int, int, int, int, int);
extern void __Func_808edac(int, int, int);
extern void __StopTask(void *);
extern unsigned short Lm960_1a00 __asm__(".Lm960_1a00");

int OvlFunc_960_2008d24(void)
{
    int off;

    off = 0xe0 << 1;
    if (*(short *)((char *)&gState + off) == (int)Const_A5) {
        ((unsigned char *)__MapActor_GetActor(0xe))[0x23] = 2;
        ((unsigned char *)__MapActor_GetActor(0xe))[0x55] = 3;
        __MapActor_SetPos(0xe, 0, 0);
        API_Func_8010704(0x10, 0x2c, 1, 1, 0xf, 0x2c);
        __Func_808edac(100, 0, 0);
        API_Func_8010704(0xc, 0x47, 1, 1, 0x7f, 0x7f);
        API_Func_8010704(0xb, 0x47, 1, 1, 0xc, 0x47);
        __StopTask(OvlFunc_960_2008ce4);
        SET_IO(*(volatile unsigned short *)0x500019e, Lm960_1a00);
    }
}
extern unsigned char Const_A5[] __asm__(".Lconst_a5");
__asm__(".equ .Lconst_a5, 0xa5");

extern void OvlFunc_960_2008ce4(void);

extern unsigned char *__MapActor_GetActor(int);
extern void __MapActor_SetPos(int, int, int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __Func_808edac(int, int, int);
extern void __Func_808ee0c(void);
extern void __StartTask(void *, int);

static inline void MapActor_SetPos(int actor, int x, int y) {
    __MapActor_SetPos(actor, x << 16, y << 18);
}

static inline void Func_808edac(int a, int b, int c)
{
    __Func_808edac(a, -b, -c);
}

int OvlFunc_960_2008dc8(void)
{
    int off;
    int zero;
    unsigned int t1, t2;
    unsigned int t3, t4;

    off = 0xe0 << 1;
    if (*(short *)((char *)&gState + off) == (int)Const_A5) {
        ((unsigned char *)__MapActor_GetActor(0xe))[0x23] = 2;
        zero = 0;
        ((unsigned char *)__MapActor_GetActor(0xe))[0x55] = zero;
        MapActor_SetPos(0xe, 0xf8, 0xb2);
        t1 = 0xf;
        t2 = 0x2c;
        __Func_8010704(0x1f, 0x5f, 1, 1, t1, t2);
        Func_808edac(100, 1, 1);
        __Func_808ee0c();
        t3 = 0xc;
        t4 = 0x47;
        __Func_8010704(0x7f, 0x7f, 1, 1, t3, t4);
        __StartTask(OvlFunc_960_2008ce4, 0xc8 << 4);
    }
}
extern unsigned char _EVENT_a6[];
extern unsigned char Lm960_19c4[] __asm__(".Lm960_19c4");
extern unsigned char Lm960_17b4[] __asm__(".Lm960_17b4");

int SuhallaDesert_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_a6) return (int)Lm960_19c4;
    return (int)Lm960_17b4;
}
extern unsigned char iwram_3001e70_raw[] __asm__("iwram_3001e70");
extern void __StartTask(void *, int);
extern void __PlaySound(int);
extern void OvlFunc_960_2008f50(void);
extern void OvlFunc_960_2009094(void);
extern unsigned short Lm960_1a00 __asm__(".Lm960_1a00");

int SuhallaDesert_MapInit(void)
{
    unsigned char *r7;
    unsigned int *p;
    unsigned int *dst;
    int ev;
    int off;

    r7 = *(unsigned char **)(iwram_3001e70_raw + 0);
    p = *(unsigned int **)(iwram_3001e70_raw + 0x4c);
    off = 0xe0 << 1;
    dst = (unsigned int *)((char *)p + off);
    *dst = 0x201;
    if (__GetFlagByte(0x84 << 2) != 0) {
        off = 0xf9 << 1;
        *(unsigned char *)((char *)&gState + off) = 2;
        __StartTask(OvlFunc_960_2008400, 0xc8 << 4);
    }
    off = 0xe0 << 1;
    ev = *(short *)((char *)&gState + off);
    if (ev == (int)ConstActors_a4 || ev == (int)Const_A5) {
        Lm960_1a00 = *(unsigned short *)0x500019e;
        OvlFunc_960_2008d24();
    }
    off = 0xe0 << 1;
    ev = *(short *)((char *)&gState + off);
    if (ev == (int)ConstActors_a4) {
        OvlFunc_960_2008f50();
    } else if (ev == (int)Const_A5) {
        OvlFunc_960_2009094();
    } else {
        __PlaySound(0x90 << 1);
    }
    off = 0xe1 << 1;
    if (*(short *)((char *)&gState + off) == 0) {
        *(unsigned short *)(r7 + 0x14) &= 0xfdff;
    }
    return 0;
}
extern void __Func_8091ff0(int);

extern unsigned char *__MapActor_GetActor(int);
extern void __Func_8091ff0(int);

#ifndef SUHALLA_QUEUE_DMA
#define SUHALLA_QUEUE_DMA(queue, dest_val, src_expr)                 \
    do {                                                             \
        u32 savedIme = REG_IME;                                      \
        s32 count;                                                   \
        u32 *task;                                                   \
        s32 slot;                                                    \
        SET_IO(REG_IME, REG_ADDR_IME);                               \
        count = *(queue);                                            \
        if (count < 32) {                                            \
            slot = count * 12;                                       \
            count++;                                                 \
            task = (u32 *)(slot + (u32)(queue));                     \
            *(queue) = count;                                        \
            task++;                                                  \
            *task++ = (u32)(src_expr);                               \
            *task++ = (dest_val);                                    \
            *task = 0x20000;                                         \
        }                                                            \
        SET_IO(REG_IME, savedIme);                                   \
    } while (0)
#endif

void OvlFunc_960_2008f50(void)
{
    int val;
    int i;
    unsigned char *actor;
    u16 *queue;

    val = 0;
    if (API_GetFlag(0x301)) {
        API_SetFlag(0x206);
    }
    if (API_GetFlag(0x302)) {
        API_SetFlag(0x207);
    }
    if (API_GetFlag(0x303)) {
        API_SetFlag(0x208);
    }
    if (API_GetFlag(0x304)) {
        API_SetFlag(0x209);
    }
    if (API_GetFlag(0x305)) {
        API_SetFlag(0x20a);
    }

    for (i = 8; i <= 12; i++) {
        actor = (unsigned char *)__MapActor_GetActor(i);
        if (actor != 0) {
            if (API_GetFlag(0x109) == 0) {
                *(int *)(actor + 0x18) = 0x800;
                *(int *)(actor + 0x1c) = 0x800;
            }
            *(unsigned char *)(*(unsigned char **)(actor + 0x50) + 0x26) = 0;
        }
    }

    queue = (u16 *)&gDMATaskCount;
    SUHALLA_QUEUE_DMA(queue, REG_ADDR_BLDCNT, 0x3f42);

    if (API_GetFlag(0x340)) {
        val = 0x10;
        __Func_8091ff0(0xf4);
    }

    SUHALLA_QUEUE_DMA(queue, REG_ADDR_BLDALPHA, ((0x10 - val) << 8) | val);
}


extern unsigned char *__MapActor_GetActor(int);
extern void __Func_8091ff0(int);

#ifndef SUHALLA_QUEUE_DMA
#define SUHALLA_QUEUE_DMA(queue, dest_val, src_expr)                 \
    do {                                                             \
        u32 savedIme = REG_IME;                                      \
        s32 count;                                                   \
        u32 *task;                                                   \
        s32 slot;                                                    \
        SET_IO(REG_IME, REG_ADDR_IME);                               \
        count = *(queue);                                            \
        if (count < 32) {                                            \
            slot = count * 12;                                       \
            count++;                                                 \
            task = (u32 *)(slot + (u32)(queue));                     \
            *(queue) = count;                                        \
            task++;                                                  \
            *task++ = (u32)(src_expr);                               \
            *task++ = (dest_val);                                    \
            *task = 0x20000;                                         \
        }                                                            \
        SET_IO(REG_IME, savedIme);                                   \
    } while (0)
#endif

void OvlFunc_960_2009094(void)
{
    int val;
    int i;
    struct Actor *actor;
    struct Sprite *sprite;
    u16 *queue;

    val = 0;
    if (API_GetFlag(0x311)) {
        API_SetFlag(0x206);
    }
    if (API_GetFlag(0x312)) {
        API_SetFlag(0x207);
    }
    if (API_GetFlag(0x313)) {
        API_SetFlag(0x208);
    }

    for (i = 8; i <= 10; i++) {
        actor = (struct Actor *)__MapActor_GetActor(i);
        if (actor != 0) {
            if (API_GetFlag(0x109) == 0) {
                actor->scale.x = 0x800;
                actor->scale.y = 0x800;
            }
            sprite = actor->sprite;
            sprite->flags = 0;
        }
    }

    actor = (struct Actor *)__MapActor_GetActor(11);
    if (actor != 0) {
        sprite = actor->sprite;
        if (sprite->layers[0] != 0) {
            sprite->layers[0]->colorswap = 10;
        }
        sprite->visible = 1;
        sprite->flags = 0;
    }

    if (API_GetFlag(0x315)) {
        API_SetFlag(0x9b7);
    }

    queue = (u16 *)&gDMATaskCount;
    SUHALLA_QUEUE_DMA(queue, REG_ADDR_BLDCNT, 0x3f42);

    if (API_GetFlag(0x340)) {
        val = 0x10;
        __Func_8091ff0(0xf4);
    }

    SUHALLA_QUEUE_DMA(queue, REG_ADDR_BLDALPHA, ((0x10 - val) << 8) | val);
}

INCLUDE_ASM("asm/maps/suhalla_desert/suhalla_desert_data.s");
