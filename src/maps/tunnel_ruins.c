/* rom_7ed0a0 (overlay file 964): consolidated TU — tunnel_ruins map overlay. */

#include "nonmatching.h"

__asm__(".set __umodsi3, _umodsi3_RAM");

typedef union { int raw; struct { unsigned short lo; short hi; } half; } Fx32Parts;

__asm__(".set __divsi3, _divsi3_RAM");
#include "api.h"
#include "actor.h"
#include "field.h"

#include "state/global_state.h"

extern unsigned int Lm964_31f0[] __asm__(".Lm964_31f0");
extern GlobalState gState;
extern unsigned char gScript_888__0200b81c[];
extern unsigned char Lconst_ad[] __asm__(".Lconst_ad");
__asm__(".equ .Lconst_ad, 0xad");

INCLUDE_ASM("asm/maps/tunnel_ruins/exports.s");

/* Void declarations for veneer callees. */
extern void __Actor_SetAnim();
extern void __Actor_WaitMovement();
extern void __CutsceneEnd();
extern void __CutsceneStart();
extern void __CutsceneWait();
extern void __Func_8092950();
extern void __MapActor_PlayPendingSound();
extern void __PlaySound();




extern int OvlFunc_964_20082a8();
extern void OvlFunc_964_20099bc();
extern void OvlFunc_964_2009f70();

extern int Func_8000948(int);

int OvlFunc_964_2008030(int *a, int *b)
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

extern unsigned char iwram_3001ebc[];

void *OvlFunc_964_200806c(int *pos, void *arg1)
{
    struct Actor **actors;
    unsigned int i;

    actors = (struct Actor **)(*(char **)iwram_3001ebc + 0x14);
    for (i = 8; i <= 0x41; i++) {
        struct Actor *actor = actors[i];

        if (pos[0] >> 20 == actor->pos.x >> 20 &&
            pos[1] / 0x10000 == actor->pos.y / 0x10000 &&
            pos[2] >> 20 == actor->pos.z >> 20) {
            return actor;
        }
    }
    return NULL;
}
void OvlFunc_964_20080c4(void) {
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
    t = Lm964_31f0[idx];
    stk[0] = player->pos.x + (t & 0xffff0000);
    stk[1] = player->pos.y;
    t <<= 16;
    stk[2] = player->pos.z + t;
    obj = OvlFunc_964_200806c(stk, player);
    if (obj == 0) {
        return;
    }
    t = Lm964_31f0[idx];
    stk[0] = obj->pos.x + (t & 0xffff0000);
    stk[1] = obj->pos.y;
    t <<= 16;
    stk[2] = obj->pos.z + t;
    res = OvlFunc_964_200806c(stk, obj);
    if (res != 0) {
        if (res->collision & 1) {
            return;
        }
    }
    stk[0] = obj->pos.x;
    stk[1] = obj->pos.y + (0x80 << 13);
    stk[2] = obj->pos.z;
    res = OvlFunc_964_200806c(stk, obj);
    if (res != 0) {
        if (res->collision & 1) {
            return;
        }
    }
    obj->layer = 2;
    t = Lm964_31f0[idx];
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
    player->pos.x = ((Fx32Parts *)&player->pos.x)->half.hi << 16;
    player->pos.z = ((Fx32Parts *)&player->pos.z)->half.hi << 16;
    __Actor_SetAnim(player, 1);
}

struct MapTile_OvlFunc_964_2008244 {
    unsigned short a;
    unsigned char b;
    unsigned char c;
};

extern unsigned char iwram_3001e70[];
extern unsigned char gBuffer[];

int OvlFunc_964_2008244(unsigned int layer, int x, int y, unsigned int w, unsigned int h, unsigned int val) {
    char *base;
    struct MapTile_OvlFunc_964_2008244 *buf;
    unsigned int i;
    unsigned int j;

    base = *(char **)iwram_3001e70;
    if (base == 0)
        return 0;

    if (layer <= 2) {
        int offset = 0x130 + layer * 0x30;
        buf = *(struct MapTile_OvlFunc_964_2008244 **)(base + offset);
    } else {
        buf = (struct MapTile_OvlFunc_964_2008244 *)gBuffer;
    }

    buf += x + (y << 7);
    for (i = 0; i < h; i++) {
        struct MapTile_OvlFunc_964_2008244 *row = buf + (i << 7);
        for (j = 0; j < w; j++) {
            row->b = val;
            row++;
        }
    }
    return 0;
}

extern unsigned int L31f0[] __asm__(".Lm964_31f0");
extern int L3230[] __asm__(".Lm964_3230");
extern void *OvlFunc_964_200806c(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_964_20082a8(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L31f0[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_964_200806c(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L3230;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L31f0[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    if (__TestCollision(arg0, stk) > 0) {
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
done:
    return 0;
}

extern int PushBlockIds_964[] __asm__(".Lm964_3230");
extern int PushBlockBoxes_964[] __asm__(".Lm964_3248");
extern unsigned int PushBlockDirs_964[] __asm__(".Lm964_31f0");
extern struct MapState *gPushBlockMapState __asm__("iwram_3001ebc");

void *OvlFunc_964_200834c(int *dir, int *arg1, int *arg2)
{
    struct MapState *map;
    unsigned char *hero;
    struct Actor **p_actor;
    struct Actor *actor;
    int *p;
    unsigned int i;
    short val;
    unsigned int k;
    int d;
    int hero_x;
    int target_x;
    int target_z;
    short ax;
    short az;
    int b_x1;
    int b_z1;
    int b_x2;
    int b_z2;

    map = gPushBlockMapState;
    hero = (unsigned char *)__MapActor_GetActor(0);
    *dir = *(unsigned short *)(hero + 6) >> 12;

    p_actor = (struct Actor **)&map->actors[8];
    for (i = 8; i <= 0x41; p_actor++, i++) {
        actor = *p_actor;
        p = *(int **)((char *)actor + 0x50);
        p = *(int **)((char *)p + 0x28);
        k = 0;
        val = *(short *)p;
        for (; k <= 5; k++) {
            if (val == PushBlockIds_964[k]) {
                *arg2 = k;
                hero_x = *(int *)(hero + 8) >> 16;
                d = PushBlockDirs_964[*dir];
                target_x = (hero_x + (d >> 16)) >> 4;
                target_z = ((*(int *)(hero + 16) >> 16) + (short)d) >> 4;

                ax = *(short *)((char *)actor + 10);
                b_x1 = (ax + PushBlockBoxes_964[k * 4 + 0]) >> 4;
                az = *(short *)((char *)actor + 18);
                b_z1 = (az + PushBlockBoxes_964[k * 4 + 1]) >> 4;
                b_x2 = (ax + PushBlockBoxes_964[k * 4 + 2]) >> 4;
                b_z2 = (az + PushBlockBoxes_964[k * 4 + 3]) >> 4;

                if (b_x1 <= target_x && target_x < b_x2 &&
                    b_z1 <= target_z && target_z < b_z2) {
                    if (k & 1) {
                        if (b_x1 != *(int *)(hero + 8) >> 20) {
                            *arg1 = i;
                            return actor;
                        }
                    } else {
                        if (b_z1 != *(int *)(hero + 16) >> 20) {
                            *arg1 = i;
                            return actor;
                        }
                    }
                }
            }
        }
    }

    return 0;
}


extern int L3248[] __asm__(".Lm964_3248");

int OvlFunc_964_2008474(void *arg0)
{
    int dir;
    int cur[3];
    void *obj;
    int idx;
    int steps;
    int countY;
    int countX;
    int t2;
    int t3;
    int yy;
    int *cp;
    int i;
    int j;
    unsigned int t;
    int m1;
    int m2;
    *(int *)((char *)arg0 + 0x14) = 0;
    obj = OvlFunc_964_200834c(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = L3248[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L3248[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = L3248[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L3248[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L31f0[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L31f0[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (L3248[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (L3248[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L31f0[dir] & 0xffff0000;
        cur[2] += L31f0[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L31f0[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern int L31f0__a2[] __asm__(".Lm964_31f0");
void __MapActor_SetSpeed(unsigned int, int, int);
extern void __MapActor_SetAnim(unsigned int, unsigned int);
extern void __MapActor_TravelBy(unsigned int, int, int);
extern void __Func_8010704(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned char *__MapActor_GetActor(unsigned int);
extern void __Actor_TravelTo(void *, int, int, int);
void __MapActor_WaitMovement(unsigned int);
#include "field/push_block.h"

void OvlFunc_964_2008608(struct Pk arg)
{
    int va[3];

    int vb[3];
    unsigned char *env;
    unsigned char *actor;
    int *ap;
    unsigned int dir;
    int h;
    int w;
    int t1;
    int t2;
    int zz;
    int camx;
    int camz;
    int v;
    int s5;
    int s6;
    int x1;
    int x2;
    int u1;
    int u2;

    env = (unsigned char *)*(int *)iwram_3001e70;
    dir = *(unsigned short *)(__MapActor_GetActor(0) + 6) >> 12;
    actor = (unsigned char *)__MapActor_GetActor(arg.b);
    t1 = L3248[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L3248[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L3248[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L3248[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (L3248[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (L3248[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_964_2008244(0, vb[0], vb[2], w, h, 0);
    API_MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_964_20082a8;
    __CutsceneWait(4);
    if (dir - 6 <= 7)
        __Actor_SetAnim(actor, 3);
    else
        __Actor_SetAnim(actor, 2);
    __PlaySound(0xef);
    __Actor_TravelTo(actor, arg.x, arg.y, arg.z);
    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 2);
    API_MapActor_SetSpeed(0, 0x4ccc, 0x1999);
    __MapActor_TravelBy(0, (short)(L31f0__a2[dir] >> 16) / 2, (short)(L31f0__a2[dir]) / 2);
    if (arg.arg5)
        arg.arg5();
    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 1);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = 0;
    __Actor_WaitMovement(actor);
    __PlaySound(0x120);
    __PlaySound(0xd5);
    *(int *)(actor + 8) = arg.x;
    *(int *)(actor + 0x10) = arg.z;
    *(int *)(actor + 0x24) = 0;
    *(int *)(actor + 0x2c) = 0;
    __Actor_SetAnim(actor, 1);
    x1 = arg.x;
    x2 = arg.z;
    x1 += L3248[arg.a << 2] << 16;
    x2 += L3248[(arg.a << 2) + 1] << 16;
    x1 >>= 20;
    x2 >>= 20;
    arg.x = x1;
    arg.z = x2;
    camx = *(int *)(env + 0x13c);
    camx = camx >> 20;
    camz = *(int *)(env + 0x140);
    camz = camz >> 20;
    s5 = camx + arg.x;
    s6 = camz + arg.z;
    __Func_8010704(arg.x, arg.z, w, h, s5, s6);
    OvlFunc_964_2008244(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_964_2008244(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (L3248[arg.a << 2] << 16);
    u2 = ap[2] + (L3248[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_964_2008244(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

int OvlFunc_964_20088c0(unsigned int actorId)
{
    struct Pk arg;
    unsigned char *env;
    unsigned char *actor;
    unsigned int i;
    int t3;
    int t4;
    int h;
    int w;
    int t1;
    int t2;
    int raw;
    int camz;
    int s5;
    int s6;

    env = (unsigned char *)*(int *)iwram_3001e70;
    actor = (unsigned char *)__MapActor_GetActor(actorId);
    for (i = 0; i <= 5; i++) {
        if (*(short *)(*(int **)((char *)*(int **)(actor + 0x50) + 0x28)) == L3230[i]) {
            arg.a = i;
            break;
        }
        arg.a = 7;
    }
    if ((unsigned int)arg.a > 6) {
        return 0;
    }
    arg.x = *(int *)(actor + 8);
    arg.y = *(int *)(actor + 0xc);
    arg.z = *(int *)(actor + 0x10);
    t1 = L3248[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L3248[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t3 = L3248[arg.a << 2];
    if (t3 < 0) t3 = -t3;
    t4 = L3248[(arg.a << 2) + 2];
    if (t4 < 0) t4 = -t4;
    w = (t3 + t4) >> 4;
    arg.x += L3248[arg.a << 2] << 16;
    arg.z += L3248[(arg.a << 2) + 1] << 16;
    arg.x >>= 20;
    arg.z >>= 20;
    raw = *(int *)(env + 0x13c);
    i = raw >> 20;
    raw = *(int *)(env + 0x140);
    camz = raw >> 20;
    s5 = i + arg.x;
    s6 = camz + arg.z;
    __Func_8010704(arg.x, arg.z, w, h, s5, s6);
    OvlFunc_964_2008244(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_964_2008244(2, arg.x, arg.z, w, h, 0xff);
    return 1;
}


void OvlFunc_964_20089dc(struct Actor *actor, int priority) {
    actor->sprite->oam.priority = priority;
}

struct Actor *OvlFunc_964_20089f4(int x, int y, int z, int id) {
    extern void __Actor_SetSpriteFlags();
    extern void __Func_80929d8(int, int);
    extern void __Func_800c548(int, int);
    struct Actor *actor;

    actor = (struct Actor *)API_CreateActor(id, x, y, z);
    if (actor != 0) {
        actor->sprite->oam.priority = 0;
        actor->__unk55 = 0;
        actor->collision = 8;
        __Actor_SetSpriteFlags(actor, 0);
        __Func_80929d8((int)actor, 0xe);
        __Func_800c548((int)actor, 1);
        return actor;
    }
    return 0;
}

struct Actor *OvlFunc_964_2008a4c(int x, int y, int z, int id) {
    extern void __Actor_SetSpriteFlags();
    extern void __Func_80929d8(int, int);
    struct Actor *actor;

    actor = (struct Actor *)API_CreateActor(id, x, y, z);
    if (actor != 0) {
        actor->sprite->oam.priority = 1;
        actor->__unk55 = 0;
        actor->collision = 8;
        __Actor_SetSpriteFlags(actor, 0);
        __Func_80929d8((int)actor, 0xf);
        actor->flags = (actor->flags & 0xfe) | 2;
        return actor;
    }
    return 0;
}

void OvlFunc_964_2008ab0(struct Actor *actor) {
    actor->pos.x += actor->bounce;
    actor->pos.y += actor->gravity;
    actor->pos.z += actor->__unk4C;
    actor->scale.x += actor->speed;
    actor->scale.y += actor->accel;
    actor->sprite->rotation += actor->waveCounter;
}

struct CS964E_Effect {
    int priority;
    int animation;
    int scaleX;
    int scaleY;
    int targetScaleX;
    int targetScaleY;
    short spriteId;
    void *script;
    unsigned short rotation;
    unsigned short angularVelocity;
    actorfun_t update;
};

extern void __Actor_SetScript(struct Actor *, void *);
extern void __Func_80929d8(int, int);
extern int *Lm964_336c[] __asm__(".Lm964_336c");

void OvlFunc_964_2008ae8(int x, int y, int z, int dx, int dy, int dz, int flags, struct CS964E_Effect *data)
{
    struct Actor *player = (struct Actor *)__MapActor_GetActor(0);
    struct Actor *actor;
    struct Sprite *sprite;
    int *script;
    int scale_flag;

    if ((flags & 0x100000) && data != 0)
        actor = (struct Actor *)API_CreateActor(data->spriteId, x, y, z);
    else
        actor = (struct Actor *)API_CreateActor(0xde, x, y, z);
    if (actor == 0)
        return;

    sprite = actor->sprite;
    __Actor_SetAnim(actor, (flags + 1) & 15);
    __Actor_SetScript(actor, Lm964_336c[flags & 15]);
    actor->__unk55 = 0;
    sprite->flags = 0;
    actor->update = (actorfun_t)OvlFunc_964_2008ab0;
    actor->bounce = dx;
    actor->gravity = dy;
    actor->__unk4C = dz;
    sprite->oam.priority = player->sprite->oam.priority;
    actor->speed = 0;
    actor->accel = 0;
    actor->waveCounter = 0;

    if ((flags & 0xffff0000) == 0 || data == 0)
        return;
    if (flags & 0x10000)
        __Func_80929d8((int)actor, data->animation);
    if (flags & 0x20000) {
        u8 p;
        actor->flags &= 0xfe;
        p = data->priority;
        sprite->oam.priority = p;
    }
    scale_flag = flags & 0x80000;
    if (scale_flag) {
        actor->scale.x = data->scaleX;
        actor->scale.y = data->scaleY;
    }
    if (flags & 0x40000) {
        script = Lm964_336c[flags & 15];
        if (scale_flag) {
            actor->speed = (data->targetScaleX - actor->scale.x) / script[3];
            actor->accel = (data->targetScaleY - actor->scale.y) / script[3];
        } else {
            actor->speed = (data->targetScaleX - 0x10000) / script[3];
            actor->accel = (data->targetScaleY - 0x10000) / script[3];
        }
    }
    if (flags & 0x200000) {
        __Actor_SetAnim(actor, 1);
        __Actor_SetScript(actor, data->script);
    }
    if (flags & 0x400000)
        sprite->rotation = data->rotation;
    if (flags & 0x800000)
        actor->waveCounter = data->angularVelocity;
    if (flags & 0x1000000)
        actor->update = data->update;
}


extern void __Actor_SetSpriteFlags();

unsigned int OvlFunc_964_2008cc0(void) {
    int x;
    __Actor_SetSpriteFlags(x, 0);
    return 0;
}

int OvlFunc_964_2008cd0(unsigned int *arr)
{
    extern void __vec3_translate(int dist, int angle, int *vec);
    extern void __WaitFrames(int);
    extern void __Actor_SetSpriteFlags(struct Actor *, int);
    extern void __MapActor_TravelToWait(int, int, int);
    struct Actor *actor;
    u8 saved;
    int buf[3];
    int *v;

    actor = (struct Actor *)__MapActor_GetActor(0);
    saved = actor->__unk55;
    v = buf;
    v[0] = (actor->pos.x & 0xfff00000) + 0x80000;
    v[1] = actor->pos.y;
    v[2] = (actor->pos.z & 0xfff00000) + 0x80000;
    {
        int ang = (actor->facing + 0x2000) & 0xc000;
        __vec3_translate(0x80 << 13, ang, v);
    }
    if (__TestCollision(actor, v) != 1 && __TestCollision(actor, (int *)arr) == 0) {
        __CutsceneStart();
        __Actor_SetAnim(actor, 6);
        __WaitFrames(6);
        __PlaySound(0x98);
        __Actor_SetAnim(actor, 7);
        actor->speed = 0xc0 << 10;
        actor->accel = 0x80 << 10;
        actor->motion.y = 0x80 << 11;
        actor->__unk55 &= 0x7e;
        __Actor_SetSpriteFlags(actor, 0);
        __MapActor_TravelToWait(0, (((int)arr[0] >> 20) << 4) + 8, (((int)arr[2] >> 20) << 4) + 8);
        __Actor_SetAnim(actor, 6);
        __Actor_SetSpriteFlags(actor, 1);
        __WaitFrames(6);
        actor->__unk55 = saved;
        __CutsceneEnd();
        return 0;
    }
    return 1;
}

extern int OvlFunc_964_2008cd0(unsigned int *);

void OvlFunc_964_2008dc8(void) {
    unsigned int args[3];
    unsigned char *base;

    base = __MapActor_GetActor(0);
    args[0] = *(unsigned int *)(base + 8);
    args[1] = *(unsigned int *)(base + 0xc);
    args[2] = *(unsigned int *)(base + 0x10) + 0x200000;
    OvlFunc_964_2008cd0(args);
}

extern int OvlFunc_964_2008cd0(unsigned int *);
void OvlFunc_964_2008df4(void)
{
	unsigned int r3[3];
	unsigned int *r0;
	r0 = __MapActor_GetActor(0);
	r3[0] = *(unsigned int *)((char *)r0 + 8);
	r3[1] = *(unsigned int *)((char *)r0 + 0xc);
	r3[2] = *(unsigned int *)((char *)r0 + 0x10) + 0xffe00000;
	OvlFunc_964_2008cd0(r3);
}
extern unsigned char iwram_3001ee0[];
extern unsigned char Lconst_ac[] __asm__(".Lconst_ac");
__asm__(".equ .Lconst_ac, 0xac");

void OvlFunc_964_2008e20(void)
{
    struct Actor *actor;
    void *obj;
    int threshold;
    GlobalState *p;

    actor = (struct Actor *)__MapActor_GetActor(0);
    obj = *(void **)iwram_3001ee0;
    p = &gState;
    threshold = 0;

    if (*(short *)((char *)p + 0x1c0) == (int)Lconst_ac) {
        switch (*(short *)((char *)p + 0x1c2)) {
        case 3:
        case 4:
            threshold = 0x5e;
            break;
        case 8:
        case 9:
            threshold = 0x4a;
            break;
        case 12:
        case 13:
            threshold = 0x76;
            break;
        }
    } else if (*(short *)((char *)p + 0x1c2) == 12) {
        threshold = 0x5d;
    }

    if ((actor->pos.z >> 19) <= threshold) {
        *(void **)((char *)obj + 0x18) = NULL;
    } else {
        *(void **)((char *)obj + 0x18) = actor;
    }
}

int OvlFunc_964_2008ec8(struct Actor *a) {
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

void OvlFunc_964_2008f10(unsigned int arg0, unsigned int arg1)
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

extern int iwram_3001e40;
extern unsigned int __Random(void);
extern void OvlFunc_964_2008ae8();

int OvlFunc_964_2008f4c(struct Actor *actor)
{
    int params[10];
    int x;
    int y;
    int z;

    if (iwram_3001e40 & 2) {
        __Actor_SetAnim(actor, 1);
    } else {
        __Actor_SetAnim(actor, 2);
    }

    if (iwram_3001e40 & 3) {
        return 0;
    }

    params[2] = 0x4ccc;
    params[3] = 0x4ccc;
    params[1] = 5;

    x = actor->pos.x + ((((__Random() * 7) >> 16) - 3) << 16);
    z = actor->pos.z + ((((__Random() * 7) >> 16) - 3) << 16);
    y = actor->pos.y + (0x80 << 13);

    OvlFunc_964_2008ae8(x, y, z, 0, 0, 0, 0x90001, params);

    return 0;
}

int OvlFunc_964_2008fe8(struct Actor *a) {
    int z;

    if (((struct Actor *)__MapActor_GetActor(0))->pos.y > -0x300000
        && ((struct Actor *)__MapActor_GetActor(8))->pos.z >> 20 == 0xa) {
        a->pos.x = ((struct Actor *)__MapActor_GetActor(8))->pos.x;
        a->pos.y = -0x200000;
        z = ((struct Actor *)__MapActor_GetActor(8))->pos.z;
    } else {
        a->pos.x = 0;
        a->pos.y = 0;
        z = 0;
    }
    a->pos.z = z;
    return 0;
}

void OvlFunc_964_2009038(struct Actor *a)
{
    int i = 60;
    fx32 y, f;
    while (1) {
        if (i != 0) {
            __WaitFrames(1);
            y = a->pos.y;
            f = a->floorPos;
            i--;
            if (y <= f) break;
        } else {
            f = a->floorPos;
            break;
        }
    }
    a->motion.y = 0;
    a->pos.y = f;
    a->prevPos.y = 0x80000000;
}
extern int _divsi3_RAM(int, int);

void OvlFunc_964_2009068(struct Actor *actor)
{
    actor->pos.x += actor->bounce;
    actor->pos.y += actor->gravity;
    actor->pos.z += actor->__unk4C;
    actor->bounce -= ((actor->bounce) / (18));
    actor->__unk4C -= actor->__unk4C / 16;
    actor->scale.x += actor->speed;
    actor->scale.y += actor->accel;
    actor->sprite->rotation += actor->waveCounter;
}

extern void __Func_8092504(int);

extern void OvlFunc_964_2008ae8();
extern u32 __Random(void);
extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);

void OvlFunc_964_20090c4(void)
{
    extern void __Func_8092504(int);
    extern u32 __Random(void);
    struct Actor *actor;
    struct CS964E_Effect buf;
    u32 i;
    int rx;
    int rz;

    actor = (struct Actor *)__MapActor_GetActor(0);
    __CutsceneStart();
    __Actor_SetAnim(actor, 6);
    __Func_8092504(0);
    __Actor_SetAnim(actor, 1);
    __Actor_SetSpriteFlags(actor, 0);
    actor->__unk55 |= 2;
    __PlaySound(0x98);
    actor->motion.y = 0x40000;
    __Actor_TravelTo(actor, actor->pos.x, actor->pos.y, actor->pos.z + 0xc0000);
    __WaitFrames(6);
    actor->__unk55 = 0;
    buf.update = (actorfun_t)OvlFunc_964_2009068;
    __PlaySound(0x7f);
    for (i = 0; i <= 7; i++) {
        actor->pos.y += -0x20000;
        actor->prevPos.y = actor->pos.y;
        __WaitFrames(1);
        if (i & 1) {
            rx = (int)(__Random() % 10 - 5) * 0x3332;
            rz = (__Random() % 10) * -0x1999 - 0x7ffd;
            OvlFunc_964_2008ae8(actor->pos.x, actor->pos.y, actor->pos.z, rx, 0, rz, 0x1000001, &buf);
        }
    }
    __Actor_SetSpriteFlags(actor, 1);
    actor->__unk55 = 3;
    __CutsceneEnd();
}

extern void OvlFunc_964_2009068(struct Actor *);
extern void OvlFunc_964_2008ae8();
extern int __cos(int);
extern int __sin(int);
extern int _divsi3_RAM(int, int);

void OvlFunc_964_20091e0(unsigned int actorId)
{
    int vel[3];
    int data[10];
    struct Actor *actor;
    unsigned int i;

    actor = (struct Actor *)__MapActor_GetActor(actorId);
    data[0] = 1;
    data[1] = 7;
    data[9] = (int)OvlFunc_964_2009068;

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

        OvlFunc_964_2008ae8(actor->pos.x, actor->pos.y, actor->pos.z, vel[0], vel[1], s, 0x1030001, data);
    }
}

extern unsigned char _EVENT_ac[], _EVENT_ad[];
extern unsigned char Lm964_3474[] __asm__(".Lm964_3474");
extern unsigned char Lm964_3654[] __asm__(".Lm964_3654");
extern unsigned char Lm964_342c[] __asm__(".Lm964_342c");

void *TunnelRuins_GetEntrances(void) {
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_ac) return Lm964_3474;
    if (ev == (int)_EVENT_ad) return Lm964_3654;
    return Lm964_342c;
}


unsigned int *TunnelRuins_GetSpecialExits(void)
{
    unsigned int r3;
    unsigned int r1;

    r3 = (unsigned int)&gState;
    r1 = 0xe0;
    r1 <<= 1;
    r3 += r1;
    r1 = 0;
    if (*(short *)((char *)r3 + r1) == (int)Lconst_ad) {
        return (unsigned int *)gScript_888__0200b81c;
    }
    return 0;
}

extern unsigned char gOvl_0200b85c[];

void *TunnelRuins_GetExits(void) {
    return (void *)gOvl_0200b85c;
}

extern unsigned char gScript_925__0200b8f4[];
extern unsigned char Lm964_3a74[] __asm__(".Lm964_3a74");
extern void __Func_808b868(void *);

void *TunnelRuins_GetActors(void)
{
    void *a;
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_ac) {
        a = gScript_925__0200b8f4;
    } else {
        a = Lm964_3a74;
    }
    __Func_808b868(a);
    return a;
}

extern void OvlFunc_964_20080c4(void);
extern void OvlFunc_964_200a3a0(void);

void OvlFunc_964_2009318(void)
{
  __CutsceneStart();
  {
    unsigned int t1 = 9;
    unsigned int t2 = 0x26;
    __Func_8010704(0x49, 0x26, 5, 5, t1, t2);
  }
  OvlFunc_964_20080c4();
  OvlFunc_964_200a3a0();
  __CutsceneEnd();
}

void OvlFunc_964_2009348(void) {
    unsigned int args[3];
    unsigned char *base;

    base = __MapActor_GetActor(0);
    args[0] = *(unsigned int *)(base + 8) + 0xffe00000;
    args[1] = *(unsigned int *)(base + 0xc);
    args[2] = *(unsigned int *)(base + 0x10);
    OvlFunc_964_2008cd0(args);
}

extern void OvlFunc_964_200a410(void);

void OvlFunc_964_2009374(void)
{
  __CutsceneStart();
  {
    unsigned int t1 = 0x1d;
    unsigned int t2 = 0x1e;
    __Func_8010704(0x5d, 0x1e, 6, 5, t1, t2);
  }
  OvlFunc_964_20080c4();
  OvlFunc_964_200a410();
  __CutsceneEnd();
}

extern void __Func_8092708(int a, int b, int c);

void OvlFunc_964_20093a4(void) {
    __Func_8092708(0, 6, 0);
}

void OvlFunc_964_20093b4(void) {
    unsigned int args[3];
    unsigned char *base;

    base = __MapActor_GetActor(0);
    args[0] = *(unsigned int *)(base + 8) + 0x200000;
    args[1] = *(unsigned int *)(base + 0xc);
    args[2] = *(unsigned int *)(base + 0x10);
    OvlFunc_964_2008cd0(args);
}

extern void OvlFunc_964_20080c4(void);
extern void OvlFunc_964_200a480(void);
void OvlFunc_964_20093e0(void) {
    int a;
    int b;
    __CutsceneStart();
    b = 0x31;
    a = 0x19;
    API_Func_8010704(0x59, 0x31, 3, 2, a, b);
    b = 0x33;
    API_Func_8010704(0x59, 0x33, 8, 5, a, b);
    OvlFunc_964_20080c4();
	OvlFunc_964_200a480();
	__CutsceneEnd();
}



extern void OvlFunc_964_20093e0(void);

void OvlFunc_964_2009424(void) {
    unsigned int args[3];
    unsigned char *base;

    base = __MapActor_GetActor(0);
    args[0] = *(unsigned int *)(base + 8);
    args[1] = *(unsigned int *)(base + 0xc);
    args[2] = *(unsigned int *)(base + 0x10) + 0x200000;
    if (OvlFunc_964_2008cd0(args) != 0) {
        OvlFunc_964_20093e0();
    }
}

void OvlFunc_964_2009458(void) {
    API_SetFlag(0x80 << 2);
    if (API_GetFlag(0x201)) {
        __MapActor_GetActor(0xe)[0x62] = 0;
        ((struct Actor *)__MapActor_GetActor(0xe))->collision &= 0xf7;
    } else {
        __MapActor_GetActor(0xe)[0x62] = 1;
        ((struct Actor *)__MapActor_GetActor(0xe))->collision |= 8;
    }
}
void OvlFunc_964_20094ac(void) {
    API_SetFlag(0x201);
    if (API_GetFlag(0x80 << 2)) {
        __MapActor_GetActor(0xe)[0x62] = 0;
        ((struct Actor *)__MapActor_GetActor(0xe))->collision &= 0xf7;
    } else {
        __MapActor_GetActor(0xe)[0x62] = 1;
        ((struct Actor *)__MapActor_GetActor(0xe))->collision |= 8;
    }
}

extern void __SetFlag(int);

void OvlFunc_964_2009500(void) {
    __SetFlag(0x97 << 4);
}

extern void OvlFunc_964_2009348(void);

void OvlFunc_964_2009510(void)
{
    int *r0;
    r0 = __MapActor_GetActor(0);
    if ((*(int *)((char *)r0 + 8) >> 20) != 0x20 ||
        (*(int *)((char *)r0 + 0x10) >> 20) != 0x32)
        OvlFunc_964_2009348();
}

extern void OvlFunc_964_2008df4(void);

void OvlFunc_964_2009530(void)
{
    int *r0;
    r0 = __MapActor_GetActor(0);
    if ((*(int *)((char *)r0 + 8) >> 20) != 0x1e ||
        (*(int *)((char *)r0 + 0x10) >> 20) != 0x34)
        OvlFunc_964_2008df4();
}

extern struct Actor *CS964Q_Actor(unsigned int) __asm__("__MapActor_GetActor");
extern struct Actor *CS964Q_Create(int, int, int, int) __asm__("OvlFunc_964_20089f4");
extern unsigned int CS964Q_Random(void) __asm__("__Random");
extern void CS964Q_Delete(struct Actor *) __asm__("__DeleteActor");
struct CS964Q_Effect {
    int priority, animation, scaleX, scaleY, targetX, targetY;
    short sprite, unused;
    void *script;
    short rotation, angularSpeed;
    void *update;
};
extern void CS964Q_Particle(int, int, int, int, int, int, unsigned int, struct CS964Q_Effect *) __asm__("OvlFunc_964_2008ae8");
void OvlFunc_964_2009550(void)
{
    struct CS964Q_Effect effect;
    struct Actor *created;
    unsigned int i;
    int x, z;
    API_CutsceneStart();
    if ((CS964Q_Actor(18)->pos.x >> 20) == 0x2e) {
        API_CutsceneWait(30);
        created = CS964Q_Create(0x2e80000, 0, 0xb80000, 0xfd);
        effect.scaleX = 0x9999;
        effect.scaleY = 0x9999;
        effect.animation = 7;
        CS964Q_Actor(18)->__unk55 = 0;
        API_PlaySound(0xb9);
        for (i = 0; i <= 15; ++i) {
            API_WaitFrames(3);
            CS964Q_Actor(18)->pos.y -= 0x10000;
            x = (((CS964Q_Random() << 4) >> 16) << 16) + 0x2e00000;
            z = (((CS964Q_Random() * 18) >> 16) << 16) + 0x800000;
            CS964Q_Particle(x, 0, z, 0, 0, 0, 0x90000, &effect);
        }
        API_Func_8010704(0x33, 8, 1, 1, 0x31, 8);
        API_CutsceneWait(30);
        CS964Q_Actor(18)->flags |= 2;
        API_MapActor_SetAnim(18, 3);
        CS964Q_Delete(created);
        API_Func_8010704(0x2d, 4, 1, 1, 0x2e, 8);
        API_MapActor_SetPos(20, 0x2e80000, 0x880000);
        API_PlaySound(0xbc);
        API_CopyMapTiles(0x3a, 8, 0x31, 8, 1, 3);
        API_Func_8012330(0, 0x50000, 0x10000);
        API_Func_8012330(-1, -1, 0xe666);
        API_CutsceneWait(20);
        API_PlaySound(0xbc);
        API_CopyMapTiles(0x3b, 8, 0x31, 8, 1, 3);
        API_Func_8012330(0, 0x50000, 0x10000);
        API_Func_8012330(-1, -1, 0xe666);
        API_Func_8012350();
        API_CutsceneWait(10);
        API_SetFlag(0x971);
    }
    API_CutsceneEnd();
}

extern void OvlFunc_964_2009550(void);

void OvlFunc_964_20096f4(void) {
    __CutsceneStart();
    OvlFunc_964_20080c4();
    __CutsceneEnd();
    OvlFunc_964_2009550();
}

void OvlFunc_964_200970c(void) {
    unsigned char *p;

    __MapActor_SetAnim(0x14, 1);
    __Func_8092950(0x14, 0);
    __MapActor_SetAnim(0x14, 2);
    p = __MapActor_GetActor(0x14);
    p += 0x23;
    *p = *p & 0xfd;
    __SetFlag(0x80 << 2);
}
extern struct Actor *CS964P_Actor(unsigned int) __asm__("__MapActor_GetActor");
extern struct Actor *CS964P_Create(int, int, int, int) __asm__("OvlFunc_964_20089f4");
extern unsigned int CS964P_Random(void) __asm__("__Random");
extern void CS964P_Delete(struct Actor *) __asm__("__DeleteActor");
struct CS964P_Effect {
    int priority, animation, scaleX, scaleY, targetX, targetY;
    short sprite, unused;
    void *script;
    short rotation, angularSpeed;
    void *update;
};
extern void CS964P_Particle(int, int, int, int, int, int, unsigned int, struct CS964P_Effect *) __asm__("OvlFunc_964_2008ae8");
void OvlFunc_964_2009744(void)
{
    struct CS964P_Effect effect;
    struct Actor *created;
    unsigned int i;
    int x, z;
    API_CutsceneStart();
    if ((CS964P_Actor(19)->pos.x >> 20) == 0x30 && API_GetFlag(0x202)) {
        API_CutsceneWait(30);
        created = CS964P_Create(0x3020000, 0, 0x1120000, 0xdf);
        effect.scaleX = 0x9999;
        effect.scaleY = 0x9999;
        effect.animation = 7;
        CS964P_Actor(19)->__unk55 = 0;
        API_PlaySound(0xb9);
        for (i = 0; i <= 15; ++i) {
            API_WaitFrames(3);
            CS964P_Actor(19)->pos.y -= 0x10000;
            x = (((CS964P_Random() << 4) >> 16) << 16) + 0x3000000;
            z = (((CS964P_Random() * 18) >> 16) << 16) + 0xe00000;
            CS964P_Particle(x, 0, z, 0, 0, 0, 0x90000, &effect);
        }
        API_Func_8010704(0x33, 8, 1, 1, 0x2d, 14);
        API_CutsceneWait(30);
        CS964P_Actor(19)->flags |= 2;
        API_MapActor_SetAnim(19, 3);
        CS964P_Delete(created);
        API_Func_8010704(0x2d, 4, 1, 1, 0x30, 14);
        API_MapActor_SetPos(21, 0x3080000, 0xe80000);
        API_PlaySound(0xbc);
        API_CopyMapTiles(0x3a, 8, 0x2d, 14, 1, 3);
        API_Func_8012330(0, 0x50000, 0x10000);
        API_Func_8012330(-1, -1, 0xe666);
        API_CutsceneWait(20);
        API_PlaySound(0xbc);
        API_CopyMapTiles(0x3b, 8, 0x2d, 14, 1, 3);
        API_Func_8012330(0, 0x50000, 0x10000);
        API_Func_8012330(-1, -1, 0xe666);
        API_Func_8012350();
        API_CutsceneWait(10);
        API_SetFlag(0x972);
    }
    API_CutsceneEnd();
}

extern void OvlFunc_964_2009744(void);

void OvlFunc_964_20098f8(void) {
    __CutsceneStart();
    OvlFunc_964_20080c4();
    __CutsceneEnd();
    OvlFunc_964_2009744();
}

extern unsigned char gScript_964__0200b3b8[];
extern void __MapActor_SetBehavior(int a, unsigned char *b);

void OvlFunc_964_2009910(void) {
    __MapActor_SetBehavior(0x13, gScript_964__0200b3b8);
}


void OvlFunc_964_2009924(void) {
    __SetFlag(0x202);
    OvlFunc_964_2009744();
}

void OvlFunc_964_2009938(void)
{
  unsigned char *p;
  unsigned long new_var2;
  unsigned long long new_var;
  unsigned long new_var3;
  unsigned long new_var4;
  new_var = 0x15;
 do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __MapActor_SetAnim(new_var2, 1);
  new_var4 = 0x15;
 do { new_var4 = (unsigned short) new_var4; } while (0);
  new_var3 = new_var4;
  __Func_8092950(new_var3, 0);
  __MapActor_SetAnim(0x15, 2);
  p = __MapActor_GetActor(0x15);
  p[0x23] &= 0xfd;
  __SetFlag(0x201);
}

extern void __CutsceneStart(void);
extern int __GetFlag(int id);
extern void __Func_801776c(int id, int b);
extern void __CutsceneEnd(void);

void OvlFunc_964_2009970(void) {
    __CutsceneStart();
    __MapActor_SetAnim(0, 1);
    if (__GetFlag(0x982) != 0 || __GetFlag(0x983) != 0) {
        __Func_801776c(0x268a, 1);
    } else {
        __Func_801776c(0x2689, 1);
    }
    __CutsceneEnd();
}


void OvlFunc_964_20099bc(void)
{
	__CutsceneStart();
	__CutsceneEnd();
}


void OvlFunc_964_20099cc(void) {
    __CutsceneStart();
    OvlFunc_964_20080c4();
    __CutsceneEnd();
    OvlFunc_964_20099bc();
}

typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_964__0200b3b8__a1[13] __asm__("gScript_964__0200b3b8");

void OvlFunc_964_20099e4(void)
{
    struct Actor *a;
    __MapActor_SetBehavior(8, gScript_964__0200b3b8__a1);
    __SetFlag(0x203);
    a = (struct Actor *)__MapActor_GetActor(9);
    a->update = (actorfun_t *)OvlFunc_964_2008fe8;
}

extern void __Func_8092b08();

void OvlFunc_964_2009a10(void) {
    API_CutsceneStart();
    __Func_8092b08(9, 1);
    __MapActor_SetAnim(9, 1);
    __Func_8092950(9, 0);
    __MapActor_SetAnim(9, 2);
    ((struct Actor *)__MapActor_GetActor(9))->flags &= 0xfd;
    API_SetFlag(0x81 << 2);
    API_Func_8010704(0x1a, 8, 1, 1, (
        (struct Actor *)__MapActor_GetActor(9))->pos.x >> 20,
        ((struct Actor *)__MapActor_GetActor(9))->pos.z >> 20
    );
    ((struct Actor *)__MapActor_GetActor(9))->update = (actorfun_t *)OvlFunc_964_2008ec8;
    ((struct Actor *)__MapActor_GetActor(8))->update = (actorfun_t *)OvlFunc_964_2008ec8;
    API_CutsceneEnd();
}


unsigned int OvlFunc_964_2009a98(unsigned int arg0) {
    unsigned int r5;
    unsigned int r3;
    unsigned int r2;
    unsigned int r0;

    r5 = arg0;
    r3 = r5;
    r3 += 0x64;
    r2 = 0;
    r0 = __MapActor_GetActor(*(short *)((char *)r3 + r2));
    r2 = 0x80;
    r3 = *(unsigned int *)((char *)r0 + 0xc);
    r2 <<= 13;
    r3 += r2;
    *(unsigned int *)((char *)r5 + 0xc) = r3;
    return 0;
}

extern int Lm964_3350[] __asm__(".Lm964_3350");

static inline void MapActor_SetSpeed964(unsigned int actor, int speed, int accel)
{
    __MapActor_SetSpeed(actor, speed << 8, accel << 7);
}

void OvlFunc_964_2009abc(int waitFrames)
{
    unsigned int i;

    MapActor_SetSpeed964(10, 0x80, 0x80);
    MapActor_SetSpeed964(11, 0x80, 0x80);
    if (waitFrames != 0) {
        __PlaySound(0xb4);
    }
    __Actor_TravelTo(
        __MapActor_GetActor(10),
        ((struct Actor *)__MapActor_GetActor(10))->pos.x,
        Lm964_3350[((struct Actor *)__MapActor_GetActor(10))->waveCounter],
        ((struct Actor *)__MapActor_GetActor(10))->pos.z
    );
    __Actor_TravelTo(
        __MapActor_GetActor(11),
        ((struct Actor *)__MapActor_GetActor(11))->pos.x,
        Lm964_3350[((struct Actor *)__MapActor_GetActor(11))->waveCounter],
        ((struct Actor *)__MapActor_GetActor(11))->pos.z
    );
    __MapActor_WaitMovement(10);
    __MapActor_WaitMovement(11);
    ((struct Actor *)__MapActor_GetActor(10))->pos.y = Lm964_3350[((struct Actor *)__MapActor_GetActor(10))->waveCounter];
    ((struct Actor *)__MapActor_GetActor(11))->pos.y = Lm964_3350[((struct Actor *)__MapActor_GetActor(11))->waveCounter];
    if (waitFrames != 0) {
        __PlaySound(0x121);
    }
    for (i = 0; i <= 4; i++) {
        unsigned int id = i + 10;
        if (((struct Actor *)__MapActor_GetActor(id))->pos.y / 0x10000 < 0
            && ((struct Actor *)__MapActor_GetActor(id))->pos.y / 0x10000 > -30) {
            API_Func_8010704(
                4, 9, 1, 1,
                ((struct Actor *)__MapActor_GetActor(id))->pos.x >> 20,
                ((struct Actor *)__MapActor_GetActor(id))->pos.z >> 20
            );
        }
    }
    __CutsceneWait(waitFrames);
}
extern void OvlFunc_964_20091e0(unsigned int);

void OvlFunc_964_2009c2c(unsigned int arg0)
{
    unsigned int i;
    int y;

    y = -0x500000;
    for (i = 0; i <= 4; i++) {
        unsigned int other = i + 10;
        if (other != arg0) {
            if (((struct Actor *)__MapActor_GetActor(other))->pos.x >> 20 == ((struct Actor *)__MapActor_GetActor(arg0))->pos.x >> 20) {
                if (((struct Actor *)__MapActor_GetActor(other))->pos.z >> 20 == ((struct Actor *)__MapActor_GetActor(arg0))->pos.z >> 20) {
                    if (y <= ((struct Actor *)__MapActor_GetActor(other))->pos.y + 0x100000) {
                        y = ((struct Actor *)__MapActor_GetActor(other))->pos.y + 0x100000;
                        ((struct Actor *)__MapActor_GetActor(arg0))->waveCounter = other;
                    }
                }
            }
        }
    }
    __MapActor_SetSpeed(arg0, 0x40000, 0x20000);
    __Actor_TravelTo(
        __MapActor_GetActor(arg0),
        ((struct Actor *)__MapActor_GetActor(arg0))->pos.x,
        y,
        ((struct Actor *)__MapActor_GetActor(arg0))->pos.z
    );
    __MapActor_WaitMovement(arg0);
    __PlaySound(0xbc);
    OvlFunc_964_20091e0(arg0);
    __CutsceneWait(0x1e);
}
extern struct Actor *CS964R_Actor(int) __asm__("__MapActor_GetActor");
extern struct Actor *CS964R_Camera(void) __asm__("__Func_8093554");

static inline void CS964R_Reset(int id, int zero)
{
    CS964R_Actor(id)->floorPos = zero;
    CS964R_Actor(id)->motion.y = zero;
    CS964R_Actor(id)->prevPos.y = (int)0x80000000;
    CS964R_Actor(id)->__unk55 = zero;
    CS964R_Actor(id)->waveCounter = zero;
}

static inline void CS964R_StoreCounter(unsigned short *p, int value) { *p = value; }

void OvlFunc_964_2009d04(void)
{
    struct Actor temporary;
    struct Actor *actor, *saved;
    unsigned short *counter;
    int index, zero, actorId, flag, selected, earlier;

    API_CutsceneStart();
    index = 0;
    saved = &temporary;
    zero = index;
    actorId = 12;
    do {
        if (CS964R_Actor(actorId)->sprite->oam.priority == 3 && !API_GetFlag(0x200 + index)) {
            OvlFunc_964_2009038(CS964R_Actor(actorId));
            API_MapActor_SetPos(actorId, 0, 0);
            API_SetFlag(0x200 + index);
            break;
        }
        if ((CS964R_Actor(actorId)->pos.z >> 20) == 9) {
            flag = API_GetFlag(0x200 + index);
            if (!flag) {
                CS964R_Reset(actorId, flag);
                selected = index;
                for (earlier = 0; earlier < index; earlier++) {
                    if (!API_GetFlag(0x200 + earlier)) {
                        saved->pos.x = CS964R_Actor(actorId)->pos.x;
                        saved->pos.y = CS964R_Actor(actorId)->pos.y;
                        saved->pos.z = CS964R_Actor(actorId)->pos.z;
                        actor = CS964R_Actor(actorId);
                        actor->pos.x = CS964R_Actor(earlier + 12)->pos.x;
                        actor = CS964R_Actor(actorId);
                        actor->pos.y = CS964R_Actor(earlier + 12)->pos.y;
                        actor = CS964R_Actor(actorId);
                        actor->pos.z = CS964R_Actor(earlier + 12)->pos.z;
                        CS964R_Actor(earlier + 12)->pos.x = saved->pos.x;
                        CS964R_Actor(earlier + 12)->pos.y = saved->pos.y;
                        CS964R_Actor(earlier + 12)->pos.z = saved->pos.z;
                        selected = earlier;
                        break;
                    }
                }
                CS964R_Reset(selected + 12, zero);
                API_Func_80933d4(0x30000, 0x6000);
                CS964R_Camera()->__unk55 = zero;
                API_Func_80933f8(0xa80000, 0x80000, 0xb80000, 1);
                API_Func_8093530();
                OvlFunc_964_2009c2c(selected + 12);
                if ((CS964R_Actor(selected + 12)->pos.x >> 20) == 8) {
                    counter = (unsigned short *)&CS964R_Actor(10)->waveCounter;
                    *counter += 1;
                    counter = (unsigned short *)&CS964R_Actor(11)->waveCounter;
                    CS964R_StoreCounter(counter, (int)*counter - 1);
                } else {
                    counter = (unsigned short *)&CS964R_Actor(10)->waveCounter;
                    CS964R_StoreCounter(counter, (int)*counter - 1);
                    counter = (unsigned short *)&CS964R_Actor(11)->waveCounter;
                    *counter += 1;
                }
                CS964R_Actor(selected + 12)->update = (actorfun_t)OvlFunc_964_2009a98;
                OvlFunc_964_2009abc(40);
                {
                    unsigned char *flags = &CS964R_Actor(selected + 12)->flags;
                    int v = *flags;
                    v |= 2;
                    *flags = v;
                }
                API_SetFlag(0x200 + selected);
                break;
            }
        }
        index++;
        actorId++;
    } while (index <= 2);
    API_CutsceneEnd();
}


void OvlFunc_964_2009f5c(void) {
    __CutsceneStart();
    OvlFunc_964_20080c4();
    __CutsceneEnd();
}

extern void __ClearFlag(int);
extern void OvlFunc_964_200a52c(void);

void OvlFunc_964_2009f70(void) {
    void *p;
    __CutsceneStart();
    p = __MapActor_GetActor(0x11);
    if ((*(int *)((char *)p + 8) >> 20) == 0x2d) {
        __SetFlag(0x974);
    } else {
        __ClearFlag(0x974);
    }
    p = __MapActor_GetActor(0x12);
    if ((*(int *)((char *)p + 8) >> 20) == 0x2e) {
        __SetFlag(0x975);
    } else {
        __ClearFlag(0x975);
    }
    OvlFunc_964_200a52c();
    __CutsceneEnd();
}


void OvlFunc_964_2009fc4(void) {
    __CutsceneStart();
    OvlFunc_964_20080c4();
    OvlFunc_964_2009f70();
    __CutsceneEnd();
}

void OvlFunc_964_2009fdc(void) {
    API_Func_8010704(0x48, 0x31, 1, 1, 8, 0x31);
    API_Func_8010704(0x71, 0x2b, 1, 1, 0x31, 0x2b);
    API_Func_808edac(0x64, 0, 0);
    API_Func_808edac(0x65, 0, 0);
    API_MapActor_SetPos(0xf, 0x88 << 16, 0xc6 << 18);
    API_MapActor_SetPos(0x10, 0xc6 << 18, 0xae << 18);
}

void OvlFunc_964_200a040(void) {
    API_Func_8010704(8, 0x71, 1, 1, 8, 0x31);
    API_Func_8010704(0x31, 0x6b, 1, 1, 0x31, 0x2b);
    API_Func_808edac(0x64, -1, -1);
    API_Func_808edac(0x65, -1, -1);
    API_MapActor_SetPos(0xf, 0, 0);
    API_MapActor_SetPos(0x10, 0, 0);
}
extern unsigned char CS964P_OpenTiles[] __asm__(".Lm964_33ec");
extern unsigned char CS964P_ClosedTiles[] __asm__(".Lm964_340c");
static inline void CS964P_MarkActor(int id)
{
    int x = ((struct Actor *)__MapActor_GetActor(id))->pos.x;
    int z = ((struct Actor *)__MapActor_GetActor(id))->pos.z;
    API_Func_8010704(20, 56, 1, 1, x >> 20, z >> 20);
}
void OvlFunc_964_200a0a4(void)
{
    int count = 0;
    API_CutsceneStart();
    API_Func_8010704(0x53, 0x2d, 11, 8, 19, 45);
    CS964P_MarkActor(19);
    CS964P_MarkActor(20);
    CS964P_MarkActor(21);
    CS964P_MarkActor(22);
    CS964P_MarkActor(23);
    if ((((struct Actor *)__MapActor_GetActor(19))->pos.x >> 20) == 25 && (((struct Actor *)__MapActor_GetActor(19))->pos.z >> 20) == 49)
        count++;
    if ((((struct Actor *)__MapActor_GetActor(20))->pos.x >> 20) == 23 && (((struct Actor *)__MapActor_GetActor(20))->pos.z >> 20) == 49)
        count++;
    if ((((struct Actor *)__MapActor_GetActor(21))->pos.x >> 20) == 25 && (((struct Actor *)__MapActor_GetActor(21))->pos.z >> 20) == 47)
        count++;
    if ((((struct Actor *)__MapActor_GetActor(22))->pos.x >> 20) == 23 && (((struct Actor *)__MapActor_GetActor(22))->pos.z >> 20) == 47)
        count++;
    if ((((struct Actor *)__MapActor_GetActor(23))->pos.x >> 20) == 24 && (((struct Actor *)__MapActor_GetActor(23))->pos.z >> 20) == 48)
        count++;
    if (count == 5) {
        if (API_GetFlag(0x984)) {
            API_CutsceneEnd();
            return;
        }
        API_CutsceneWait(20);
        API_Func_80933d4(0xcccc, 0x1999);
        API_Func_80933f8(0x1d80000, -1, 0x30c0000, 1);
        API_Func_8093530();
        API_CutsceneWait(30);
        API_SetFlag(0x984);
        API_PlaySound(0x9e);
        CallFunc_8010560(32, 46, CS964P_OpenTiles);
        API_Func_8010704(24, 60, 1, 1, 32, 47);
        API_CutsceneWait(40);
    } else if (API_GetFlag(0x984)) {
        API_CutsceneWait(20);
        API_Func_80933d4(0xcccc, 0x1999);
        API_Func_80933f8(0x1d80000, -1, 0x30c0000, 1);
        API_Func_8093530();
        API_CutsceneWait(30);
        API_ClearFlag(0x984);
        API_PlaySound(0x9f);
        CallFunc_8010560(32, 46, CS964P_ClosedTiles);
        API_Func_8010704(31, 47, 1, 1, 32, 47);
        API_CutsceneWait(40);
    }
    API_CutsceneEnd();
}

extern void OvlFunc_964_200a0a4(void);

void OvlFunc_964_200a300(void)
{
  __CutsceneStart();
  {
    unsigned int t1 = 0x13;
    unsigned int t2 = 0x2d;
    __Func_8010704(0x53, 0x2d, 0xb, 8, t1, t2);
  }
  OvlFunc_964_20080c4();
  OvlFunc_964_200a0a4();
  __CutsceneEnd();
}

void OvlFunc_964_200a330(void)
{
	__CutsceneStart();
	{
		unsigned int rq = 0;
		__MapActor_SetAnim(rq, 1);
	}
	{
		unsigned int rm = 0x268b;
		__Func_801776c(rm, 1);
	}
	__CutsceneEnd();
}

void OvlFunc_964_200a354(void)
{
  int new_var2;
  int r4;
  int new_var;
  __CutsceneStart();
 do { new_var2 = 0x953; } while (0);
  r4 = new_var2;
  new_var = r4;
  __Func_801776c(new_var, 1);
  __CutsceneEnd();
}

extern unsigned char _EVENT_ac[];
extern unsigned char Lm964_3c0c[] __asm__(".Lm964_3c0c");
extern unsigned char Lm964_3ef4[] __asm__(".Lm964_3ef4");

int TunnelRuins_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_ac) return (int)Lm964_3c0c;
    return (int)Lm964_3ef4;
}
void OvlFunc_964_200a3a0(void) {
    API_Func_8010704(0x49, 0x26, 5, 5, 9, 0x26);
    OvlFunc_964_2008f10(9, 8);
    API_Func_8010704(2, 0x24, 1, 1, (
        (struct Actor *)__MapActor_GetActor(8))->pos.x >> 20,
        ((struct Actor *)__MapActor_GetActor(8))->pos.z >> 20
    );
    API_Func_8010704(2, 0x24, 1, 1, (
        (struct Actor *)__MapActor_GetActor(9))->pos.x >> 20,
        ((struct Actor *)__MapActor_GetActor(9))->pos.z >> 20
    );
}

void OvlFunc_964_200a410(void) {
    API_Func_8010704(0x5d, 0x1e, 6, 5, 0x1d, 0x1e);
    OvlFunc_964_2008f10(0xb, 0xa);
    API_Func_8010704(2, 0x24, 1, 1, (
        (struct Actor *)__MapActor_GetActor(0xa))->pos.x >> 20,
        ((struct Actor *)__MapActor_GetActor(0xa))->pos.z >> 20
    );
    API_Func_8010704(2, 0x24, 1, 1, (
        (struct Actor *)__MapActor_GetActor(0xb))->pos.x >> 20,
        ((struct Actor *)__MapActor_GetActor(0xb))->pos.z >> 20
    );
}

void OvlFunc_964_200a480(void) {
    int a;
    int b;
    b = 0x31;
    a = 0x19;
    API_Func_8010704(0x59, 0x31, 3, 2, a, b);
    b = 0x33;
    API_Func_8010704(0x59, 0x33, 8, 5, a, b);
    ((struct Actor *)__MapActor_GetActor(0xe))->layer = 1;
    API_Func_8010704(0x16, 0x34, 1, 1, (
        (struct Actor *)__MapActor_GetActor(0xc))->pos.x >> 20,
        ((struct Actor *)__MapActor_GetActor(0xc))->pos.z >> 20
    );
    API_Func_8010704(0x16, 0x34, 1, 1, (
        (struct Actor *)__MapActor_GetActor(0xd))->pos.x >> 20,
        ((struct Actor *)__MapActor_GetActor(0xd))->pos.z >> 20
    );
    API_Func_8010704(0x16, 0x34, 1, 1, (
        (struct Actor *)__MapActor_GetActor(0xe))->pos.x >> 20,
        ((struct Actor *)__MapActor_GetActor(0xe))->pos.z >> 20
    );
}
void OvlFunc_964_200a52c(void) {
    API_Func_8010704(0x6c, 0x13, 4, 1, 0x2c, 0x13);
    OvlFunc_964_2008244(0,
        ((struct Actor *)__MapActor_GetActor(0x11))->pos.x >> 20,
        ((struct Actor *)__MapActor_GetActor(0x11))->pos.z >> 20,
        1, 1, 0xff
    );
    OvlFunc_964_2008244(0,
        ((struct Actor *)__MapActor_GetActor(0x12))->pos.x >> 20,
        ((struct Actor *)__MapActor_GetActor(0x12))->pos.z >> 20,
        1, 1, 0xff
    );
}
extern unsigned char TunnelFirstMap[] __asm__("0xac");
extern unsigned char TunnelSecondMap[] __asm__("0xad");
extern unsigned char TunnelExitMap[] __asm__("0xb0");

struct TunnelInitStateView {
    unsigned char prefix[0x1c0];
    short map, room;
    unsigned char beforeDestination[0x7c];
    unsigned short destinationMap, destinationRoom;
};

struct TunnelInitFieldView {
    unsigned char prefix[0x1c0];
    union { int transition; short half[2]; } u;
};

static inline void TunnelInitByte(unsigned char *p, int v) { *p = v; }

int TunnelRuins_MapInit(void)
{
    extern void OvlFunc_964_2008e20(void);
    extern int OvlFunc_964_2008ec8(struct Actor *);
    extern unsigned int OvlFunc_964_2009a98(unsigned int);
    extern struct TunnelInitStateView TunnelInitState __asm__("gState");
    extern struct TunnelInitFieldView *TunnelInitField __asm__("iwram_3001ebc");
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Func_8091494(struct Actor *);
    extern void __Func_8092950(int, int);
    extern unsigned char *__MapActor_GetActor(unsigned int);
    extern void OvlFunc_964_2009abc(int);
    extern void OvlFunc_964_2009fdc(void);
    extern void OvlFunc_964_200a3a0(void);
    extern void OvlFunc_964_200a410(void);
    extern void OvlFunc_964_200a480(void);
    extern void OvlFunc_964_200a52c(void);
    int savedX;
    int flagValue1;
    int flagValue2;
    int flagValue3;
    int flagValue4;
    int flagValue5;
    int flagValue6;
    int flagValue7;
    int flagValue8;
    int flagValue9;
    int flagValue10;
    int flagValue11;
    int flagValue12;
    int flagValue14;
    int flagValue15;
    int flagValue16;
    unsigned char *actor;

    TunnelInitField->u.transition = 0x204;
    if (TunnelInitState.map == (int)TunnelFirstMap || TunnelInitState.map == (int)TunnelSecondMap) {
        __Func_8091494(0);
        TunnelInitState.destinationRoom = 1;
        TunnelInitState.destinationMap = (int)TunnelFirstMap;
    }
    if (TunnelInitState.map == (int)TunnelFirstMap) {
        switch (TunnelInitState.room) {
        case 1:
        case 2:
            flagValue1 = API_GetFlag(0x982);
            if (flagValue1 == 0) goto L964_2694;
            API_CopyMapTiles(0x79, 4, 0x4a, 9, 5, 8);
            API_CopyMapTiles(18, 0x53, 9, 0x49, 3, 2);
            API_CopyMapTiles(18, 0x51, 9, 0x4b, 3, 2);
            API_CopyMapTiles(18, 0x53, 9, 0x4d, 3, 2);
            API_CopyMapTiles(18, 0x53, 9, 0x4f, 3, 2);
            API_CopyMapTiles(18, 0x53, 11, 0x4e, 3, 2);
            API_CopyMapTiles(18, 0x53, 13, 0x4f, 3, 2);
            goto L964_2fda;
        L964_2694:;
            flagValue2 = API_GetFlag(0x983);
            if (flagValue2 != 0) goto L964_26a2;
            goto L964_2fda;
        L964_26a2:;
            API_CopyMapTiles(0x79, 13, 0x4a, 9, 5, 8);
            API_CopyMapTiles(18, 0x55, 11, 0x4a, 3, 2);
            API_CopyMapTiles(18, 0x53, 13, 0x4b, 3, 2);
            API_CopyMapTiles(18, 0x55, 11, 0x4c, 3, 2);
            API_CopyMapTiles(18, 0x53, 11, 0x4e, 3, 2);
            API_CopyMapTiles(18, 0x53, 13, 0x4f, 3, 2);
            goto L964_2fda;
        case 3:
        case 4:
            OvlFunc_964_200a3a0();
            actor = __MapActor_GetActor(8);
            actor += 0x55;
            TunnelInitByte(actor, 0);
            actor = __MapActor_GetActor(9);
            actor += 0x55;
            TunnelInitByte(actor, 0);
            actor = __MapActor_GetActor(8);
            __Actor_SetSpriteFlags(actor, 0);
            actor = __MapActor_GetActor(9);
            __Actor_SetSpriteFlags(actor, 0);
            actor = __MapActor_GetActor(8);
            *(int *)(actor + 0x6c) = (int)OvlFunc_964_2008ec8;
            actor = __MapActor_GetActor(9);
            *(int *)(actor + 0x6c) = (int)OvlFunc_964_2008ec8;
            API_StartTask(OvlFunc_964_2008e20, 0xc80);
            goto L964_2fda;
        case 5:
        case 6:
        case 7:
            flagValue3 = API_GetFlag(0x982);
            if (flagValue3 == 0) goto L964_276c;
            API_Func_80105d4(23, 17, 1, 2, 30, 8);
        L964_276c:;
            flagValue4 = API_GetFlag(0x983);
            if (flagValue4 != 0) goto L964_277a;
            goto L964_2fda;
        L964_277a:;
            API_Func_80105d4(23, 17, 1, 2, 0x20, 10);
            goto L964_2fda;
        case 8:
        case 9:
            OvlFunc_964_200a410();
            actor = __MapActor_GetActor(10);
            actor += 0x55;
            TunnelInitByte(actor, 0);
            actor = __MapActor_GetActor(11);
            actor += 0x55;
            TunnelInitByte(actor, 0);
            actor = __MapActor_GetActor(10);
            __Actor_SetSpriteFlags(actor, 0);
            actor = __MapActor_GetActor(11);
            __Actor_SetSpriteFlags(actor, 0);
            actor = __MapActor_GetActor(10);
            *(int *)(actor + 0x6c) = (int)OvlFunc_964_2008ec8;
            actor = __MapActor_GetActor(11);
            *(int *)(actor + 0x6c) = (int)OvlFunc_964_2008ec8;
            API_StartTask(OvlFunc_964_2008e20, 0xc80);
            goto L964_2fda;
        case 10:
        case 11:
            actor = __MapActor_GetActor(18);
            __Actor_SetSpriteFlags(actor, 0);
            actor = __MapActor_GetActor(19);
            __Actor_SetSpriteFlags(actor, 0);
            API_MapActor_SetAnim(18, 2);
            actor = __MapActor_GetActor(20);
            __Actor_SetSpriteFlags(actor, 0);
            actor = __MapActor_GetActor(21);
            __Actor_SetSpriteFlags(actor, 0);
            __Func_8092950(20, 15);
            __Func_8092950(21, 15);
            flagValue5 = API_GetFlag(0x971);
            if (flagValue5 == 0) goto L964_289c;
            API_CopyMapTiles(0x3b, 8, 0x31, 8, 1, 3);
            API_Func_8010704(0x33, 8, 1, 1, 0x31, 8);
            actor = __MapActor_GetActor(18);
            actor += 0x23;
            TunnelInitByte(actor, (2 | *actor));
            API_MapActor_SetAnim(18, 3);
            API_Func_8010704(0x2d, 4, 1, 1, 0x2e, 8);
            API_MapActor_SetPos(18, 0x2e80000, 0x880000);
            actor = __MapActor_GetActor(18);
            *(int *)(actor + 0xc) = 0xfff00000;
            API_MapActor_SetPos(20, 0x2e80000, 0x880000);
        L964_289c:;
            flagValue6 = API_GetFlag(0x200);
            if (flagValue6 == 0) goto L964_28b8;
            __Func_8092950(20, 0);
            API_MapActor_SetAnim(20, 5);
        L964_28b8:;
            flagValue7 = API_GetFlag(0x202);
            if (flagValue7 == 0) goto L964_28ca;
            API_MapActor_SetAnim(19, 2);
        L964_28ca:;
            flagValue8 = API_GetFlag(0x972);
            if (flagValue8 == 0) goto L964_2952;
            API_CopyMapTiles(0x3b, 8, 0x2d, 14, 1, 3);
            API_Func_8010704(0x33, 8, 1, 1, 0x2d, 14);
            actor = __MapActor_GetActor(19);
            actor += 0x23;
            TunnelInitByte(actor, (2 | *actor));
            API_MapActor_SetAnim(19, 3);
            API_Func_8010704(0x2d, 4, 1, 1, 0x30, 14);
            API_MapActor_SetPos(19, 0x3080000, 0xe80000);
            actor = __MapActor_GetActor(19);
            *(int *)(actor + 0xc) = 0xfff00000;
            API_MapActor_SetPos(21, 0x3080000, 0xe80000);
            API_SetFlag(0x202);
        L964_2952:;
            flagValue9 = API_GetFlag(0x201);
            if (flagValue9 != 0) goto L964_295e;
            goto L964_2fda;
        L964_295e:;
            __Func_8092950(21, 0);
            API_MapActor_SetAnim(21, 5);
            goto L964_2fda;
        case 12:
        case 13:
            OvlFunc_964_200a480();
            actor = __MapActor_GetActor(12);
            actor += 0x55;
            TunnelInitByte(actor, 0);
            actor = __MapActor_GetActor(13);
            actor += 0x55;
            TunnelInitByte(actor, 0);
            actor = __MapActor_GetActor(15);
            __Actor_SetSpriteFlags(actor, 0);
            actor = __MapActor_GetActor(16);
            __Actor_SetSpriteFlags(actor, 0);
            actor = __MapActor_GetActor(17);
            __Actor_SetSpriteFlags(actor, 0);
            actor = __MapActor_GetActor(12);
            __Actor_SetSpriteFlags(actor, 0);
            actor = __MapActor_GetActor(13);
            __Actor_SetSpriteFlags(actor, 0);
            actor = __MapActor_GetActor(14);
            __Actor_SetSpriteFlags(actor, 0);
            actor = __MapActor_GetActor(12);
            *(int *)(actor + 0x6c) = (int)OvlFunc_964_2008ec8;
            actor = __MapActor_GetActor(13);
            *(int *)(actor + 0x6c) = (int)OvlFunc_964_2008ec8;
            actor = __MapActor_GetActor(14);
            *(int *)(actor + 0x6c) = (int)OvlFunc_964_2008ec8;
            API_StartTask(OvlFunc_964_2008e20, 0xc80);
            goto L964_2fda;
        default: break;
        }
    } else {
        switch (TunnelInitState.room) {
        case 1:
        case 2:
        case 3:
            TunnelInitState.destinationRoom = 1;
            TunnelInitState.destinationMap = (int)TunnelExitMap;
            API_ClearFlag(0x12f);
            __Func_8092950(17, 6);
            __Func_8092950(18, 6);
            flagValue10 = API_GetFlag(0x974);
            if (flagValue10 == 0) goto L964_2ad0;
            API_MapActor_SetPos(17, 0x2d80000, 0x1380000);
        L964_2ad0:;
            flagValue11 = API_GetFlag(0x975);
            if (flagValue11 == 0) goto L964_2ae8;
            API_MapActor_SetPos(18, 0x2e80000, 0x1380000);
        L964_2ae8:;
            OvlFunc_964_200a52c();
            goto L964_2fda;
        case 6:
        case 7:
            API_Func_8092b08(8, 1);
            actor = __MapActor_GetActor(8);
            actor += 0x55;
            TunnelInitByte(actor, 0);
            actor = __MapActor_GetActor(8);
            __Actor_SetSpriteFlags(actor, 0);
            API_Func_8092b08(9, 1);
            __Func_8092950(9, 15);
            actor = __MapActor_GetActor(9);
            __Actor_SetSpriteFlags(actor, 0);
            actor = __MapActor_GetActor(9);
            actor += 0x55;
            TunnelInitByte(actor, 0);
            flagValue12 = API_GetFlag(0x204);
            if (flagValue12 != 0) goto L964_2b42;
            goto L964_2fda;
        L964_2b42:;
            __Func_8092950(9, 0);
            API_MapActor_SetAnim(9, 5);
            actor = __MapActor_GetActor(9);
            savedX = (int)(*(int *)(actor + 0x8));
            actor = __MapActor_GetActor(9);
            savedX >>= 20;
            API_Func_8010704(26, 8, 1, 1, savedX, (*(int *)(actor + 0x10) >> 20));
            actor = __MapActor_GetActor(9);
            *(int *)(actor + 0x6c) = (int)OvlFunc_964_2008ec8;
            actor = __MapActor_GetActor(8);
            *(int *)(actor + 0x6c) = (int)OvlFunc_964_2008ec8;
            goto L964_2fda;
        case 4:
        case 5:
            if (!API_GetFlag(0x109)) {
                ((struct Actor *)__MapActor_GetActor(10))->__unk55 = 0;
                ((struct Actor *)__MapActor_GetActor(11))->__unk55 = 0;
                ((struct Actor *)__MapActor_GetActor(10))->pos.y = -0x300000;
                ((struct Actor *)__MapActor_GetActor(11))->pos.y = -0x300000;
                ((struct Actor *)__MapActor_GetActor(10))->flags |= 2;
                ((struct Actor *)__MapActor_GetActor(11))->flags |= 2;
                ((struct Actor *)__MapActor_GetActor(10))->collision &= 0xfe;
                ((struct Actor *)__MapActor_GetActor(11))->collision &= 0xfe;
                ((struct Actor *)__MapActor_GetActor(10))->waveCounter = 3;
                ((struct Actor *)__MapActor_GetActor(11))->waveCounter = 3;
                API_Func_8092b08(10, 1);
                API_Func_8092b08(11, 1);
                ((struct Actor *)__MapActor_GetActor(12))->__unk55 = 0;
                ((struct Actor *)__MapActor_GetActor(13))->__unk55 = 0;
                ((struct Actor *)__MapActor_GetActor(14))->__unk55 = 0;
                __Actor_SetSpriteFlags(__MapActor_GetActor(12), 0);
                __Actor_SetSpriteFlags(__MapActor_GetActor(13), 0);
                __Actor_SetSpriteFlags(__MapActor_GetActor(14), 0);
                ((struct Actor *)__MapActor_GetActor(12))->waveCounter = 0;
                ((struct Actor *)__MapActor_GetActor(13))->waveCounter = 0;
                ((struct Actor *)__MapActor_GetActor(14))->waveCounter = 0;
                if (TunnelInitState.room != 5) goto L964_2fda;
                ((struct Actor *)__MapActor_GetActor(10))->pos.y = -0x200000;
                ((struct Actor *)__MapActor_GetActor(11))->pos.y = -0x400000;
                ((struct Actor *)__MapActor_GetActor(10))->waveCounter = 2;
                ((struct Actor *)__MapActor_GetActor(11))->waveCounter = 4;
                API_MapActor_SetPos(12, 0xc80000, 0x980000);
                ((struct Actor *)__MapActor_GetActor(12))->waveCounter = 11;
                ((struct Actor *)__MapActor_GetActor(12))->update = (actorfun_t)OvlFunc_964_2009a98;
                ((struct Actor *)__MapActor_GetActor(12))->flags |= 2;
                API_MapActor_SetPos(13, 0xc80000, 0x980000);
                ((struct Actor *)__MapActor_GetActor(13))->waveCounter = 12;
                ((struct Actor *)__MapActor_GetActor(13))->update = (actorfun_t)OvlFunc_964_2009a98;
                ((struct Actor *)__MapActor_GetActor(13))->flags |= 2;
                API_MapActor_SetPos(14, 0x880000, 0x980000);
                ((struct Actor *)__MapActor_GetActor(14))->waveCounter = 10;
                ((struct Actor *)__MapActor_GetActor(14))->update = (actorfun_t)OvlFunc_964_2009a98;
                ((struct Actor *)__MapActor_GetActor(14))->flags |= 2;
                API_CutsceneWait(2);
                API_SetFlag(0x200);
                API_SetFlag(0x201);
                API_SetFlag(0x202);
            }
            OvlFunc_964_2009abc(0);
            goto L964_2fda;
        case 8:
        case 9:
        case 10:
        case 11:
            flagValue14 = API_GetFlag(0x982);
            if (flagValue14 == 0) goto L964_2dd0;
            API_Func_80105d4(10, 30, 1, 2, 16, 30);
        L964_2dd0:;
            flagValue15 = API_GetFlag(0x983);
            if (flagValue15 == 0) goto L964_2dee;
            API_Func_80105d4(10, 30, 1, 2, 22, 30);
        L964_2dee:;
            API_SetFlag(0x973);
            goto L964_2fda;
        case 12:
            API_Func_8010704(8, 0x31, 1, 1, 8, 0x71);
            OvlFunc_964_2009fdc();
            API_StartTask(OvlFunc_964_2008e20, 0xc80);
            goto L964_2fda;
        case 13:
        case 14:
            API_CutsceneWait(1);
            flagValue16 = API_GetFlag(0x984);
            if (flagValue16 == 0) goto L964_2e84;
            API_Func_80105d4(24, 0x3b, 1, 2, 0x20, 0x2e);
            API_MapActor_SetPos(19, 0x1980000, 0x3180000);
            API_MapActor_SetPos(20, 0x1780000, 0x3180000);
            API_MapActor_SetPos(21, 0x1980000, 0x2f80000);
            API_MapActor_SetPos(22, 0x1780000, 0x2f80000);
            API_MapActor_SetPos(23, 0x1880000, 0x3080000);
        L964_2e84:;
            actor = __MapActor_GetActor(19);
            actor += 0x55;
            TunnelInitByte(actor, (0xfe & *actor));
            actor = __MapActor_GetActor(20);
            actor += 0x55;
            TunnelInitByte(actor, (0xfe & *actor));
            actor = __MapActor_GetActor(21);
            actor += 0x55;
            TunnelInitByte(actor, (0xfe & *actor));
            actor = __MapActor_GetActor(22);
            actor += 0x55;
            TunnelInitByte(actor, (0xfe & *actor));
            actor = __MapActor_GetActor(23);
            actor += 0x55;
            TunnelInitByte(actor, (0xfe & *actor));
            __Func_8092950(19, 4);
            __Func_8092950(20, 1);
            __Func_8092950(21, 4);
            __Func_8092950(22, 10);
            __Func_8092950(23, 0);
            API_MapActor_SetAnim(19, 2);
            API_MapActor_SetAnim(23, 2);
            actor = __MapActor_GetActor(19);
            savedX = (int)(*(int *)(actor + 0x8));
            actor = __MapActor_GetActor(19);
            savedX >>= 20;
            API_Func_8010704(20, 0x38, 1, 1, savedX, (*(int *)(actor + 0x10) >> 20));
            actor = __MapActor_GetActor(20);
            savedX = (int)(*(int *)(actor + 0x8));
            actor = __MapActor_GetActor(20);
            savedX >>= 20;
            API_Func_8010704(20, 0x38, 1, 1, savedX, (*(int *)(actor + 0x10) >> 20));
            actor = __MapActor_GetActor(21);
            savedX = (int)(*(int *)(actor + 0x8));
            actor = __MapActor_GetActor(21);
            savedX >>= 20;
            API_Func_8010704(20, 0x38, 1, 1, savedX, (*(int *)(actor + 0x10) >> 20));
            actor = __MapActor_GetActor(22);
            savedX = (int)(*(int *)(actor + 0x8));
            actor = __MapActor_GetActor(22);
            savedX >>= 20;
            API_Func_8010704(20, 0x38, 1, 1, savedX, (*(int *)(actor + 0x10) >> 20));
            actor = __MapActor_GetActor(23);
            savedX = (int)(*(int *)(actor + 0x8));
            actor = __MapActor_GetActor(23);
            savedX >>= 20;
            API_Func_8010704(20, 0x38, 1, 1, savedX, (*(int *)(actor + 0x10) >> 20));
            goto L964_2fda;
        case 17:
            API_Func_8010704(0x31, 0x2b, 1, 1, 0x31, 0x6b);
            OvlFunc_964_2009fdc();
        case 0:
        case 15:
        case 16:
        default: break;
        }
    }
L964_2fda:;
    return 0;
}

INCLUDE_ASM("asm/maps/tunnel_ruins/tunnel_ruins_data.s");

INCLUDE_ASM("asm/maps/tunnel_ruins/imports.s");
