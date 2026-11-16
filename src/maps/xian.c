/* rom_7b6668 (overlay file 928): consolidated TU — xian map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"
#include "sprite.h"

extern void __Func_80955b0(int a, int b, int c);
extern unsigned char iwram_3001ebc[];

void OvlFunc_928_2008314(void) {
    __Func_80955b0(0x16, 1, 2);
}

void OvlFunc_928_2008324(void)
{
  unsigned char *p;
  unsigned char *flags;
  int new_var;
  p = __MapActor_GetActor(0);
  if ((*((short *) (p + 0xe))) > 0x1f)
  {
    p = __MapActor_GetActor(0x14);
    flags = p + 0x23;
    new_var = (*flags) | 2;
    *flags = new_var;
  }
  else
  {
    p = __MapActor_GetActor(0x14);
    flags = p + 0x23;
    *flags = (*flags) & 0xfd;
  }
}

extern void *__MapActor_GetActor(int);

void OvlFunc_928_2008358(void)
{
    unsigned char *r0 = (unsigned char *)__MapActor_GetActor(0x13);
    unsigned short *r2 = *(unsigned short **)(r0 + 0x50);
    *(unsigned short *)((char *)r2 + 0x1e) += 0x1400;
}

extern unsigned char Lm928_1740[] __asm__(".Lm928_1740");
extern unsigned int iwram_3001e40;
extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);

struct XianEffectData {
    int unk0;
    int unk4;
    int unk8;
    int unkc;
    int unk10;
    int unk14;
    short unk18;
    short unk1a;
    void *unk1c;
    int unk20;
    int unk24;
};

void OvlFunc_928_2008370(void)
{
    struct Actor *actor = (struct Actor *)__MapActor_GetActor(0xe);
    struct XianEffectData data;

    if ((iwram_3001e40 & 3) == 0) {
        data.unk0 = 1;
        data.unk4 = 9;
        data.unk18 = 0xa9;
        data.unk1c = Lm928_1740;
        OvlFunc_common0_10c(actor->pos.x, actor->pos.y, actor->pos.z - 0x10000, 0,
            -0x10000, -0x10000, 0xcc << 14, &data);
    }
}

extern int Func_8000948(int);

int OvlFunc_928_20083cc(int *a, int *b)
{
  int dx;
  int dy;
  int dz;
  int mag;
  int new_var;
  int (*fp)(int);
  dx = ((*(a++)) - (*(b++))) >> 16;
  if (1)
  {
    dy = ((*(a++)) - (*(b++))) >> 16;
    dz = ((*a) - (*b)) >> 16;
    mag = ((dx * dx) + ((float) (dy * dy))) + (dz * dz);
  }
  new_var = ((dx * dx) + (dy * dy)) + (dz * dz);
  fp = Func_8000948;
  return fp(new_var);
}

extern void __Actor_SetAnim(int, int);
extern unsigned short __atan2(int, int);

int OvlFunc_928_2008408(struct Actor *actor, struct Actor *target, int range, int force)
{
    int result = 0;
    u16 angle;
    int a0, a1, a2, facing;

    if (actor->stop == 1 && actor->waveCounter == 0) {
        __Actor_SetAnim((int)actor, 1);
        return 1;
    }

    if (OvlFunc_928_20083cc(&target->pos.x, &actor->pos.x) < range || force != 0) {
        angle = __atan2(target->pos.z - actor->pos.z, target->pos.x - actor->pos.x);
        a2 = (angle - 0x1000) & 0xf000;
        a1 = (angle + 0x1000) & 0xf000;
        a0 = angle & 0xf000;
        facing = actor->facing & 0xf000;
        if (a0 == facing || a1 == facing || a2 == facing || force != 0) {
            actor->stop = 1;
            __Actor_SetAnim((int)actor, 1);
            result = 1;
            actor->waveCounter = result;
        } else {
            actor->stop = 0;
            __Actor_SetAnim((int)actor, 2);
            actor->waveCounter = 0;
        }
    } else {
        actor->stop = 0;
        __Actor_SetAnim((int)actor, 2);
        actor->waveCounter = 0;
    }
    return result;
}

struct XianSceneView {
    int pad[0x60];
    u16 unk180;
    u16 unk182;
};

int OvlFunc_928_2008500(struct Actor *actor)
{
    struct Actor *leader;
    u8 flag = 0;
    int leader_x;
    int actor_x;

    if (actor->prevPos.x == (0x80 << 24) && actor->prevPos.z == actor->prevPos.x) {
        return 0;
    }

    leader = (struct Actor *)__MapActor_GetActor(0);
    leader_x = leader->pos.x;

    if ((leader_x >> 20) >= 17 && (leader_x >> 20) <= 18
        && (leader->pos.z >> 20) == 14
        && ((actor_x = actor->pos.x) >> 20) <= 19
        && actor->motion.x <= 0) {
        if (leader_x <= actor_x) {
            actor->__unk62++;
            flag = 1;
        }
    } else {
        actor->__unk62 = 0;
    }

    if (flag && actor->__unk62 > 0x77) {
        (*(struct XianSceneView **)iwram_3001ebc)->unk182 = 0xc8;
        actor->__unk62 = 0;
    }

    OvlFunc_928_2008408(actor, leader, 0x12, flag);
    return 0;
}

extern unsigned char gOvl_020097e8[];

unsigned int Xian_GetEntrances(void) {
    return (unsigned int)gOvl_020097e8;
}

int Xian_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020098d8[];

void *Xian_GetExits(void) {
    return (void *)gOvl_020098d8;
}

extern unsigned char L1900[] __asm__(".Lm928_1900");

unsigned int * Xian_GetActors(void) {
    if (__GetFlag(0x895)) {
        L1900[0xbe] = 0;
    }
    return (unsigned int *)L1900;
}

void OvlFunc_928_20085d4(void) {
    __CutsceneStart();
    __MessageID(0x17e8);
    __Func_8093054(9, 0);
    __CutsceneEnd();
}

extern int CS928_Update(void *) __asm__("OvlFunc_928_2008500");
extern unsigned char *CS928_Scene __asm__("iwram_3001ebc");
static inline void CS928_Half(unsigned short *p, int value) { *p = value; }
static inline void CS928_Byte(unsigned char *p, int value) { *p = value; }

void OvlFunc_928_20085f4(void)
{
    unsigned char *effect, *actor, *leader;
    int moveAside, savedX, savedZ, scaleX, scaleY;
    unsigned int facing;

    effect = (unsigned char *)((int)__MapActor_GetActor(20));
    API_CutsceneStart();
    actor = (unsigned char *)((int)__MapActor_GetActor(18));
    moveAside = 0;
    *(int *)(actor + 0x6c) = 0;
    if (API_GetFlag(0x200) ||
        (*(int *)((unsigned char *)((int)__MapActor_GetActor(18)) + 8) >> 20) <= 19) {
        actor = (unsigned char *)((int)__MapActor_GetActor(18));
        facing = *(unsigned short *)(actor + 6);
        API_MapActor_Face(18, 0, 0);
        API_CutsceneWait(10);
        API_MessageID(0x17fb);
        if (!API_GetFlag(0x200)) {
            *(unsigned short *)(CS928_Scene + 0x1d8) += 1;
            API_ActorMessage(18, 0);
            actor = (unsigned char *)((int)__MapActor_GetActor(18));
            actor += 0x64;
            CS928_Half((unsigned short *)actor, moveAside);
            actor = (unsigned char *)((int)__MapActor_GetActor(18));
            CS928_Half((unsigned short *)(actor + 6), facing);
        } else {
            API_ActorMessage(18, 0);
            API_Func_8092adc(18, 0x8000, 20);
        }
        actor = (unsigned char *)((int)__MapActor_GetActor(18));
        *(int *)(actor + 0x6c) = (int)CS928_Update;
        API_CutsceneEnd();
        return;
    }
    if ((*(int *)((unsigned char *)((int)__MapActor_GetActor(0)) + 0x10) >> 19) > 27 &&
        (*(int *)((unsigned char *)((int)__MapActor_GetActor(0)) + 0x10) >> 19) <= 29 &&
        (*(int *)((unsigned char *)((int)__MapActor_GetActor(0)) + 8) >> 20) != 26) {
        API_MapActor_SetSpeed(0, 0x8000, 0x4000);
        API_MapActor_Face(0, 18, 0);
        API_CutsceneWait(5);
        leader = (unsigned char *)((int)__MapActor_GetActor(0));
        actor = (unsigned char *)((int)__MapActor_GetActor(18));
        if (*(int *)(leader + 8) < *(int *)(actor + 8)) {
            actor = (unsigned char *)((int)__MapActor_GetActor(0));
            actor += 0x5a;
            CS928_Byte(actor, *actor & 0xfe);
            actor = (unsigned char *)((int)__MapActor_GetActor(18));
            API_MapActor_TravelToAnim(0, ((*(int *)(actor + 8) >> 20) * 16) - 8, 0xe8);
            moveAside = 1;
        } else {
            actor = (unsigned char *)((int)__MapActor_GetActor(0));
            actor += 0x5a;
            CS928_Byte(actor, *actor & 0xfe);
            actor = (unsigned char *)((int)__MapActor_GetActor(18));
            API_MapActor_TravelToAnim(0, ((*(int *)(actor + 8) >> 20) * 16) + 24, 0xe8);
        }
        API_MapActor_WaitMovement(0);
    }
    actor = (unsigned char *)((int)__MapActor_GetActor(18));
    *(int *)(actor + 0x38) = 0x80000000;
    actor = (unsigned char *)((int)__MapActor_GetActor(18));
    *(int *)(actor + 0x3c) = 0x80000000;
    actor = (unsigned char *)((int)__MapActor_GetActor(18));
    *(int *)(actor + 0x40) = 0x80000000;
    API_MapActor_SetBehavior(18, 1);
    API_MapActor_SetAnim(18, 1);
    API_Func_80925cc(18, 2);
    API_CutsceneWait(10);
    API_PlaySound(0xe4);
    *(int *)(effect + 0x18) = 0x4ccc;
    *(int *)(effect + 0x1c) = 0x4ccc;
    actor = (unsigned char *)((int)__MapActor_GetActor(18));
    savedX = *(int *)(actor + 8);
    actor = (unsigned char *)((int)__MapActor_GetActor(18));
    savedX >>= 20;
    savedZ = *(int *)(actor + 0x10) >> 20;
    savedX <<= 20;
    savedX += 0x80000;
    API_MapActor_SetPos(20, savedX,
        (savedZ << 20) + 0x80000);
    actor = (unsigned char *)((int)__MapActor_GetActor(18));
    savedX = *(int *)(actor + 8);
    actor = (unsigned char *)((int)__MapActor_GetActor(18));
    savedX >>= 20;
    API_Func_8010704(16, 16, 1, 1, savedX, *(int *)(actor + 0x10) >> 20);
    API_Func_8092b08(20, 2);
    CS928_Byte(effect + 0x23, effect[0x23] | 2);
    do {
        API_WaitFrames(3);
        scaleY = *(int *)(effect + 0x1c);
        scaleX = *(int *)(effect + 0x18);
        *(int *)(effect + 0x1c) = scaleY + 0x1999;
        scaleX += 0x1999;
        *(int *)(effect + 0x18) = scaleX;
    } while (scaleX <= 0xffff);
    API_MapActor_Emote(18, 0x105, 70);
    API_MapActor_Face(18, 0, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(18, 0x103, 0);
    API_Func_809259c(18, 2);
    API_CutsceneWait(70);
    API_MessageID(0x17fa);
    API_ActorMessage_Wait(18, 0, 20);
    API_MapActor_PlayPendingSound();
    if ((*(int *)((unsigned char *)((int)__MapActor_GetActor(0)) + 8) >> 20) == 26 &&
        (*(int *)((unsigned char *)((int)__MapActor_GetActor(0)) + 0x10) >> 20) > 13)
        moveAside = 1;
    if (moveAside != 0) {
        API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
        API_Func_8092adc(0, 0xc000, 10);
        actor = (unsigned char *)((int)__MapActor_GetActor(0));
        actor += 0x5a;
        CS928_Byte(actor, *actor & 0xfe);
        API_MapActor_SetAnim(0, 2);
        API_MapActor_TravelBy(0, 0, 16);
        API_MapActor_WaitMovement(0);
        API_MapActor_SetAnim(0, 1);
    }
    API_MapActor_SetSpeed(18, 0xcccc, 0x6666);
    actor = (unsigned char *)((int)__MapActor_GetActor(18));
    if ((*(int *)(actor + 0x10) >> 20) != 14) {
        actor = (unsigned char *)((int)__MapActor_GetActor(18));
        API_MapActor_TravelToAnimWait(18, *(short *)(actor + 10), 0xe8);
    }
    API_MapActor_TravelToAnimWait(18, 0x118, 0xe8);
    API_SetFlag(0x200);
    actor = (unsigned char *)((int)__MapActor_GetActor(0));
    actor += 0x5a;
    CS928_Byte(actor, *actor | 1);
    API_CutsceneEnd();
}

void OvlFunc_928_200894c(void) {
    unsigned char *r4;
    r4 = __MapActor_GetActor(0);
    if ((*(int *)(r4 + 0x10) >> 20) <= 0xd) {
        __Func_8092b08(0x14, 1);
    }
}

extern void __StartTask(void *, int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __Func_8092b08(int, int);
extern void __CutsceneEnd(void);

void OvlFunc_928_2008968(void)
{
    unsigned char *flags;
    int zero = 0;
    int x;
    int z;

    __CutsceneStart();

    flags = (unsigned char *)__MapActor_GetActor(0x14) + 0x23;
    *flags &= 0xfd;

    flags = (unsigned char *)__MapActor_GetActor(0x14) + 0x55;
    *flags = zero;

    x = *(int *)((char *)__MapActor_GetActor(0x14) + 8);
    z = *(int *)((char *)__MapActor_GetActor(0x14) + 16);
    __Func_8010704(3, 0x11, 1, 1, x >> 20, z >> 20);

    __StartTask(OvlFunc_928_2008324, 0xc8 << 4);
    API_SetFlag(0x201);
    __Func_8092b08(0x14, 2);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/xian/OvlFunc_928_20089dc.s");

void OvlFunc_928_2008cec(void) {
    __CutsceneStart();
    __MessageID(0x17f7);
    __Func_8093054(0x11, 0);
    __CutsceneEnd();
}

extern int __TestCollision(void *, void *);
extern void __vec3_translate(unsigned int, unsigned int, void *);
extern void __Actor_SetAnim(int, int);
extern void __Actor_SetSpriteFlags(int, int);

typedef union {
    vec3_t v;
    struct {
        u16 x_lo; s16 x_hi;
        u16 y_lo; s16 y_hi;
        u16 z_lo; s16 z_hi;
    } half;
} XianVec3Parts;

void OvlFunc_928_2008d0c(void)
{
    struct Actor *actor;
    unsigned char *flags;
    unsigned char saved;
    XianVec3Parts buf;
    unsigned int heading;

    actor = (struct Actor *)__MapActor_GetActor(0);
    flags = &actor->__unk55;
    saved = *flags;

    if (API_GetFlag(0x80 << 2)) {
        buf.v.x = (actor->pos.x & 0xfff00000) + (0x80 << 12);
        buf.v.y = actor->pos.y;
        buf.v.z = (actor->pos.z & 0xfff00000) + (0x80 << 12);

        heading = (actor->facing + (0x80 << 6)) & (0xc0 << 8);
        __vec3_translate(0x80 << 14, heading, &buf);

        if (__TestCollision(actor, &buf) == 0) {
            __CutsceneStart();
            __Actor_SetAnim((int)actor, 6);
            API_WaitFrames(6);
            __PlaySound(0x98);
            __Actor_SetAnim((int)actor, 7);

            actor->speed = 0xc0 << 10;
            actor->accel = 0x80 << 10;
            actor->motion.y = 0x80 << 11;

            *flags &= 0x7e;
            __Actor_SetSpriteFlags((int)actor, 0);

            API_MapActor_TravelToWait(0, buf.half.x_hi, buf.half.z_hi);

            __Actor_SetAnim((int)actor, 6);
            __Actor_SetSpriteFlags((int)actor, 1);
            *flags = saved;
            API_CutsceneEnd();
        }
    }
}


extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_SetAnim(int, int);
extern void __MapActor_TravelBy(int, int, int);
extern void __Func_8092208(int, int, int);
extern void __Func_8091e9c(unsigned int);

void OvlFunc_928_2008de8(unsigned int arg0)
{
    unsigned char *actor;

    actor = (unsigned char *)__MapActor_GetActor(0);
    actor[0x55] = 0;
    API_MapActor_SetSpeed(0, 0x8000, 0x4000);

    if (arg0 == 6) {
        __MapActor_SetAnim(0, 2);
        API_MapActor_TravelBy(0, 0, -16);
    } else {
        API_Func_8092208(0, 2, -16);
    }

    *(unsigned int *)(*(unsigned int *)iwram_3001ebc + 0x1c8) = 0x10;
    __Func_8091e9c(arg0);
}

extern unsigned char L1778[] __asm__(".Lm928_1778");
extern unsigned char L178e[] __asm__(".Lm928_178e");
extern unsigned char L17a4[] __asm__(".Lm928_17a4");
extern unsigned char L17ba[] __asm__(".Lm928_17ba");
extern unsigned char L17d0[] __asm__(".Lm928_17d0");

extern void __PlaySound(int);
extern void __Func_8010560(void *, int, int);

void OvlFunc_928_2008e4c(void)
{
    short *p = *(short **)iwram_3001ebc;
    __CutsceneStart();
    switch (p[182]) {
    case 1:
        __PlaySound(0x9e);
        __Func_8010560(L1778, 0x51, 0x12);
        break;
    case 2:
        __PlaySound(0x9e);
        __Func_8010560(L178e, 0x53, 11);
        break;
    case 3:
        __PlaySound(0x9e);
        __Func_8010560(L178e, 0x56, 11);
        break;
    case 4:
        __PlaySound(0x9e);
        __Func_8010560(L17a4, 0x54, 0x18);
        break;
    case 5:
        __PlaySound(0x9e);
        __Func_8010560(L17a4, 0x48, 7);
        break;
    case 6:
        __PlaySound(0xbc);
        __Func_8010560(L17ba, 0x45, 11);
        break;
    case 7:
        __PlaySound(0x9e);
        __Func_8010560(L17d0, 0x53, 7);
        break;
    }
    OvlFunc_928_2008de8(p[182]);
    __CutsceneEnd();
}
extern void __MessageID(int);
extern unsigned char gScript_928__020096a0[];

void OvlFunc_928_2008f30(void)
{
    int x, y, z;
    int flags;
    int zero;
    struct Actor *actor;

    __CutsceneStart();
    __MapActor_SetBehavior(0x13, gScript_928__020096a0);
    __StartTask(OvlFunc_928_2008358, 0xc8 << 4);
    API_MapActor_WaitScript(0x13);
    __PlaySound(0x7c);

    x = 0xa8 << 16;
    y = 0x80 << 12;
    z = 0x9c << 17;
    flags = 0x20001;
    zero = 0;

    OvlFunc_common0_10c(x, y, z, 0, zero, zero, flags, (void *)zero);
    OvlFunc_common0_10c(x, y, z, 0x3333, zero, zero, flags, (void *)zero);
    OvlFunc_common0_10c(x, y, z, -0x3333, zero, zero, flags, (void *)zero);

    API_StopTask(OvlFunc_928_2008358);
    actor = (struct Actor *)__MapActor_GetActor(0x13);
    actor->sprite->rotation = 0x80 << 8;
    API_MapActor_SetPos(0x15, x, z);
    API_CutsceneWait(0x14);
    API_MapActor_Face(0xe, 0x13, 0);
    API_Func_80925cc(0xe, 2);
    API_CutsceneWait(0xa);
    __MessageID(0x17fd);
    if (API_GetFlag(0x203)) {
        (*(unsigned short *)(CS928_Scene + (0xec << 1)))++;
    }
    API_ActorMessage(0xe, 0);
    API_SetFlag(0x203);
    API_MapActor_PlayPendingSound();
    __CutsceneEnd();
}

extern unsigned char gScript_928__020095b0[];
extern int OvlFunc_928_2008500(struct Actor *);
extern void __MapActor_SetBehavior(int, void *);

void OvlFunc_928_2009060(void)
{
    int zero;
    int c;

    __CutsceneStart();
    __MapActor_SetBehavior(0x12, (void *)1);

    *(int *)((char *)__MapActor_GetActor(0x12) + 0x6c) = zero = 0;
    *(int *)((char *)__MapActor_GetActor(0x12) + 0x38) = c = 0x80 << 24;
    *(int *)((char *)__MapActor_GetActor(0x12) + 0x40) = c;
    *(int *)((char *)__MapActor_GetActor(0x12) + 0x24) = zero;
    *(int *)((char *)__MapActor_GetActor(0x12) + 0x2c) = zero;
    *(int *)((char *)__MapActor_GetActor(0x12) + 0x30) = zero;
    *(int *)((char *)__MapActor_GetActor(0x12) + 0x34) = zero;

    API_MapActor_Emote(0x12, 0x103, 0);
    API_Func_809259c(0x12, 2);
    API_CutsceneWait(60);

    API_MapActor_SetSpeed(0x12, 0xc0 << 9, 0xc0 << 8);
    API_MapActor_SetSpeed(0, 0xc0 << 9, 0xc0 << 8);

    API_MapActor_TravelToAnim(0x12, 0x8c << 1, 0xe8);
    API_MapActor_TravelToAnimWait(0, 0x94 << 1, 0xe8);
    API_MapActor_WaitMovement(0x12);

    API_Func_8092adc(0, 0x80 << 8, 0x14);
    API_MapActor_Emote(0, 0x81 << 1, 60);

    __MapActor_SetBehavior(0x12, gScript_928__020095b0);
    *(void **)((char *)__MapActor_GetActor(0x12) + 0x6c) = OvlFunc_928_2008500;
    __CutsceneEnd();
}

extern unsigned char gOvl_02009ac8[];

void *Xian_GetEvents(void) {
    return (void *)gOvl_02009ac8;
}

struct XianStateView {
    u8 pad[0x1c2];
    s16 room;
};

extern struct XianStateView gState;
extern void __Func_8091ff0(int);
extern void __Func_80929d8(void *, int);
extern void __Func_8092950(int, int);

int Xian_MapInit(void)
{
    u32 i;
    struct Actor *actor;
    struct Actor *actor2;
    struct Sprite *sprite;
    int x;
    int z;

    *(int *)(CS928_Scene + 0x1c0) = 0x100;
    __Func_8091ff0(0xa9);

    if (gState.room > 9) {
        API_ClearFlag(0x12f);
    }

    if (API_GetFlag(0x895)) {
        API_Func_8092adc(0xd, 0x8000, 0);
        API_MapActor_SetPos(0xe, 0x92 << 16, 0x9c << 17);
        API_Func_8092adc(0xe, 0, 0);
        if (API_GetFlag(0x89a)) {
            API_MapActor_SetPos(0x11, 0, 0);
        }
    }

    if (API_GetFlag(0x8b0)) {
        API_MapActor_SetPos(0x11, 0, 0);
    }

    for (i = 0; i <= 2; i++) {
        actor = (struct Actor *)__MapActor_GetActor(i + 0x17);
        sprite = actor->sprite;
        sprite->oam.priority = 1;
        actor->__unk55 = 0;
        actor->collision = 8;
        __Actor_SetSpriteFlags((int)actor, 0);
        __Func_80929d8(actor, 0xf);
        actor->flags = (actor->flags & 0xfe) | 2;
    }

    if (API_GetFlag(0x202)) {
        API_MapActor_SetPos(0xe, 0x92 << 16, 0x9c << 17);
        API_Func_8092adc(0xe, 0, 0);
    }

    if (API_GetFlag(0x201)) {
        __MapActor_SetAnim(0x14, 5);
        x = ((struct Actor *)__MapActor_GetActor(0x14))->pos.x;
        z = ((struct Actor *)__MapActor_GetActor(0x14))->pos.z;
        __Func_8010704(3, 0x11, 1, 1, x >> 20, z >> 20);
        __StartTask(OvlFunc_928_2008324, 0xc8 << 4);
    }

    __Func_8092950(0x12, 2);
    ((struct Actor *)__MapActor_GetActor(0x12))->update = (actorfun_t)OvlFunc_928_2008500;

    actor2 = (struct Actor *)__MapActor_GetActor(0x13);
    actor2->__unk55 = 0;
    actor2->pos.y = 0x80 << 13;
    actor2->prevPos.y = 0x80 << 13;
    actor2->scale.x = 0x8ccc;
    actor2->scale.y = 0x6666;
    actor2->sprite->rotation = 0x8000;

    __Actor_SetSpriteFlags((int)__MapActor_GetActor(0x15), 0);
    ((struct Actor *)__MapActor_GetActor(0x15))->__unk55 = 0;
    ((struct Actor *)__MapActor_GetActor(0x15))->pos.y = 0;
    ((struct Actor *)__MapActor_GetActor(0x15))->prevPos.y = 0x80 << 24;

    return 0;
}
INCLUDE_ASM("asm/maps/xian/xian_data.s");
