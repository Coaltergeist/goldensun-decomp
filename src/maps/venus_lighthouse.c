/* rom_7f2f14 (overlay file 968): consolidated TU — venus_lighthouse map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"
#include "sprite.h"

extern unsigned int Lm968_50e8[] __asm__(".Lm968_50e8");

INCLUDE_ASM("asm/maps/venus_lighthouse/exports.s");

/* Void declarations for veneer callees. */
extern void __Actor_SetSpriteFlags();
extern void __CutsceneEnd();
extern void __CutsceneStart();
extern void __CutsceneWait();
extern void __Func_8010704();
extern void __Func_801776c();
extern void __Func_80929d8();
extern void __Func_8092b08();
extern void __MapActor_SetAnim();






extern void OvlFunc_968_200999c();
extern void OvlFunc_968_20099c0();
extern void OvlFunc_968_200894c();

void OvlFunc_968_2008030(unsigned int arg0, unsigned int arg1)
{
    unsigned int r5;
    unsigned int r6;

    r5 = arg0;
    *(unsigned char *)(r5 + 0x55) = 0;
    *(unsigned char *)(r5 + 0x59) = 8;
    r6 = arg1;
    __Actor_SetSpriteFlags(r5, 0);
    __Func_80929d8(r5, r6);
}

extern void *__CreateActor(int, int, int, int);
extern void __Func_800c548(void *, int);
unsigned int OvlFunc_968_2008058(unsigned int x, unsigned int y, unsigned int z, unsigned int type)
{
    struct Actor *a = __CreateActor(type, x, y, z);

    if (a != 0) {
        a->sprite->oam.priority = 0;
        OvlFunc_968_2008030((unsigned int)a, 0xe);
        __Func_800c548(a, 1);
        return (unsigned int)a;
    }
    return 0;
}
unsigned int OvlFunc_968_2008098(unsigned int x, unsigned int y, unsigned int z, unsigned int type)
{
    struct Actor *a = __CreateActor(type, x, y, z);

    if (a != 0) {
        a->sprite->oam.priority = 1;
        OvlFunc_968_2008030((unsigned int)a, 0xf);
        a->flags |= 2;
        return (unsigned int)a;
    }
    return 0;
}

void OvlFunc_968_20080e0(struct Actor *actor) {
    actor->pos.x += actor->bounce;
    actor->pos.y += actor->gravity;
    actor->pos.z += actor->__unk4C;
    actor->scale.x += actor->speed;
    actor->scale.y += actor->accel;
    actor->sprite->rotation += actor->waveCounter;
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2008118.s");

extern int Func_8000948(int);

int OvlFunc_968_20082f0(int *a, int *b)
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

struct ActorTable200832c {
    unsigned char pad0[0x14];
    struct Actor *actor[66];
};
struct Actor *OvlFunc_968_200832c(int *pos, struct Actor *self)
{
    extern struct ActorTable200832c *iwram_3001ebc;
    struct ActorTable200832c *t = iwram_3001ebc;
    int x;
    unsigned int i;

    i = 8;
    x = pos[0] >> 20;
    for (; i <= 0x41; i++) {
        struct Actor *a = t->actor[i];
        if (x == a->pos.x >> 20 && pos[1] >> 20 == a->pos.y >> 20 && pos[2] >> 20 == a->pos.z >> 20)
            return a;
    }
    return 0;
}

void OvlFunc_968_2008374(void) {
    struct Actor *player;
    struct Actor *obj;
    struct Actor *res;
    int stk[3];
    unsigned int idx;
    unsigned int t;
    int speed;
    int zero;

    player = __MapActor_GetActor(0);
    idx = player->facing >> 12;
    t = Lm968_50e8[idx];
    stk[0] = player->pos.x + (t & 0xffff0000);
    stk[1] = player->pos.y;
    t <<= 16;
    stk[2] = player->pos.z + t;
    obj = (struct Actor *)OvlFunc_968_200832c(stk, player);
    if (obj == 0) {
        return;
    }
    t = Lm968_50e8[idx];
    stk[0] = obj->pos.x + (t & 0xffff0000);
    stk[1] = obj->pos.y;
    t <<= 16;
    stk[2] = obj->pos.z + t;
    res = (struct Actor *)OvlFunc_968_200832c(stk, obj);
    if (res != 0) {
        if (res->collision & 1) {
            return;
        }
    }
    stk[0] = obj->pos.x;
    stk[1] = obj->pos.y + (0x80 << 13);
    stk[2] = obj->pos.z;
    res = (struct Actor *)OvlFunc_968_200832c(stk, obj);
    if (res != 0) {
        if (res->collision & 1) {
            return;
        }
    }
    obj->layer = 2;
    t = Lm968_50e8[idx];
    stk[0] = obj->pos.x + (t & 0xffff0000);
    stk[1] = obj->pos.y;
    t <<= 16;
    stk[2] = obj->pos.z + t;
    if (__TestCollision(obj, stk) > 0) {
        return;
    }
    zero = obj->__unk62;
    if (zero != 0) {
        return;
    }
    __Actor_SetAnim(player, 8);
    speed = 0x3333;
    API_WaitFrames(0xf);
    API_PlaySound(0xb9);
    obj->speed = speed;
    obj->accel = speed;
    API_Actor_TravelTo(obj, stk[0], stk[1], stk[2]);
    player->speed = speed;
    player->accel = speed;
    API_Actor_TravelTo(player, stk[0], stk[1], stk[2]);
    __Actor_WaitMovement(obj);
    API_MapActor_PlayPendingSound();
    obj->pos.x = stk[0];
    obj->pos.z = stk[2];
    obj->motion.x = zero;
    obj->motion.z = zero;
    player->prevPos.x = 0x80 << 24;
    player->prevPos.z = 0x80 << 24;
    player->motion.x = zero;
    player->motion.z = zero;
    player->pos.x = ((short *)&player->pos.x)[1] << 16;
    player->pos.z = ((short *)&player->pos.z)[1] << 16;
    __Actor_SetAnim(player, 1);
}

struct MapTile_968_20084f4 {
    u16 unk0;
    u8 unk2;
    u8 unk3;
};

struct MapLayer_968_20084f4 {
    struct MapTile_968_20084f4 *tiles;
    u8 pad[0x2c];
};

struct MapData_968_20084f4 {
    u8 pad[0x130];
    struct MapLayer_968_20084f4 layers[3];
};

int OvlFunc_968_20084f4(unsigned int layer, unsigned int x, unsigned int y,
                        unsigned int width, unsigned int height, unsigned int val)
{
    extern unsigned char gBuffer[];
    extern void *iwram_3001e70;
    struct MapData_968_20084f4 *map;
    struct MapTile_968_20084f4 *tiles;
    struct MapTile_968_20084f4 *tile;
    unsigned int i;
    unsigned int j;

    map = (struct MapData_968_20084f4 *)iwram_3001e70;
    if (map == 0) {
        return 0;
    }

    if (layer <= 2) {
        tiles = map->layers[layer].tiles;
    } else {
        tiles = (struct MapTile_968_20084f4 *)gBuffer;
    }

    tiles += x + y * 128;
    for (i = 0; i < height; i++) {
        tile = tiles + i * 128;
        for (j = 0; j < width; j++, tile++) {
            tile->unk2 = val;
        }
    }

    return 0;
}
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2008558.s");
extern void __Func_80929d8(unsigned int actor, int x);

unsigned int OvlFunc_968_2008594(unsigned int arg0) {
    __Func_80929d8(arg0, *(unsigned short *)(arg0 + 0x64) & 0xf);
    return 0;
}

int OvlFunc_968_20085ac(unsigned int actorId)
{
    extern unsigned char iwram_3001e40[];

    if ((*(unsigned int *)iwram_3001e40 & 3) == 0) {
        __Func_80929d8(actorId, 7);
    } else {
        __Func_80929d8(actorId, 0);
    }
    if ((*(unsigned int *)iwram_3001e40 & 7) == 0) {
        API_PlaySound(0x8a);
    }
    return 0;
}
extern int _divsi3_RAM(int, int);
int OvlFunc_968_20085e4(struct Actor *actor)
{
    extern unsigned char iwram_3001e40[];
    extern unsigned int __Random(void);
    extern void OvlFunc_968_2008118(int, int, int, int, int, int, int, void *);
    int stack_buf[10];
    int flag;
    int x;
    int y;
    int speed;

    flag = *(unsigned int *)iwram_3001e40 & 7;
    if (flag == 0) {
        stack_buf[0] = 3 - ((__Random() * 2) >> 16);
        stack_buf[2] = 0x6666;
        stack_buf[3] = 0x6666;
        stack_buf[1] = 0xe;
        x = actor->pos.x + ((((__Random() * 9) >> 16) - 4) << 16);
        y = actor->pos.y + ((0x20 - ((__Random() * 32) >> 16)) << 16);
        speed = _divsi3_RAM((int)((((__Random() * 5) >> 16) << 16) + 0x50000), 10);
        OvlFunc_968_2008118(x, y, actor->pos.z, 0, speed, flag, 0xb0000, stack_buf);
    }
    return 0;
}

extern void __Actor_SetSpriteFlags();

unsigned int OvlFunc_968_2008690(void) {
    int x;
    __Actor_SetSpriteFlags(x, 0);
    return 0;
}

int OvlFunc_968_20086a0(struct Actor *actor)
{
    extern unsigned int __Random(void);
    extern void OvlFunc_968_2008118(int, int, int, int, int, int, int, void *);
    extern unsigned char iwram_3001e40[];
    int stack_buf[10];
    int speed;

    stack_buf[2] = 0xcccc;
    stack_buf[3] = 0xcccc;
    stack_buf[0] = 0;

    speed = ((__Random() * 8) >> 16) * 0x3333;
    OvlFunc_968_2008118(
        actor->pos.x + ((8 - (*(unsigned int *)iwram_3001e40 & 0xf)) << 16),
        actor->pos.y + (0xd0 << 13),
        actor->pos.z,
        0,
        -speed,
        0,
        0xa0 << 12,
        stack_buf
    );

    if ((*(unsigned int *)iwram_3001e40 & 0xf) == 0) {
        stack_buf[2] = 0x80 << 8;
        stack_buf[3] = 0x80 << 8;
        OvlFunc_968_2008118(
            actor->pos.x + ((((__Random() * 9) >> 16) - 4) << 16),
            actor->pos.y,
            actor->pos.z,
            0,
            0,
            0,
            0xa0 << 12,
            stack_buf
        );
    }
    return 0;
}

void OvlFunc_968_2008754(void) {
    extern int OvlFunc_968_20086a0(struct Actor *);
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Func_8092950(int, int);
    extern unsigned char iwram_3001ebc[];
    struct Actor *a;
    short *p;
    short val;

    p = *(short **)iwram_3001ebc;
    a = (struct Actor *)__MapActor_GetActor(0);
    API_CutsceneStart();
    API_PlaySound(0xe4);
    a->update = (actorfun_t *)OvlFunc_968_20086a0;
    a->speed = 0x3333;
    API_MapActor_SetAnim(0, 2);
    API_MapActor_TravelBy(0, 0, -6);
    API_MapActor_WaitMovement(0);
    __Func_8092950(0, 0xf);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    a->update = 0;
    API_CutsceneWait(0x1e);
    API_MapTransitionOut();
    API_WaitMapTransition();
    val = *(short *)((char *)p + (0xb6 << 1));
    API_Func_8091e9c(val);
    API_CutsceneEnd();
}

void OvlFunc_968_20087d8(void)
{
    extern int OvlFunc_968_20086a0(struct Actor *);
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Func_8092950(int, int);
    struct Actor *a;
    int flag;

    a = (struct Actor *)__MapActor_GetActor(0);
    flag = API_GetFlag(0x109);
    if (flag != 0) {
        return;
    }
    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    a->__unk55 = flag;
    API_MapActor_SetPos(0, ((short *)&a->pos.x)[1] << 16,
                         (((short *)&a->pos.z)[1] << 16) + 0xfff00000);
    __Func_8092950(0, 0xf);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_PlaySound(0xe4);
    a->update = (actorfun_t *)OvlFunc_968_20086a0;
    API_MapActor_SetSpeed(0, 0x6666, 0x3333);
    API_Func_8092304(0, 0, 8);
    __Func_8092950(0, 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 1);
    API_Func_8092304(0, 0, 8);
    a->__unk55 = 3;
    a->update = (actorfun_t *)flag;
    API_MapActor_PlayPendingSound();
    API_CutsceneEnd();
}

extern unsigned int __MapActor_GetActor(int id);
extern unsigned int *iwram_3001ee0;

void OvlFunc_968_20088a0(void) {
    unsigned int v;

    v = __MapActor_GetActor(0);
    iwram_3001ee0[6] = v;
}

extern unsigned int iwram_3001ee0__a1 __asm__("iwram_3001ee0");

void OvlFunc_968_20088b8(void) {
    unsigned int *ptr;

    ptr = (unsigned int *)iwram_3001ee0__a1;
    ptr[6] = 0;
}

int OvlFunc_968_20088c8(struct Actor *a) {
    struct Actor *p;
    int d;

    p = (struct Actor *)__MapActor_GetActor(0);
    a->flags |= 2;
    if (p->pos.z < a->pos.z) {
        d = (a->pos.z - p->pos.z) + 0x40000;
        if (p->pos.y <= a->pos.y + d) {
            a->flags &= 0xfd;
        }
    }
    return 0;
}

extern void __WaitFrames(unsigned int a);

void OvlFunc_968_2008910(unsigned int arg0, unsigned int arg1)
{
  int new_var;
  int *r6;
  int *r0p;
  int tmp;
  r6 = (int *) __MapActor_GetActor(arg0);
  r0p = (int *) __MapActor_GetActor(arg1);
  if (r6[4] <= r0p[4])
  {
    ;
    {
      int t2 = r6[2];
      r6[2] = r0p[2];
      r0p[2] = t2;
    }
    tmp = r0p[3];
    {
      int t2 = r6[3];
      r6[3] = tmp;
      r0p[3] = t2;
    }
    new_var = r0p[4];
    tmp = new_var;
    {
      int t2 = r6[4];
      r6[4] = tmp;
      r0p[4] = t2;
    }
    __WaitFrames(1);
  }
}

void OvlFunc_968_200894c(arg0) unsigned int * arg0;
{
    int r5;
    r5 = 0x3c;
    while (r5 != 0) {
        __WaitFrames(1);
        if (*(unsigned int *)((char *)arg0 + 0x28) == 0)
            break;
        r5--;
    }
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200896c.s");
struct Struct_20089c8 {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    u8 pad[0x14];
    void *unk24;
};

extern void __Func_800fe9c(void);
extern void OvlFunc_968_200896c(struct Actor *actor);
extern int __cos(int);
extern int __sin(int);
extern void OvlFunc_968_2008118(fx32, fx32, fx32, int, int, int, int, void *);

void OvlFunc_968_20089c8(void)
{
    struct Actor *actor;
    struct Struct_20089c8 sp1c;
    vec3_t v;
    unsigned int i;

    actor = (struct Actor *)__MapActor_GetActor(0);
    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    __Func_800fe9c();
    API_WaitFrames(1);
    actor->pos.y = 0x82 << 16;
    actor->gravity = 0x80 << 8;
    actor->bounce = 0;
    actor->__unk55 = 0;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x1e);
    API_PlaySound(0xcc);
    actor->__unk55 = 3;
    API_CutsceneWait(0x18);
    sp1c.unk4 = 7;
    sp1c.unk24 = (void *)OvlFunc_968_200896c;
    sp1c.unk8 = 0xcccc;
    sp1c.unkC = 0xcccc;
    for (i = 0; i <= 0x10; i++) {
        int angle = i << 12;
        v.x = __cos(angle);
        v.y = 0;
        v.z = __sin(angle);
        v.x += v.x / 2;
        OvlFunc_968_2008118(actor->pos.x, actor->pos.y, actor->pos.z, v.x, v.y, v.z, 0x1090001, &sp1c);
    }
    API_PlaySound(0xbc);
    API_MapActor_Surprise(0, 0x101);
    API_MapActor_SetAnim(0, 0x16);
    API_Func_8012330(0xa0 << 11, 0xa0 << 11, 0x80 << 9);
    API_Func_8012330(-1, -1, 0xe666);
    API_Func_8012350();
    API_MapActor_Surprise(0, 0x80 << 1);
    API_MapActor_PlayPendingSound();
    actor->gravity = 0x80 << 9;
    actor->bounce = 0x80 << 7;
    API_CutsceneEnd();
}
extern void OvlFunc_968_200896c(struct Actor *);
extern int __cos(int);
extern int __sin(int);
void OvlFunc_968_2008b08(unsigned int actorId)
{
    extern void OvlFunc_968_2008118(int, int, int, int, int, int, int, void *);
    int vel[3];
    int data[10];
    struct Actor *actor;
    unsigned int i;

    actor = (struct Actor *)__MapActor_GetActor(actorId);
    data[0] = 1;
    data[1] = 7;
    data[9] = (int)OvlFunc_968_200896c;

    for (i = 0; i <= 16; i += 2) {
        int angle = i << 12;
        int c;
        int s;

        vel[0] = __cos(angle);
        vel[1] = 0;
        s = __sin(angle);
        c = vel[0];
        vel[2] = s;
        vel[0] = c + _divsi3_RAM(c, 3);

        OvlFunc_968_2008118(actor->pos.x, actor->pos.y, actor->pos.z, vel[0], vel[1], s, 0x1030001, data);
    }
}
extern int _divsi3_RAM(int, int);
struct Struct_2008b98 {
    int pad[2];
    int unk8;
    int unkC;
    int unk10;
    int unk14;
    u16 unk18;
    u8 pad2[14];
};

extern void OvlFunc_968_2008118(fx32, fx32, fx32, int, int, int, int, void *);
extern u32 __Random(void);

int OvlFunc_968_2008b98(struct Actor *actor)
{
    extern unsigned char iwram_3001e40[];
    struct Struct_2008b98 sp10;
    int dx;
    int dz;

    if (*(u32 *)iwram_3001e40 & 3) {
        return 0;
    }

    if (((__Random() * 6) >> 16) == 0) {
        if (actor->prevPos.x != (fx32)0x80000000 || actor->prevPos.z != (fx32)0x80000000) {
            API_PlaySound(0xf6);
        }
    }

    sp10.unk18 = 0x8f << 1;
    sp10.unk8 = 0x80 << 9;
    sp10.unkC = 0x80 << 9;
    sp10.unk10 = 0xfffffeb9;
    sp10.unk14 = 0xfffffeb9;

    dx = _divsi3_RAM((int)((((__Random() * 9) >> 16) - 4) << 16), 10);
    dz = _divsi3_RAM((int)((((__Random() * 9) >> 16) - 4) << 16), 10);

    OvlFunc_968_2008118(actor->pos.x, actor->pos.y, actor->pos.z + (int)0xffff0000, dx, 0, dz, 0x1c0001, &sp10);
    return 0;
}

extern void __Actor_SetAnim(struct Actor *actor, int anim);
extern void __Actor_SetScript(struct Actor *actor, void *script);
extern int OvlFunc_968_2008b98(struct Actor *);

struct Actor *OvlFunc_968_2008c5c(unsigned int param_1, unsigned int param_2, void *param_3) {
    struct Actor *actor;
    unsigned int y;

    y = param_2 << 16;
    actor = __CreateActor(0x11c, param_1 << 16, 0, y);
    if (actor == 0) {
        return 0;
    }
    actor->speed = 0x10000;
    actor->accel = 0x10000;
    __Actor_SetSpriteFlags(actor, 0);
    __Actor_SetAnim(actor, 7);
    actor->__unk55 = 0;
    actor->pos.y = 0;
    actor->collision = 0;
    actor->flags = 2;
    actor->update = (void *)OvlFunc_968_2008b98;
    actor->__unk63 = 0;
    __Actor_SetScript(actor, param_3);
    return actor;
}

int OvlFunc_968_2008cc8(void)
{
    extern void __vec3_translate(int dist, int angle, int *vec);
    extern int __TestCollision(void *, int *);
    extern void __MapActor_TravelToWait(int, int, int);
    struct Actor *actor;
    u8 *p55;
    u8 saved;
    int buf[3];
    int *v;

    actor = (struct Actor *)__MapActor_GetActor(0);
    p55 = &actor->__unk55;
    saved = *p55;
    v = buf;
    v[0] = (actor->pos.x & 0xfff00000) + 0x80000;
    v[1] = actor->pos.y;
    v[2] = (actor->pos.z & 0xfff00000) + 0x80000;
    {
        int ang = (actor->facing + 0x2000) & 0xc000;
        __vec3_translate(0x80 << 13, ang, v);
    }
    if (__TestCollision(actor, v) != 1 && OvlFunc_968_200832c(v, actor) == 0) {
        v[0] = (actor->pos.x & 0xfff00000) + 0x80000;
        v[1] = actor->pos.y;
        v[2] = (actor->pos.z & 0xfff00000) + 0x80000;
        __vec3_translate(0x80 << 14, (actor->facing + 0x2000) & 0xc000, v);
        if (OvlFunc_968_200832c(v, actor) == 0 && __TestCollision(actor, v) == 0) {
            __CutsceneStart();
            __Actor_SetAnim(actor, 6);
            __WaitFrames(6);
            __PlaySound(0x98);
            __Actor_SetAnim(actor, 7);
            actor->speed = 0xc0 << 10;
            actor->accel = 0x80 << 10;
            actor->motion.y = 0x80 << 11;
            *p55 &= 0x7e;
            __Actor_SetSpriteFlags(actor, 0);
            __MapActor_TravelToWait(0, ((short *)v)[1], ((short *)v)[5]);
            __Actor_SetAnim(actor, 6);
            __Actor_SetSpriteFlags(actor, 1);
            *p55 = saved;
            __CutsceneEnd();
            return 1;
        }
    }
    return 0;
}

#include "state/global_state.h"
extern GlobalState gState;
extern unsigned char _EVENT_b5[], _EVENT_b7[], _EVENT_b8[], _EVENT_b9[], _EVENT_ba[];
extern unsigned char Lm968_5d68[] __asm__(".Lm968_5d68");
extern unsigned char Lm968_6020[] __asm__(".Lm968_6020");
extern unsigned char Lm968_6230[] __asm__(".Lm968_6230");
extern unsigned char Lm968_6350[] __asm__(".Lm968_6350");
extern unsigned char Lm968_6548[] __asm__(".Lm968_6548");
extern unsigned char Lm968_5dc8[] __asm__(".Lm968_5dc8");

void *VenusLighthouse_GetEntrances(void) {
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_b5) return Lm968_5d68;
    if (ev == (int)_EVENT_b7) return Lm968_6020;
    if (ev == (int)_EVENT_b8) return Lm968_6230;
    if (ev == (int)_EVENT_b9) return Lm968_6350;
    if (ev == (int)_EVENT_ba) return Lm968_6548;
    return Lm968_5dc8;
}


int VenusLighthouse_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200e740[];

unsigned int VenusLighthouse_GetExits(void) {
    return (unsigned int)gOvl_0200e740;
}

extern unsigned char _EVENT_b6[];
extern unsigned char gScript_945__0200e904[];
extern unsigned char Lm968_69c4[] __asm__(".Lm968_69c4");
extern unsigned char Lm968_6b74[] __asm__(".Lm968_6b74");
extern unsigned char Lm968_6c04[] __asm__(".Lm968_6c04");
extern unsigned char Lm968_6c64[] __asm__(".Lm968_6c64");
extern unsigned char Lm968_6cf4[] __asm__(".Lm968_6cf4");
extern unsigned char Lm968_68ec[] __asm__(".Lm968_68ec");
extern void __Func_808b868(void *);

void *VenusLighthouse_GetActors(void)
{
    void *a;
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_b5) {
        return gScript_945__0200e904;
    } else if (ev == (int)_EVENT_b6) {
        a = Lm968_69c4;
        __Func_808b868(a);
        return a;
    } else if (ev == (int)_EVENT_b7) {
        a = Lm968_6b74;
        __Func_808b868(a);
        return a;
    } else if (ev == (int)_EVENT_b8) {
        a = Lm968_6c04;
        __Func_808b868(a);
        return a;
    } else if (ev == (int)_EVENT_b9) {
        a = Lm968_6c64;
        __Func_808b868(a);
        return a;
    } else if (ev == (int)_EVENT_ba) {
        a = Lm968_6cf4;
        __Func_808b868(a);
        return a;
    } else {
        return Lm968_68ec;
    }
}

void OvlFunc_968_2008f1c(void)
{
  int new_var;
  __CutsceneStart();
  new_var = 1;
 do { __Func_801776c(0x953, new_var); } while (0);
  __CutsceneEnd();
}

void OvlFunc_968_2008f38(void) {
    extern void __Func_8092950(int, int);
    unsigned int wait;
    int count;
    int s1;
    int s2;

    API_CutsceneStart();
    API_Func_80925cc(8, 3);
    API_MessageID(0x266d);
    count = 0xa;
    wait = 8;
    API_ActorMessage_Wait(8, 0, 0x14);
    do {
        __Func_8092950(8, 0xf);
        API_WaitFrames(2);
        __Func_8092950(8, 0);
        API_WaitFrames(wait);
        if (wait > 3) {
            wait -= 1;
        }
        count -= 1;
    } while (count != 0);
    API_SetFlag(0x981);
    API_MapActor_SetPos(8, 0, 0);
    s1 = 7;
    s2 = 0x10;
    API_Func_8010704(7, 0x11, 2, 1, s1, s2);
    API_CutsceneEnd();
}

extern void __MessageID(int);
extern void __ActorMessage_Wait(int, int, int);
extern void __Func_80925cc(int, int);
extern void __ActorMessage(int, int);

void OvlFunc_968_2008fbc(void)
{
    __CutsceneStart();
    __MessageID(0x2670);
    __ActorMessage_Wait(0xb, 0, 0x14);
    __Func_80925cc(0xb, 2);
    __ActorMessage(0xb, 0);
    __CutsceneEnd();
}

extern void __CutsceneStart(void);
extern void __SetFlag(int);
extern void __CutsceneEnd(void);

void OvlFunc_968_2008ff0(void)
{
    int r5;
    r5 = __MapActor_GetActor(0xc);
    __CutsceneStart();
    if ((*(int *)((char *)r5 + 8) >> 20) == 0x36 ||
        (*(int *)((char *)r5 + 0x10) >> 20) == 6)
        __SetFlag(0x987);
    __CutsceneEnd();
}

void OvlFunc_968_2009024(void)
{
	__CutsceneStart();
	{
		unsigned int rq = 0;
		__MapActor_SetAnim(rq, 1);
	}
	{
		unsigned int rm = 0x2682;
		__Func_801776c(rm, 1);
	}
	__CutsceneEnd();
}

void OvlFunc_968_2009048(void) {
    API_ClearFlag(0x161);
    API_Func_8010704(0x23, 8, 1, 3, 0x17, 8);
    API_CopyMapTiles(0x23, 8, 0x17, 8, 1, 3);
    API_CopyMapTiles(0x63, 8, 0x57, 8, 1, 3);
    API_Func_8010704(0x39, 0x37, 3, 3, 0x2e, 0x37);
    API_CopyMapTiles(0x39, 0x37, 0x2e, 0x37, 3, 3);
    API_CopyMapTiles(0x79, 0x37, 0x6e, 0x37, 3, 3);
}

void OvlFunc_968_20090cc(void)
{
    API_SetFlag(0x161);
    API_Func_8010704(0x24, 8, 1, 3, 0x17, 8);
    API_CopyMapTiles(0x24, 8, 0x17, 8, 1, 3);
    API_CopyMapTiles(0x64, 8, 0x57, 8, 1, 3);
    API_Func_8010704(0x35, 0x37, 3, 3, 0x2e, 0x37);
    API_CopyMapTiles(0x35, 0x37, 0x2e, 0x37, 3, 3);
    API_CopyMapTiles(0x75, 0x37, 0x6e, 0x37, 3, 3);
}
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2009150.s");

static inline void CS968_Half(unsigned short *p, int value) { *p = value; }

void OvlFunc_968_2009218(void)
{
    extern unsigned char CS_iwram_3001e40[] __asm__("iwram_3001e40");
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    unsigned char * savedScene;
    int flagValue1;
    int flagValue2;
    int flagValue3;

    savedScene = (unsigned char *)((*(unsigned char **)CS_iwram_3001ebc));
    CS968_Half((unsigned short *)(savedScene + 0xcba), 0);
    CS968_Half((unsigned short *)(savedScene + 0xcb6), 1);
    API_CutsceneStart();
    API_MapActor_SetAnim(0, 1);
    API_Func_801776c(0x2688, 1);
    API_Func_8091220(0x10000, 0);
    API_Func_8091200(0x10005, 0);
    API_Func_8091254(0x78);
    API_CutsceneWait(0x64);
    API_PlaySound(0x8e);
    API_CutsceneWait(30);
    API_Func_8091200(0x7fff, 0);
    API_Func_8091254(0x3c);
    API_CutsceneWait(0x46);
    flagValue1 = API_GetFlag(0x982);
    if (flagValue1 == 0) {
        flagValue2 = API_GetFlag(0x983);
        if (flagValue2 == 0) {
            if ((*(int *)CS_iwram_3001e40 & 1) != 0) {
                API_SetFlag(0x982);
            } else {
                API_SetFlag(0x983);
            }
        }
    }
    flagValue3 = API_GetFlag(0x982);
    if (flagValue3 == 0) {
        API_SetFlag(0x982);
        API_ClearFlag(0x983);
        API_CopyMapTiles(0x67, 27, 0x59, 27, 7, 8);
        API_CopyMapTiles(0x29, 0x5a, 27, 0x5c, 3, 2);
        API_CopyMapTiles(0x29, 0x5a, 29, 0x5d, 3, 2);
        API_CopyMapTiles(0x29, 0x5a, 27, 0x5e, 3, 2);
        API_CopyMapTiles(0x29, 0x5a, 27, 0x60, 3, 2);
        API_CopyMapTiles(0x29, 0x5a, 29, 0x61, 3, 2);
        API_CopyMapTiles(0x29, 0x60, 25, 0x5b, 3, 2);
        API_CopyMapTiles(0x29, 0x5c, 25, 0x5d, 3, 2);
        API_CopyMapTiles(0x29, 0x60, 25, 0x5f, 3, 2);
        API_CopyMapTiles(0x29, 0x60, 25, 0x61, 3, 2);
        API_CopyMapTiles(0x29, 0x60, 27, 0x60, 3, 2);
        API_CopyMapTiles(0x29, 0x60, 29, 0x61, 3, 2);
    } else {
        API_SetFlag(0x983);
        API_ClearFlag(0x982);
        API_CopyMapTiles(0x6f, 27, 0x59, 27, 7, 8);
        API_CopyMapTiles(0x29, 0x5a, 25, 0x5b, 3, 2);
        API_CopyMapTiles(0x29, 0x5a, 25, 0x5d, 3, 2);
        API_CopyMapTiles(0x29, 0x5a, 25, 0x5f, 3, 2);
        API_CopyMapTiles(0x29, 0x5a, 25, 0x61, 3, 2);
        API_CopyMapTiles(0x29, 0x5a, 27, 0x60, 3, 2);
        API_CopyMapTiles(0x29, 0x5a, 29, 0x61, 3, 2);
        API_CopyMapTiles(0x29, 0x5e, 27, 0x5c, 3, 2);
        API_CopyMapTiles(0x29, 0x60, 29, 0x5d, 3, 2);
        API_CopyMapTiles(0x29, 0x5e, 27, 0x5e, 3, 2);
        API_CopyMapTiles(0x29, 0x60, 27, 0x60, 3, 2);
        API_CopyMapTiles(0x29, 0x60, 29, 0x61, 3, 2);
    }
    API_Func_8091200(0x10000, 0);
    API_Func_8091254(20);
    API_CutsceneWait(0x28);
    API_Func_80933d4(0x8000, 0x1000);
    API_Func_80933f8(0x1c80000, -1, 0x21e0000, 1);
    API_Func_8093530();
    API_CutsceneWait(0x32);
    API_Func_80933f8(0x1c80000, -1, 0x1a70000, 1);
    API_Func_8093530();
    API_CutsceneEnd();
    CS968_Half((unsigned short *)(savedScene + 0xcb6), 0);
}

void OvlFunc_968_20094f4(void) {
    struct Actor *a;

    API_CutsceneStart();
    a = (struct Actor *)__MapActor_GetActor(0xc);
    if ((a->pos.x >> 20) == 0x35 && API_GetFlag(0x986) == 0) {
        API_SetFlag(0x986);
        a = (struct Actor *)__MapActor_GetActor(0);
        if (a != 0) {
            API_MapActor_SetPos(1, a->pos.x, a->pos.z);
        }
        API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
        API_MapActor_TravelToAnimWait(1, 0xce << 2, 0x58);
        API_MapActor_TravelToAnimWait(1, 0xce << 2, 0x68);
        API_MapActor_TurnToFaceActor(1, 0, 0);
        API_CutsceneWait(0x14);
        API_MapActor_DoAnim(1, 4);
        API_CutsceneWait(0x14);
        API_MessageID(0x2691);
        API_ActorMessage_Wait(1, 0, 0x14);
        API_Func_8092adc(1, 0, 0xa);
        API_MapActor_Emote(1, 0x80 << 1, 0x3c);
        API_MapActor_Face(1, 0, 0);
        API_CutsceneWait(0x14);
        API_Func_80925cc(1, 2);
        API_CutsceneWait(0x14);
        API_ActorMessage_Wait(1, 0, 0x14);
        API_MapActor_SetAnim(0, 3);
        API_MapActor_DoAnim(1, 3);
        API_CutsceneWait(0x1e);
        API_MapActor_TravelToAnimWait(1, 0xce << 2, 0x58);
        API_MapActor_SetAnim(1, 2);
        a = (struct Actor *)__MapActor_GetActor(0);
        if (a != 0) {
            API_MapActor_TravelTo(1, ((short *)&a->pos.x)[1], ((short *)&a->pos.z)[1]);
        }
        API_MapActor_WaitMovement(1);
        API_MapActor_SetPos(1, 0, 0);
        API_CutsceneEnd();
    }
}

extern void OvlFunc_968_2008374(void);
extern void OvlFunc_968_20094f4(void);

void OvlFunc_968_2009628(void)
{
	__CutsceneStart();
	OvlFunc_968_2008374();
	__CutsceneWait(0x14);
	__CutsceneEnd();
	OvlFunc_968_20094f4();
}

void OvlFunc_968_2009644(void)
{
    struct Actor *a;

    a = (struct Actor *)__MapActor_GetActor(0xd);
    API_CutsceneStart();
    if ((a->pos.x >> 20) == 0x2a) {
        API_CutsceneWait(0x1e);
        API_PlaySound(0xbc);
        a->__unk55 = 0;
        a->floorPos = 0xfffe0000;
        a->pos.y = 0xfffe0000;
        API_SetFlag(0x80 << 2);
        API_CopyMapTiles(0x2c, 0x75, 0x29, 0x75, 3, 5);
    }
    API_CutsceneEnd();
}
void OvlFunc_968_20096a4(void) {
    struct Actor *a;
    short x;
    short z;

    a = (struct Actor *)__MapActor_GetActor(0);
    x = ((short *)&a->pos.x)[1];
    z = ((short *)&a->pos.z)[1];
    if ((unsigned int)(x - 0x2a4) > 7 || z < 0xc5 << 2 || z >= 0xc7 << 2) {
        API_CopyMapTiles(0x35, 0x32, 0x2a, 0x31, 1, 1);
        API_CopyMapTiles(0x37, 0x75, 0x29, 0x75, 3, 5);
        API_ClearFlag(0x201);
        a->__unk55 |= 1;
        a->floorPos = 0;
        a->pos.y = 0;
    } else if (API_GetFlag(0x201) == 0) {
        API_CutsceneStart();
        API_CutsceneWait(5);
        API_CopyMapTiles(0x34, 0x32, 0x2a, 0x31, 1, 1);
        API_CopyMapTiles(0x34, 0x75, 0x29, 0x75, 3, 5);
        API_SetFlag(0x201);
        API_PlaySound(0xa1);
        a->__unk55 &= 0xfe;
        a->floorPos = 0xfffe0000;
        a->pos.y = 0xfffe0000;
        API_CutsceneEnd();
    }
}

struct Foo_968_2009780 {
    unsigned char pad[0xcb6];
    unsigned short f_cb6;
    unsigned char pad2[0xcba - 0xcb6 - 2];
    unsigned short f_cba;
};

void OvlFunc_968_2009780(void) {
    extern unsigned char iwram_3001ebc[];
    struct Foo_968_2009780 *p;

    p = *(struct Foo_968_2009780 **)iwram_3001ebc;
    p->f_cba = 0;
    p->f_cb6 = 1;
    API_CutsceneStart();
    API_MessageID(0x267d);
    API_MapActor_Face(0xa, 0, 0);
    API_CutsceneWait(0xa);
    API_ActorMessage_Wait(0xa, 0, 0x14);
    API_Func_8092adc(0xa, 0xe0 << 8, 0);
    API_Func_80933d4(0x80 << 9, 0x80 << 6);
    API_Func_80933f8(0xe0 << 17, -1, 0xd8 << 17, 1);
    API_Func_8093530();
    API_ActorMessage(0xa, 0);
    API_CutsceneEnd();
}

void OvlFunc_968_2009808(void)
{
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __MapActor_SetAnimSpeed(int, int);
    extern void __Func_8092950(int, int);
    extern unsigned int OvlFunc_968_2008058(unsigned int, unsigned int, unsigned int, unsigned int);
    struct Actor *actor;

    actor = (struct Actor *)__MapActor_GetActor(0);
    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    actor->facing = 0x80 << 7;
    API_MapActor_SetSpeed(0, 0xc0 << 10, 0xc0 << 9);
    API_MapActor_TravelToWait(0, ((short *)&actor->pos.x)[1], 0x8a << 2);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(0, 0x16);
    API_CutsceneWait(30);
    API_MapActor_Surprise(0, 0x81 << 1);
    API_Func_80925cc(0, 2);
    API_CutsceneWait(20);
    actor->facing = 0xc0 << 8;
    API_MapActor_SetAnim(0, 5);
    __MapActor_SetAnimSpeed(0, 0x18);
    API_CutsceneWait(40);
    actor->gravity = 0x9999;
    actor->bounce = 0;
    OvlFunc_968_2008058(actor->pos.x, 0, actor->pos.z + (0x90 << 15), 0xdf);
    API_Func_8010704(0x22, 0x23, 5, 1, 0x22, 0x22);
    OvlFunc_968_200894c(0);
    __Func_8092950(0, 0xf);
    API_Func_8091e9c(0x14);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_CutsceneEnd();
}
void OvlFunc_968_20098f8(void)
{
    struct Actor *a;
    unsigned int i;

    __MapActor_GetActor(8);
    API_CutsceneStart();
    API_Func_8010704(0x13, 0x2c, 4, 1, 0xc, 0x2c);
    API_Func_8010704(0x11, 0x33, 2, 2, 0xb, 0x33);
    for (i = 0; i < 3; i++) {
        a = (struct Actor *)__MapActor_GetActor(i + 8);
        API_Func_8010704(0xc, 0x32, 1, 1, a->pos.x >> 20, a->pos.z >> 20);
    }
    OvlFunc_968_2008910(0xa, 9);
    API_CutsceneEnd();
}

extern void OvlFunc_968_20098f8(void);

void OvlFunc_968_200996c(void)
{
  __CutsceneStart();
  {
    unsigned int t1 = 0xc;
    unsigned int t2 = 0x2c;
    __Func_8010704(0x13, 0x2c, 4, 1, t1, t2);
  }
  OvlFunc_968_2008374();
  OvlFunc_968_20098f8();
  __CutsceneEnd();
}

extern void __Func_8012078(int a, unsigned int b, unsigned int c, int d);

void OvlFunc_968_200999c(void) {
    unsigned int i;
    unsigned char *p;

    i = 0;
    do {
        p = __MapActor_GetActor(i + 11);
        i++;
        __Func_8012078(0, *(unsigned int *)(p + 8), *(unsigned int *)(p + 0x10), 0x2d);
    } while (i <= 1);
}


void OvlFunc_968_20099c0(void) {
    unsigned int i;
    unsigned char *p;

    i = 0;
    do {
        p = __MapActor_GetActor(i + 11);
        if (*(int *)(p + 0xc) > (int)0xfff00000) {
            __Func_8012078(0, *(unsigned int *)(p + 8), *(unsigned int *)(p + 0x10), 0xff);
        }
        i++;
    } while (i <= 1);
}

extern int OvlFunc_968_2008cc8(void);

void OvlFunc_968_20099f0(void)
{
    __CutsceneStart();
    if (OvlFunc_968_2008cc8() == 0) {
        OvlFunc_968_200999c();
        OvlFunc_968_2008374();
        OvlFunc_968_20099c0();
    }
    __CutsceneEnd();
}

void OvlFunc_968_2009a14(int arg0) {
    struct Actor *actor;

    actor = (struct Actor *)arg0;
    actor->flags |= 2;
    actor->__unk55 = 0;
    API_Func_8010704(9, 0x18, 1, 1, actor->pos.x >> 20, actor->pos.z >> 20);
}

void OvlFunc_968_2009a50(int arg0)
{
    extern unsigned int OvlFunc_968_2008058(unsigned int, unsigned int, unsigned int, unsigned int);
    struct Actor *actor;
    struct Sprite *sprite;
    int obj;

    actor = (struct Actor *)arg0;
    sprite = actor->sprite;
    if (sprite->oam.priority == 3) {
        sprite->oam.priority = 1;
        actor->bounce = 0;
        obj = OvlFunc_968_2008058(actor->pos.x, 0, 0x80 << 18, 0xdf);
        OvlFunc_968_200894c(actor);
        actor->pos.x = 0;
        actor->pos.z = 0;
        API_DeleteActor(obj);
    } else {
        OvlFunc_968_20099c0();
    }
}

extern void OvlFunc_968_2009a14(int);
extern void OvlFunc_968_2009a50(int);

void OvlFunc_968_2009a9c(void) {
    int r5;
    __CutsceneStart();
    r5 = __MapActor_GetActor(0xb);
    if (((*(int *)((char *)r5 + 8)) >> 20) == 8) {
        OvlFunc_968_200894c();
        OvlFunc_968_2009a14(r5);
    } else {
        OvlFunc_968_2009a50(r5);
    }
    r5 = __MapActor_GetActor(0xc);
    if (((*(int *)((char *)r5 + 8)) >> 20) == 7) {
        OvlFunc_968_200894c();
        OvlFunc_968_2009a14(r5);
    } else {
        OvlFunc_968_2009a50(r5);
    }
    __CutsceneEnd();
}

extern unsigned char *CS968D_Field __asm__("iwram_3001e70");
extern unsigned int CS968D_Frame __asm__("iwram_3001e40");
extern unsigned char *CS968D_Scene __asm__("iwram_3001ebc");
struct CS968D_Effect {
    int priority, animation;
    int scaleX, scaleY, targetScaleX, targetScaleY;
    short spriteId;
    void *script;
    unsigned short rotation, angularVelocity;
    void *update;
};
void OvlFunc_968_2009af0(void)
{
    struct CS968D_Effect data;
    struct Actor *actor;
    int *scroll;
    int x, z, effectX, countdown;
    unsigned int frame;
    scroll = (int *)(CS968D_Field + 0x164);
    actor = ((struct Actor *)__MapActor_GetActor(0));
    x = (short)(actor->pos.x >> 16);
    z = (short)(actor->pos.z >> 16);
    actor->pos.y = 0;
    if ((unsigned int)(x - 308) <= 7 && z >= 532 && z < 540) {
        actor->pos.y = -0x20000;
        if (API_GetFlag(0x300)) return;
        API_CutsceneStart();
        API_PlaySound(0xa1);
        API_SetFlag(0x300);
        API_CopyMapTiles(26, 33, 19, 33, 1, 1);
        API_CutsceneWait(30);
        API_PlaySound(0xef);
        API_Func_8012330(0x10000, 0x10000, 0x10000);
        API_CutsceneWait(20);
        effectX = 0x1200000;
        x = 29;
        countdown = 40;
        for (frame = 0; frame <= 479; frame++) {
            scroll[2] += 0x3333;
            effectX -= 0x3333;
            data.priority = 2;
            data.scaleX = ((__Random() * 3) >> 16) * 0x3333 + 0xcccc;
            data.scaleY = ((__Random() * 3) >> 16) * 0x3333 + 0xcccc;
            data.angularVelocity = ((__Random() << 12) >> 16) + 0xf800;
            OvlFunc_968_2008118(effectX, 0, 0x2100000, 0,
                                -(int)((CS968D_Frame & 1) * 0x30000), 0,
                                0x8a0000, &data);
            if (frame == 240) effectX -= 0x300000;
            if (countdown == 0) {
                countdown = 40;
                if (frame <= 240) {
                    x -= 4;
                    API_CopyMapTiles(x, 50, 15, 32, 3, 4);
                } else {
                    x += 4;
                    API_CopyMapTiles(x, 45, 9, 32, 3, 4);
                }
            }
            API_WaitFrames(1);
            countdown--;
        }
        scroll[2] += 0x8000;
        scroll[2] = (scroll[2] / 0x10000) * 0x10000;
        API_Func_8010704(15, 32, 3, 1, 9, 32);
        API_Func_8010704(12, 32, 3, 1, 15, 32);
        API_PlaySound(0x120);
        API_PlaySound(0xbc);
        API_Func_8012330(-1, -1, 0xe666);
        API_Func_8012350();
        *(int *)(CS968D_Scene + 0x1c0) = 0x202;
        API_Func_8091e9c(11);
        API_CutsceneEnd();
    }
}
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2009d48.s");

void OvlFunc_968_2009f28(void){
    int a;
    int b;
    __CutsceneStart();
    if (OvlFunc_968_2008cc8() == 0)    {
        a = 0x2d;
        b = 0x2b;
        API_Func_8010704(0x6d, 0x2b, 7, 5, a, b);
        OvlFunc_968_2008374();
    }

    __CutsceneEnd();
	OvlFunc_968_2009d48();
}



INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2009f60.s");

void OvlFunc_968_200a26c(void) {
    int a;
    int b;
    API_CutsceneStart();
    if (OvlFunc_968_2008cc8() == 0) {
        a = 0x2c;
        b = 0x27;
        __Func_8010704(0x6c, 0x27, 0xd, 7, a, b);
        OvlFunc_968_2008374();
    }
    API_CutsceneEnd();
    OvlFunc_968_2009f60();
}


unsigned int OvlFunc_968_200a2a4(unsigned int arg0) {
    unsigned int v0;
    unsigned int v3;
    unsigned int v2;

    v0 = __MapActor_GetActor(*(short *)((char *)arg0 + 0x64));
    v3 = *(unsigned int *)((char *)v0 + 0xc);
    v2 = 0x80;
    v2 <<= 13;
    v3 += v2;
    *(unsigned int *)((char *)arg0 + 0xc) = v3;
    return 0;
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200a2c8.s");
void OvlFunc_968_200a3d4(unsigned int actorId)
{
    extern void OvlFunc_968_2008b08(unsigned int);
    struct Actor *actor;
    struct Actor *other;
    int y;
    unsigned int i;
    unsigned int otherId;
    int new_y;

    y = 0xffb00000;
    actor = NULL;
    for (i = 0; i <= 5; i++) {
        otherId = i + 8;
        if (otherId == actorId) {
            continue;
        }
        other = (struct Actor *)__MapActor_GetActor(otherId);
        actor = (struct Actor *)__MapActor_GetActor(actorId);
        if ((other->pos.x >> 20) == (actor->pos.x >> 20) &&
            (other->pos.z >> 20) == (actor->pos.z >> 20)) {
            new_y = other->pos.y + (0x80 << 13);
            if (y <= new_y) {
                actor->waveCounter = otherId;
                y = new_y;
            }
        }
    }
    API_MapActor_SetSpeed(actorId, 0x80 << 11, 0x80 << 10);
    API_Actor_TravelTo(actor, actor->pos.x, y, actor->pos.z);
    API_MapActor_WaitMovement(actorId);
    API_PlaySound(0xbc);
    OvlFunc_968_2008b08(actorId);
    API_CutsceneWait(0x1e);
}
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200a47c.s");


void OvlFunc_968_200a6e4(void) {
    __CutsceneStart();
    OvlFunc_968_2008374();
    __CutsceneEnd();
}

struct CS968P_Effect {
    int priority, animation;
    int scaleX, scaleY, targetScaleX, targetScaleY;
    short spriteId;
    void *script;
    unsigned short rotation, angularVelocity;
    void *update;
};
extern unsigned char *CS968P_Map __asm__("iwram_3001e70");
extern unsigned char *CS968P_Field __asm__("iwram_3001ebc");
extern unsigned int CS968P_Frame __asm__("iwram_3001e40");
void OvlFunc_968_200a6f8(void)
{
    vec3_t *offset = (vec3_t *)(CS968P_Map + 0x164);
    struct Actor *actor = ((struct Actor *)__MapActor_GetActor(0));
    int column = ((short *)&actor->pos.x)[1];
    int z = ((short *)&actor->pos.z)[1];
    struct CS968P_Effect data;
    int dustX;
    int tileCountdown;
    unsigned int frame;

    actor->pos.y = 0;
    if ((unsigned int)(column - 0x214) > 7) return;
    if (z < 0x144) return;
    if (z >= 0x14c) return;
    actor->pos.y = -0x20000;
    if (API_GetFlag(0x306)) return;

    API_CutsceneStart();
    API_CopyMapTiles(63, 29, 33, 20, 1, 1);
    API_PlaySound(0xa1);
    API_CopyMapTiles(44, 83, 44, 80, 3, 3);
    API_CutsceneWait(30);
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    API_PlaySound(0xef);
    API_CutsceneWait(20);
    dustX = 0x2680000;
    column = 0;
    tileCountdown = 60;
    frame = 0;
    do {
        offset->z += 0x3333;
        if (dustX >= 0x2400000 && frame > 40) {
            dustX -= 0x3333;
            data.priority = 2;
            data.scaleX = ((__Random() * 3) >> 16) * 0x3333 + 0xcccc;
            data.scaleY = ((__Random() * 3) >> 16) * 0x3333 + 0xcccc;
            data.angularVelocity = ((__Random() << 12) >> 16) + 0xf800;
            OvlFunc_968_2008118(dustX, 0, 0x1200000, 0,
                               -(int)((CS968P_Frame & 1) * 0x30000),
                               0, 0x8a0000, &data);
            if (tileCountdown == 0) {
                tileCountdown = 40;
                column += 4;
                API_CopyMapTiles(column, 56, 36, 17, 3, 4);
            }
        }
        API_WaitFrames(1);
        ++frame;
        --tileCountdown;
    } while (frame <= 319);
    offset->z += 0x8000;
    offset->z = (offset->z / 0x10000) * 0x10000;
    API_PlaySound(0x120);
    API_PlaySound(0xbc);
    API_Func_8012330(-1, -1, 0xe666);
    API_Func_8012350();
    *(int *)(CS968P_Field + 0x1c0) = 0x202;
    API_Func_8091e9c(18);
    API_CutsceneEnd();
}
struct CS968Q_Effect {
    int priority, animation;
    int scaleX, scaleY, targetScaleX, targetScaleY;
    short spriteId;
    void *script;
    unsigned short rotation, angularVelocity;
    void *update;
};
extern unsigned char *CS968Q_Map __asm__("iwram_3001e70");
extern unsigned char *CS968Q_Field __asm__("iwram_3001ebc");
extern unsigned int CS968Q_Frame __asm__("iwram_3001e40");
void OvlFunc_968_200a90c(void)
{
    vec3_t *offset = (vec3_t *)(CS968Q_Map + 0x164);
    struct Actor *actor = ((struct Actor *)__MapActor_GetActor(0));
    int column = ((short *)&actor->pos.x)[1];
    int z = ((short *)&actor->pos.z)[1];
    struct CS968Q_Effect data;
    int dustX;
    int tileCountdown;
    unsigned int frame;

    actor->pos.y = 0;
    if ((unsigned int)(column - 0x314) > 7) return;
    if (z < 0x144) return;
    if (z >= 0x14c) return;
    actor->pos.y = -0x20000;
    if (API_GetFlag(0x307)) return;

    API_CutsceneStart();
    API_CopyMapTiles(63, 29, 49, 20, 1, 1);
    API_PlaySound(0xa1);
    API_CutsceneWait(30);
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    API_PlaySound(0xef);
    API_CutsceneWait(20);
    dustX = 0x2c00000;
    column = 61;
    tileCountdown = 60;
    frame = 0;
    do {
        offset->z -= 0x3333;
        dustX += 0x3333;
        if (dustX >= 0x2c80000 && dustX < 0x2f00000) {
            data.priority = 2;
            data.scaleX = ((__Random() * 3) >> 16) * 0x3333 + 0xcccc;
            data.scaleY = ((__Random() * 3) >> 16) * 0x3333 + 0xcccc;
            data.angularVelocity = ((__Random() << 12) >> 16) + 0xf800;
            OvlFunc_968_2008118(dustX, 0, 0x1200000, 0,
                               -(int)((CS968Q_Frame & 1) * 0x30000),
                               0, 0x8a0000, &data);
            if (tileCountdown == 0) {
                tileCountdown = 40;
                column -= 4;
                API_CopyMapTiles(column, 56, 44, 17, 3, 4);
            }
        }
        API_WaitFrames(1);
        ++frame;
        --tileCountdown;
    } while (frame <= 319);
    offset->z += 0x8000;
    offset->z = (offset->z / 0x10000) * 0x10000;
    API_PlaySound(0x120);
    API_PlaySound(0xbc);
    API_Func_8012330(-1, -1, 0xe666);
    API_Func_8012350();
    *(int *)(CS968Q_Field + 0x1c0) = 0x202;
    API_Func_8091e9c(19);
    API_CutsceneEnd();
}
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200ab14.s");
void OvlFunc_968_200aee4(void)
{
    extern int OvlFunc_968_2008cc8();
    extern void OvlFunc_968_200ab14();

    __CutsceneStart();
    if (OvlFunc_968_2008cc8() == 0) {
        API_Func_8010704(0x45, 0x30, 4, 2, 5, 0x30);
        API_Func_8010704(0x49, 0x25, 9, 0xd, 9, 0x25);
        OvlFunc_968_2008374();
    }
    __CutsceneEnd();
    OvlFunc_968_200ab14();
}

extern void __Func_8092708(int, int, int);
extern void __Func_8091e9c(int);

void OvlFunc_968_200af30(void)
{
    __CutsceneStart();
	API_MapActor_SetSpeed(0, 0x80 << 8, 0x80 << 7);
	API_MapActor_TravelToAnimWait(0, 0x82 << 2, 0xb2 << 2)	;
	API_Func_8092adc(0, 0x80 << 7, 0xa);
	OvlFunc_968_2008058(0x82 << 18, 0, 0xc4 << 18, 0xdf);
    __Func_8092708(0, 6, 0);
    API_CutsceneWait(0x3c);
	__Func_8091e9c(0x14);
	__CutsceneEnd();
}

extern unsigned char _EVENT_b5[], _EVENT_b6[], _EVENT_b7[], _EVENT_b8[], _EVENT_b9[], _EVENT_ba[];
extern unsigned char Lm968_6e44[] __asm__(".Lm968_6e44");
extern unsigned char Lm968_6f1c[] __asm__(".Lm968_6f1c");
extern unsigned char Lm968_7120[] __asm__(".Lm968_7120");
extern unsigned char Lm968_7300[] __asm__(".Lm968_7300");
extern unsigned char Lm968_73b4[] __asm__(".Lm968_73b4");
extern unsigned char Lm968_74f8[] __asm__(".Lm968_74f8");

int VenusLighthouse_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_b5) return (int)Lm968_6e44;
    if (ev == (int)_EVENT_b6) return (int)Lm968_6f1c;
    if (ev == (int)_EVENT_b7) return (int)Lm968_7120;
    if (ev == (int)_EVENT_b8) return (int)Lm968_7300;
    if (ev == (int)_EVENT_b9) return (int)Lm968_73b4;
    if (ev == (int)_EVENT_ba) return (int)Lm968_74f8;
    return (int)Lm968_6f1c;
}

void OvlFunc_968_200b00c(unsigned int arg0)
{
  unsigned char *p;
  int new_var;
  p = __MapActor_GetActor(arg0);
  p[0x55] = 0;
  p[0x59] = p[0x59] & 0xfc;
  __Actor_SetSpriteFlags(p, 0);
  __Actor_SetAnim(p, 5);
  __Func_8092b08(arg0, 3);
  new_var = p[0x23] | 2;
  p[0x23] = new_var;
}


void OvlFunc_968_200b050(void) {
    unsigned int i;

    i = 0xf;
    do {
        __MapActor_GetActor(i);
        i++;
    } while (i <= 0x12);
}

INCLUDE_ASM("asm/maps/venus_lighthouse/VenusLighthouse_MapInit.s");

extern void OvlFunc_968_200c048(unsigned int);

void OvlFunc_968_200bfe4(void)
{
	unsigned int stack_buf[3];

	stack_buf[0] = 0;
	stack_buf[2] = (unsigned int)-1;
	OvlFunc_968_200c048((unsigned int)stack_buf);
}


void OvlFunc_968_200bffc(void)
{
	unsigned int stack_buf[3];

	stack_buf[0] = 0;
	stack_buf[2] = 1;
	OvlFunc_968_200c048((unsigned int)stack_buf);
}


void OvlFunc_968_200c014(void)
{
	unsigned int stack_buf[3];

	stack_buf[0] = (unsigned int)-1;
	stack_buf[2] = 0;
	OvlFunc_968_200c048((unsigned int)stack_buf);
}


void OvlFunc_968_200c030(void)
{
	unsigned int stack_buf[3];

	stack_buf[0] = 1;
	stack_buf[2] = 0;
	OvlFunc_968_200c048((unsigned int)stack_buf);
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200c048.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200c2bc.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200c520.s");

extern void OvlFunc_968_200c520(int a, int b);

void OvlFunc_968_200c5f0(void) {
    OvlFunc_968_200c520(0xd8 << 1, 0x20);
}


void OvlFunc_968_200c600(void) {
    OvlFunc_968_200c520(0x8c << 2, 0x2c);
}

extern struct Actor *CS968C_Actor(int) __asm__("__MapActor_GetActor");
extern void CS968C_SpriteFlags(struct Actor *, int) __asm__("__Actor_SetSpriteFlags");
extern void CS968C_StartTask(void (*)(void), int) __asm__("__StartTask");
struct CS968C_Field { unsigned char pad[0x1c0]; int flags; };
extern struct CS968C_Field *CS968C_Field __asm__("iwram_3001ebc");
struct CS968C_Effect {
    int priority, animation, scaleX, scaleY, targetX, targetY;
    short sprite, unused;
    void *script;
    short rotation, angularSpeed;
    void *update;
};
void OvlFunc_968_200c610(void)
{
    struct CS968C_Effect effect;
    struct CS968C_Effect *effectPtr;
    unsigned int repeated, row, column;
    CS968C_Field->flags = 0x202;
    API_CutsceneStart();
    CS968C_SpriteFlags(CS968C_Actor(0), 0);
    __Func_8092950(0, 15);
    __Func_8091ff0(0xaa);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(40);
    API_PlaySound(0xa2);
    API_Func_80933d4(0x8000, 0x1000);
    API_Func_80933f8(0x1b80000, -1, 0x1680000, 1);
    repeated = 0;
    row = 0;
    effectPtr = &effect;
    for (; row <= 12; ++row) {
        unsigned int z;
        effect.scaleX = (((__Random() << 1) >> 16) * 0x4ccc) + 0x17ffc;
        effect.scaleY = (((__Random() << 1) >> 16) * 0x4ccc) + 0x17ffc;
        effect.angularSpeed = (((__Random() << 12) >> 16) + 0xf800);
    repeat:
        for (column = 0; column <= 3; ++column) {
            int x;
            z = 0xc00000 + row * 0x100000 + column * 0x40000;
            x = (((__Random() * 7) >> 16) << 19) + 0x1a00000;
            OvlFunc_968_2008118(x, 0, z, 0, 0, 0, 0x880000, effectPtr);
        }
        API_WaitFrames(3);
        if (row == 3) {
            if (repeated <= 2) {
                ++repeated;
                goto repeat;
            }
            if (repeated == 3) CS968C_StartTask(OvlFunc_968_200c5f0, 0xc80);
        }
        API_CopyMapTiles(0x35, row + 12, 0x1a, row + 12, 3, 1);
    }
    API_CopyMapTiles(0x51, 0x29, 0x59, 14, 9, 2);
    API_Func_8093530();
    API_Func_80933f8(-1, -1, -1, 0);
    API_CutsceneWait(60);
    API_SetFlag(0x306);
    API_Func_8091e9c(19);
    API_CutsceneEnd();
}
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200c7c0.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200c968.s");
extern void OvlFunc_968_200c968(struct Actor *);
void OvlFunc_968_200ca2c(void)
{
    struct Actor *player = ((struct Actor *)__MapActor_GetActor(0));
    struct Actor *platform = ((struct Actor *)__MapActor_GetActor(20));
    unsigned char *motionFlags;
    unsigned int i;
    __CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    __Func_800fe9c();
    __WaitFrames(1);
    player->pos.y = 0x820000;
    player->gravity = 0x8000;
    player->bounce = 0;
    motionFlags = &player->__unk55;
    *motionFlags = 0;
    __MapTransitionIn();
    __WaitMapTransition();
    __PlaySound(0xcc);
    __CutsceneWait(30);
    *motionFlags = 3;
    __CutsceneWait(24);
    API_MapActor_Surprise(0, 0x101);
    API_MapActor_SetAnim(0, 22);
    *motionFlags &= 0xfe;
    platform->pos.y -= 0x30000;
    player->pos.y -= 0x30000;
    player->floorPos -= 0x30000;
    __WaitFrames(2);
    platform->pos.y -= 0x20000;
    player->pos.y -= 0x20000;
    player->floorPos -= 0x20000;
    __WaitFrames(10);
    platform->pos.y += 0x20000;
    player->pos.y += 0x20000;
    player->floorPos += 0x20000;
    __WaitFrames(4);
    platform->pos.y += 0x20000;
    player->pos.y += 0x20000;
    player->floorPos += 0x20000;
    __WaitFrames(4);
    platform->pos.y += 0x10000;
    player->pos.y += 0x10000;
    player->floorPos += 0x10000;
    *motionFlags = 0;
    platform->__unk55 = 0;
    API_MapActor_Surprise(0, 0x100);
    API_MapActor_SetAnim(0, 1);
    __CutsceneWait(40);
    player->update = (actorfun_t)OvlFunc_968_200c968;
    __CutsceneWait(60);
    __Func_8092b08(0, 1);
    __Func_8092b08(20, 1);
    __PlaySound(0x11);
    __PlaySound(0x134);
    __SetFlag(0x101);
    for (i = 0; i <= 127; ++i) {
        player->pos.y += 0x10000;
        player->floorPos += 0x10000;
        platform->pos.y += 0x10000;
        __WaitFrames(1);
    }
    __Func_8091e9c(21);
}
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200cbd8.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/venus_lighthouse_data.s");

INCLUDE_ASM("asm/maps/venus_lighthouse/imports.s");
