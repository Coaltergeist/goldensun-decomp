typedef union { int raw; struct { unsigned short lo; short hi; } half; } Fx32Parts;
/* rom_7ac2d8 (overlay file 924): consolidated TU — mercury_lighthouse map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"
#include "field.h"
#include "gba/io.h"
extern unsigned int OvlFunc_common0_18(int, int, int, int);

extern unsigned int Lm924_5d50[] __asm__(".Lm924_5d50");
extern unsigned char iwram_3001ebc__tw[] __asm__("iwram_3001ebc");

/* Void declarations for veneer callees. */
extern void __ActorMessage_Wait();
extern void __Actor_SetAnim();
extern void __Actor_SetScript();
extern void __Actor_WaitMovement();
extern void __ClearFlag();
extern void __CutsceneEnd();
extern void __CutsceneStart();
extern void __CutsceneWait();
extern void __Func_801776c();
extern void __Func_8019908();
extern void __Func_808f1c0();
extern int __MapActor_DoAnim();
extern void __MapActor_PlayPendingSound();
extern void __MessageID();
extern void __PlaySound();
extern void __SetFlag();




extern int OvlFunc_924_200858c();
extern void OvlFunc_924_200d578();
extern void OvlFunc_924_200a2c4();

extern int Func_8000948(int);

int OvlFunc_924_2008314(int *a, int *b)
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

void *OvlFunc_924_2008350(int *coords, void *arg1) {
    unsigned char *base;
    struct Actor **p;
    unsigned int i;
    int cx;

    base = *(unsigned char **)iwram_3001ebc__tw;
    i = 8;
    cx = coords[0] >> 20;
    p = (struct Actor **)(base + 0x34);
    for (; i <= 0x41; i++) {
        struct Actor *actor = *p++;
        if (cx == actor->pos.x >> 20) {
            if (coords[1] / 0x10000 == actor->pos.y / 0x10000) {
                if (coords[2] >> 20 == actor->pos.z >> 20) {
                    return actor;
                }
            }
        }
    }
    return 0;
}

void OvlFunc_924_20083a8(void) {
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
    t = Lm924_5d50[idx];
    stk[0] = player->pos.x + (t & 0xffff0000);
    stk[1] = player->pos.y;
    t <<= 16;
    stk[2] = player->pos.z + t;
    obj = OvlFunc_924_2008350(stk, player);
    if (obj == 0) {
        return;
    }
    t = Lm924_5d50[idx];
    stk[0] = obj->pos.x + (t & 0xffff0000);
    stk[1] = obj->pos.y;
    t <<= 16;
    stk[2] = obj->pos.z + t;
    res = OvlFunc_924_2008350(stk, obj);
    if (res != 0) {
        if (res->collision & 1) {
            return;
        }
    }
    stk[0] = obj->pos.x;
    stk[1] = obj->pos.y + (0x80 << 13);
    stk[2] = obj->pos.z;
    res = OvlFunc_924_2008350(stk, obj);
    if (res != 0) {
        if (res->collision & 1) {
            return;
        }
    }
    obj->layer = 2;
    t = Lm924_5d50[idx];
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

struct MapTile_OvlFunc_924_2008528 {
    unsigned short a;
    unsigned char b;
    unsigned char c;
};

extern unsigned char iwram_3001e70[];
extern unsigned char gBuffer[];

int OvlFunc_924_2008528(unsigned int layer, int x, int y, unsigned int w, unsigned int h, unsigned int val) {
    char *base;
    struct MapTile_OvlFunc_924_2008528 *buf;
    unsigned int i;
    unsigned int j;

    base = *(char **)iwram_3001e70;
    if (base == 0)
        return 0;

    if (layer <= 2) {
        int offset = 0x130 + layer * 0x30;
        buf = *(struct MapTile_OvlFunc_924_2008528 **)(base + offset);
    } else {
        buf = (struct MapTile_OvlFunc_924_2008528 *)gBuffer;
    }

    buf += x + (y << 7);
    for (i = 0; i < h; i++) {
        struct MapTile_OvlFunc_924_2008528 *row = buf + (i << 7);
        for (j = 0; j < w; j++) {
            row->b = val;
            row++;
        }
    }
    return 0;
}

extern unsigned int L5d50[] __asm__(".Lm924_5d50");
extern int L5d90[] __asm__(".Lm924_5d90");
extern void *OvlFunc_924_2008350(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_924_200858c(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L5d50[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_924_2008350(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L5d90;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L5d50[idx];
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

extern int PushBlockIds_924[] __asm__(".Lm924_5d90");
extern int PushBlockBoxes_924[] __asm__(".Lm924_5da8");
extern unsigned int PushBlockDirs_924[] __asm__(".Lm924_5d50");
extern struct MapState *gPushBlockMapState __asm__("iwram_3001ebc");

void *OvlFunc_924_2008630(int *dir, int *arg1, int *arg2)
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
            if (val == PushBlockIds_924[k]) {
                *arg2 = k;
                hero_x = *(int *)(hero + 8) >> 16;
                d = PushBlockDirs_924[*dir];
                target_x = (hero_x + (d >> 16)) >> 4;
                target_z = ((*(int *)(hero + 16) >> 16) + (short)d) >> 4;

                ax = *(short *)((char *)actor + 10);
                b_x1 = (ax + PushBlockBoxes_924[k * 4 + 0]) >> 4;
                az = *(short *)((char *)actor + 18);
                b_z1 = (az + PushBlockBoxes_924[k * 4 + 1]) >> 4;
                b_x2 = (ax + PushBlockBoxes_924[k * 4 + 2]) >> 4;
                b_z2 = (az + PushBlockBoxes_924[k * 4 + 3]) >> 4;

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


extern int L5da8[] __asm__(".Lm924_5da8");

int OvlFunc_924_2008758(void *arg0)
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
    obj = OvlFunc_924_2008630(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = L5da8[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L5da8[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = L5da8[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L5da8[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L5d50[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L5d50[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (L5da8[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (L5da8[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L5d50[dir] & 0xffff0000;
        cur[2] += L5d50[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L5d50[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern int L5d50__a2[] __asm__(".Lm924_5d50");
void __MapActor_SetSpeed(unsigned int, int, int);
extern void __MapActor_SetAnim(unsigned int, unsigned int);
extern void __MapActor_TravelBy(unsigned int, int, int);
extern void __Func_8010704(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned char *__MapActor_GetActor(unsigned int);
extern void __Actor_TravelTo(void *, int, int, int);
void __MapActor_WaitMovement(unsigned int);
#include "field/push_block.h"

void OvlFunc_924_20088ec(struct Pk arg)
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
    t1 = L5da8[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L5da8[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L5da8[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L5da8[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (L5da8[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (L5da8[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_924_2008528(0, vb[0], vb[2], w, h, 0);
    API_MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_924_200858c;
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
    __MapActor_TravelBy(0, (short)(L5d50__a2[dir] >> 16) / 2, (short)(L5d50__a2[dir]) / 2);
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
    x1 += L5da8[arg.a << 2] << 16;
    x2 += L5da8[(arg.a << 2) + 1] << 16;
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
    OvlFunc_924_2008528(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_924_2008528(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (L5da8[arg.a << 2] << 16);
    u2 = ap[2] + (L5da8[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_924_2008528(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

int OvlFunc_924_2008ba4(unsigned int actorId)
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
        if (*(short *)(*(int **)((char *)*(int **)(actor + 0x50) + 0x28)) == L5d90[i]) {
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
    t1 = L5da8[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L5da8[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t3 = L5da8[arg.a << 2];
    if (t3 < 0) t3 = -t3;
    t4 = L5da8[(arg.a << 2) + 2];
    if (t4 < 0) t4 = -t4;
    w = (t3 + t4) >> 4;
    arg.x += L5da8[arg.a << 2] << 16;
    arg.z += L5da8[(arg.a << 2) + 1] << 16;
    arg.x >>= 20;
    arg.z >>= 20;
    raw = *(int *)(env + 0x13c);
    i = raw >> 20;
    raw = *(int *)(env + 0x140);
    camz = raw >> 20;
    s5 = i + arg.x;
    s6 = camz + arg.z;
    __Func_8010704(arg.x, arg.z, w, h, s5, s6);
    OvlFunc_924_2008528(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_924_2008528(2, arg.x, arg.z, w, h, 0xff);
    return 1;
}

extern void __Func_8091f14(int a, int b);

void OvlFunc_924_2008cc0(void) {
    __Func_8091f14(12, 21);
}

int OvlFunc_924_2008cd0(struct Actor *actor) {
    struct {
        int unk0;
        int unk4;
        int unk8;
        int unkc;
        int unk10;
        int unk14;
        int unk18;
        int unk1c;
        int unk20;
        int unk24;
    } data;
    extern unsigned int __Random(void);
    extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);
    extern unsigned int iwram_3001e40;
    int r;

    data.unk4 = 7;
    if ((iwram_3001e40 & 1) == 0) {
        data.unk4 = 5;
    }
    data.unk8 = 0xcccc;
    data.unkc = 0xcccc;
    data.unk0 = 0;
    r = ((__Random() << 3) >> 16) * 0x3333;
    OvlFunc_common0_10c(
        actor->pos.x + ((8 - (iwram_3001e40 & 0xf)) << 16),
        actor->pos.y + (0xd0 << 13),
        actor->pos.z,
        0,
        -r,
        0,
        0xb0 << 12,
        &data
    );
    return 0;
}

extern int gScript_969__0200e004;
extern int Lm924_600c __asm__(".Lm924_600c");
extern int Lm924_6008 __asm__(".Lm924_6008");
extern unsigned int iwram_3001e40;
void OvlFunc_924_2008d58(void)
{
    extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
    extern int _divsi3_RAM(int, int);
    volatile unsigned short c = 0;
    unsigned int i;
    int v, hi;

    if (_umodsi3_RAM(iwram_3001e40, 5) == 0) {
        gScript_969__0200e004 = (gScript_969__0200e004 + 4) & 0x1f;
        for (i = 0; i <= 5; i++) {
            c = ((unsigned short *)0x5000000)[0x6e - i] & 0x1f;
            v = c;
            if (i <= 2)
                v -= _divsi3_RAM(v * 4, 10);
            { unsigned short *d = &((unsigned short *)0x5000000)[0x6f - i];
            hi = (Lm924_600c << 10) | (Lm924_6008 << 5);
            *d = v | hi; }
        }
        *(unsigned short *)0x50000d2 = gScript_969__0200e004 | hi;
    }
}

void OvlFunc_924_2008dfc(void)
{
    unsigned int i = 0;
    unsigned int j = 0;

    do {
        i++;
        *(unsigned short *)(0x50000de - j * 2) = 0;
        j++;
    } while (i <= 6);
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/mercury_lighthouse_data.s");

#include "state/global_state.h"
extern GlobalState gState;
extern unsigned char _EVENT_39[], _EVENT_38[], _EVENT_37[];
extern unsigned char Lm924_650c[] __asm__(".Lm924_650c");
extern unsigned char Lm924_635c[] __asm__(".Lm924_635c");
extern unsigned char Lm924_623c[] __asm__(".Lm924_623c");
extern unsigned char Lm924_60ec[] __asm__(".Lm924_60ec");

void *MercuryLighthouse_GetEntrances(void) {
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_39) return Lm924_650c;
    if (ev == (int)_EVENT_38) return Lm924_635c;
    if (ev == (int)_EVENT_37) return Lm924_623c;
    return Lm924_60ec;
}


int MercuryLighthouse_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gScript_883__0200e614[];

void *MercuryLighthouse_GetExits(void) {
    return (void *)gScript_883__0200e614;
}

extern unsigned char _EVENT_36[];
extern unsigned char Lm924_6700[] __asm__(".Lm924_6700");
extern unsigned char Lm924_67a8[] __asm__(".Lm924_67a8");
extern unsigned char Lm924_6838[] __asm__(".Lm924_6838");
extern unsigned char Lm924_6988[] __asm__(".Lm924_6988");
extern unsigned char Lm924_66e8[] __asm__(".Lm924_66e8");

void *MercuryLighthouse_GetActors(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_36) return Lm924_6700;
    if (ev == (int)_EVENT_37) return Lm924_67a8;
    if (ev == (int)_EVENT_38) return Lm924_6838;
    if (ev == (int)_EVENT_39) return Lm924_6988;
    return Lm924_66e8;
}

extern void OvlFunc_924_200d900(void);

void OvlFunc_924_2008ee4(void) {
    OvlFunc_924_200d900();
}


void OvlFunc_924_2008ef0(void) {
    OvlFunc_924_200d578();
}

extern void OvlFunc_924_200d5c0(void);

void OvlFunc_924_2008efc(void) {
    OvlFunc_924_200d5c0();
}

extern void OvlFunc_924_200d458(void);

void OvlFunc_924_2008f08(void) {
    OvlFunc_924_200d458();
}

void OvlFunc_924_2008f14(void)
{
  int r4;
 do { __CutsceneStart(); r4 = 0x1637; } while (0);
  __Func_801776c(r4, 1);
  __CutsceneEnd();
}

extern unsigned char Lm924_6ad8[] __asm__(".Lm924_6ad8");
extern unsigned char Lm924_6c10[] __asm__(".Lm924_6c10");
extern unsigned char Lm924_6d60[] __asm__(".Lm924_6d60");
extern unsigned char Lm924_6ec8[] __asm__(".Lm924_6ec8");

int MercuryLighthouse_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_36) return (int)Lm924_6ad8;
    if (ev == (int)_EVENT_37) return (int)Lm924_6c10;
    if (ev == (int)_EVENT_38) return (int)Lm924_6d60;
    return (int)Lm924_6ec8;
}

void OvlFunc_924_2008f84(int arg0)
{
    extern int OvlFunc_924_2008cd0(struct Actor *);
    extern void __Func_8092950(int, int);
    extern void __Actor_SetSpriteFlags(unsigned char *, int);
    extern void __MapTransitionOut(void);
    extern void __WaitMapTransition(void);
    extern void __Func_8091e9c(int);

    struct Actor *actor;

    actor = (struct Actor *)__MapActor_GetActor(0);
    __CutsceneStart();
    __PlaySound(0xe4);
    actor->update = (actorfun_t *)OvlFunc_924_2008cd0;
    actor->speed = 0x3333;
    __MapActor_SetAnim(0, 2);
    __MapActor_TravelBy(0, 0, -6);
    __MapActor_WaitMovement(0);
    __Func_8092950(0, 0xf);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    actor->update = 0;
    __CutsceneWait(0x1e);
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(arg0);
    __CutsceneEnd();
}

extern void __Actor_SetSpriteFlags(unsigned char *, int);
extern void __Func_8092b08(int, int);

void OvlFunc_924_2008ffc(int a) {
    API_CutsceneStart();
    API_PlaySound(0xe4);
    API_MapActor_SetSpeed(0, 0x6666, 0x3333);
    __Func_8092b08(0, 2);
    API_MapActor_TravelBy(0, 0, -8);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    API_CutsceneWait(8);
    API_MapActor_SetPos(0, (a << 19) + (0x80 << 12), 0);
    API_CutsceneWait(0x1e);
}

extern int *iwram_3001ebc;
extern void OvlFunc_924_2008f84(int);

void OvlFunc_924_2009060(void) {
    int *r3;
    short r0;

    r3 = (int *)((char *)iwram_3001ebc + (0xb6 << 1));
    r0 = *(short *)r3;
    OvlFunc_924_2008f84(r0 - 0x32);
}

extern int iwram_3001ebc__a1 __asm__("iwram_3001ebc");

void OvlFunc_924_2009080(void) {
    int *r3;
    short r0;

    r3 = (int *)iwram_3001ebc__a1;
    r0 = *(short *)((char *)r3 + 0x16c);
    OvlFunc_924_2008f84(r0 - 0x32);
}

extern unsigned int iwram_3001ebc__a2 __asm__("iwram_3001ebc");

void OvlFunc_924_20090a0(void) {
    unsigned int r3;
    short val;

    r3 = iwram_3001ebc__a2;
    r3 += 0xb6 << 1;
    val = *(short *)r3;
    OvlFunc_924_2008f84(val - 0x32);
}

extern int __GetFlag(int);
void __Func_8012330(int, int, int);
void __MapTransitionOut(void);
void __WaitMapTransition(void);
void __Func_8012350(void);
void __Func_8091e9c(int);
static inline void Func_8012330_pos(int x, int y, int z) {
    __Func_8012330(x << 9, y << 9, z << 9);
}

static inline void Func_8012330_neg(int x, int y, int z) {
    __Func_8012330(-x, -y, z);
}

void OvlFunc_924_20090c0(void)
{
    if (__GetFlag(0x310) != 0 && __GetFlag(0x311) != 0 && __GetFlag(0x312) != 0) {
        __SetFlag(0x876);
        __CutsceneWait(0x1e);
        Func_8012330_pos(0x80, 0x80, 0x80);
        __PlaySound(0x8d);
        __CutsceneWait(0x3c);
        *(int *)((char *)iwram_3001ebc + 0x1c0) = 0x100;
        __MapTransitionOut();
        __WaitMapTransition();
        __PlaySound(0x121);
        Func_8012330_neg(1, 1, 0xe666);
        __Func_8012350();
        __Func_8091e9c(0xd);
    } else {
        __ClearFlag(0x876);
    }
}
void OvlFunc_924_2009164(void)
{
    /* pk is passed by value, so it must use the file's struct Pk layout. */
    extern void __ClearFlag();
    extern void __CutsceneEnd();
    extern void __CutsceneStart();
    extern void __CutsceneWait();
    extern void __SetFlag();
    extern void __CopyMapTiles(int, int, int, int, int, int);
    extern int __GetFlag();
    extern int OvlFunc_924_2008758(void *arg0);
    extern void OvlFunc_924_200bc48();
    extern void OvlFunc_924_20090c0();

    struct Pk pk;

    __CutsceneStart();
    if (OvlFunc_924_2008758(&pk)) {
        switch ((unsigned int)pk.b) {  /* TU's struct Pk has int b; this fn's ref uses an unsigned switch */
        case 9:
            if ((pk.z >> 20) == 8) {
                OvlFunc_924_20088ec(pk);
                __CutsceneWait(20);
                __CopyMapTiles(0x77, 9, 0x6d, 11, 1, 1);
                OvlFunc_924_200bc48(0x2d60000, 0, 0xb40000, 0x8000);
                __SetFlag(0x310);
            } else {
                __CopyMapTiles(0x75, 9, 0x68, 7, 1, 1);
                __CopyMapTiles(0x77, 8, 0x6d, 11, 1, 1);
                __CopyMapTiles(0x76, 8, 0x68, 13, 1, 1);
                OvlFunc_924_20088ec(pk);
                __ClearFlag(0x310);
            }
            break;
        case 10: {
            int flag = 0x310;
            if ((pk.z >> 20) == 12) {
                OvlFunc_924_20088ec(pk);
                __CutsceneWait(10);
                if (__GetFlag(flag)) {
                    __CopyMapTiles(0x76, 9, 0x68, 13, 1, 1);
                    OvlFunc_924_200bc48(0x2840000, 0, 0xd20000, 0x4000);
                }
                __SetFlag(0x311);
            } else {
                int f = 0x311;
                __CopyMapTiles(0x77, 8, 0x6d, 11, 1, 1);
                if (__GetFlag(flag)) {
                    __CopyMapTiles(0x77, 9, 0x6d, 11, 1, 1);
                    __CopyMapTiles(0x76, 8, 0x68, 13, 1, 1);
                }
                OvlFunc_924_20088ec(pk);
                __ClearFlag(f);
            }
            break;
        }
        case 11: {
            int flag = 0x312;
            if ((pk.x >> 20) == 40) {
                OvlFunc_924_20088ec(pk);
                __SetFlag(flag);
            } else {
                OvlFunc_924_20088ec(pk);
                __ClearFlag(flag);
            }
            break;
        }
        }
        OvlFunc_924_20090c0();
    }
    __CutsceneEnd();
}
extern void OvlFunc_924_200ba64(void);

void OvlFunc_924_2009340(void)
{
    char *state;
    short mode;

    state = (char *)iwram_3001ebc;
    API_CutsceneStart();
    API_StartTask(OvlFunc_924_200ba64, 0xc80);
    API_MapActor_SetSpeed(0, 0x28000, 0x14000);
    API_MapActor_SetAnim(0, 1);
    ((struct Actor *)__MapActor_GetActor(0))->__unk5A &= ~1;
    API_PlaySound(0xe4);

    mode = *(short *)(state + 0x16c);
    if (mode == 2) {
        API_MapActor_TravelTo(0, 0xe8, 0x268);
    } else if (mode == 3) {
        API_MapActor_TravelTo(0, 0x168, 0x2d8);
    } else if (mode == 4) {
        API_MapActor_TravelTo(0, 0xf8, 0x318);
    } else {
        API_MapActor_TravelToWait(0, 0x2b8, 0x250);
        API_MapActor_TravelTo(0, 0x2b8, 0x258);
        API_CutsceneWait(0x1e);
    }

    API_MapActor_WaitMovement(0);
    ((struct Actor *)__MapActor_GetActor(0))->__unk5A |= 1;
    API_StopTask(OvlFunc_924_200ba64);
    API_CutsceneEnd();
}

extern void OvlFunc_924_20083a8(void);
extern void OvlFunc_924_2009420(void);

void OvlFunc_924_2009408(void) {
    __CutsceneStart();
    OvlFunc_924_20083a8();
    __CutsceneEnd();
    OvlFunc_924_2009420();
}

extern unsigned char Lm924_6010[] __asm__(".Lm924_6010");

void OvlFunc_924_2009420(void)
{
    extern void __CopyMapTiles(int, int, int, int, int, int);
    extern void __Func_8010560(void *, int, int);

    int x;
    int z;
    struct Actor *actor;
    int new_var;
    int new_var2;

    x = ((struct Actor *)__MapActor_GetActor(11))->pos.x / 0x100000;
    z = ((struct Actor *)__MapActor_GetActor(11))->pos.z / 0x100000;
    __CutsceneStart();
    if (x == 5 && z == 13) {
        ((struct Actor *)__MapActor_GetActor(11))->pos.y -= 0x20000;
        actor = (struct Actor *)__MapActor_GetActor(11);
        actor->prevPos.y = ((struct Actor *)__MapActor_GetActor(11))->pos.y;
        __CopyMapTiles(5, 2, 5, 11, 1, 1);
        __PlaySound(0xd9);
        __Func_8010560(Lm924_6010, 9, 7);
        new_var = 9;
        new_var2 = 10;
        __Func_8010704(9, 5, 1, 1, new_var, new_var2);
        __SetFlag(0x874);
    }
    __CutsceneEnd();
}

void OvlFunc_924_20094cc(void) {
    extern unsigned char Lm924_6010[] __asm__(".Lm924_6010");
    extern void __CopyMapTiles(int, int, int, int, int, int);
    extern void __Func_8010560(void *, int, int);
    int x;
    int z;

    if (API_GetFlag(0x256)) {
        return;
    }
    x = ((short *)&((struct Actor *)__MapActor_GetActor(0))->pos.x)[1];
    z = ((short *)&((struct Actor *)__MapActor_GetActor(0))->pos.z)[1];
    x -= 0x54;
    if ((unsigned int)x > 7) {
        return;
    }
    if (z <= 0xd3) {
        return;
    }
    if (z > 0xdb) {
        return;
    }
    __CutsceneStart();
    API_SetFlag(0x256);
    __CutsceneWait(5);
    ((struct Actor *)__MapActor_GetActor(0))->pos.y += 0xfffe0000;
    ((struct Actor *)__MapActor_GetActor(0))->prevPos.y = ((struct Actor *)__MapActor_GetActor(0))->pos.y;
    __CopyMapTiles(5, 2, 5, 0xb, 1, 1);
    __PlaySound(0xd9);
    __Func_8010560(Lm924_6010, 9, 7);
    __CutsceneEnd();
}
void OvlFunc_924_2009568(void)
{
    extern unsigned char Lm924_603a[] __asm__(".Lm924_603a");
    extern void __Func_8010560(void *, int, int);
    struct Actor *a;

    if (API_GetFlag(0x256)) {
        API_CutsceneStart();
        API_ClearFlag(0x256);
        ((struct Actor *)__MapActor_GetActor(0))->pos.y += 0x20000;
        a = (struct Actor *)__MapActor_GetActor(0);
        a->prevPos.y = ((struct Actor *)__MapActor_GetActor(0))->pos.y;
        API_CutsceneWait(5);
        API_CopyMapTiles(7, 2, 5, 0xb, 1, 1);
        API_PlaySound(0xd9);
        __Func_8010560(Lm924_603a, 9, 7);
        API_CutsceneEnd();
    }
}
void OvlFunc_924_20095e0(int arg0, unsigned int start, unsigned int end)
{

    unsigned int i;

    if (arg0 != 0) {
        API_PlaySound(0xdb);
    }

    for (i = start; i < end; i++) {
        API_CopyMapTiles(0x2d - i * 2, 0x20, 0x2c - i * 2, 0x20, i + 1, 6);
        API_CopyMapTiles(0x2d - i, 0x33, 0x2d - i, 0x20, 1, 6);
        API_CopyMapTiles(0x6d - i, 0x20, 0x6c - i, 0x20, 1, 4);
        API_CopyMapTiles(0x6d - i, 0x33, 0x6d - i, 0x20, 1, 4);
        if (arg0 != 0) {
            API_Func_8012330(0x50000, 0x50000, 0x10000);
            API_Func_8012330(-1, -1, 0xe666);
            API_CutsceneWait(arg0);
        }
    }

    API_Func_8010704(0x2a, 0x34, 4, 5, 0x2a, 0x21);
}
void OvlFunc_924_20096c4(int arg0)
{
    extern void __CopyMapTiles(int, int, int, int, int, int);
    unsigned int i;
    int w;
    int h;

    API_PlaySound(0xdb);
    for (i = 0; i <= 2; i++) {
        __CopyMapTiles(0x28 + i * 2, 0x20, 0x29 + i * 2, 0x20, 3 - i, 6);
        __CopyMapTiles(0x27, 0x33, 0x28 + i * 2, 0x20, 1, 6);
        w = 2;
        h = 4;
        __CopyMapTiles(0x69, 0x33, i + 0x6a, 0x20, w, h);
        if (arg0 != 0) {
            API_Func_8012330(0xa0 << 11, 0xa0 << 11, 0x80 << 9);
            API_Func_8012330(-1, -1, 0xe666);
            API_CutsceneWait(arg0);
        }
    }
    API_PlaySound(0x120);
    API_Func_8010704(0x6a, 0x21, 4, 5, 0x2a, 0x21);
    API_Func_8012350();
}

extern void OvlFunc_924_200bb24(unsigned int a, int b, int c);

void OvlFunc_924_2009790(void) {
    OvlFunc_924_200bb24(0x2b20000, 0, 0x92 << 18);
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_20097a8.s");

void OvlFunc_924_20098f8(void)
{
    extern void __CopyMapTiles(int, int, int, int, int, int);
    extern unsigned int __Random(void);
    extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);
    struct {
        int unk0;
        int unk4;
        int unk8;
        int unkc;
        int unk10;
        int unk14;
        int unk18;
        int unk1c;
        int unk20;
        int unk24;
    } data;
    unsigned int i;
    unsigned int j;

    __CopyMapTiles(0x4e, 0x3a, 0x6e, 0x24, 1, 1);
    data.unk4 = 5;
    data.unk8 = 0x8000;
    data.unkc = 0x8000;
    for (i = 0; i <= 2; i++) {
        for (j = 1; j <= 7; j++) {
            if ((j & 1) != 0) {
                OvlFunc_common0_10c(-(int)(j << 17) - (i << 19) + (0xb6 << 18), 0,
                                    (0x248 - ((__Random() * 5) >> 16)) << 16,
                                    -0x4000, 0, 0, 0x90000, &data);
                API_CutsceneWait(1);
            }
        }
        __CopyMapTiles(0x6f, 0x23, 0x6d - i, 0x24, 1, 1);
    }
    API_StopTask(OvlFunc_924_2009790);
}
extern void __CopyMapTiles(int, int, int, int, int, int);
extern void __Func_80933d4(int, int);
extern void __Func_80933f8(int, int, int, int);
extern void __Func_8093530(void);

extern void OvlFunc_924_200b860(void);
extern void OvlFunc_924_200b948(void);
extern void OvlFunc_924_20097a8(int);
extern void OvlFunc_924_20098f8(void);
extern void OvlFunc_924_20096c4(int);

void OvlFunc_924_20099b8(void)
{
    struct Pk pk;
    int flag = 0x307;

    __CutsceneStart();
    if (OvlFunc_924_2008758(&pk) != 0) {
        if (pk.b == 8) {
            if ((pk.x >> 20) == 11) {
                OvlFunc_924_20088ec(pk);
                __CutsceneWait(30);
                __PlaySound(0xd3);
                OvlFunc_924_200b860();
                __CopyMapTiles(0x4c, 0x3c, 0x4a, 0x26, 3, 1);
                __CopyMapTiles(0x4d, 0x3c, 0x4c, 0x26, 2, 1);
                __CopyMapTiles(0x4b, 0x3a, 0x56, 0x29, 1, 3);
                __CopyMapTiles(0x4b, 0x3b, 0x56, 0x2b, 1, 2);
                __CopyMapTiles(0x4c, 0x3b, 0x50, 0x31, 2, 1);
                __CopyMapTiles(0x4d, 0x3b, 0x52, 0x31, 2, 1);
                __SetFlag(0x302);
            } else {
                pk.arg5 = OvlFunc_924_200b948;
                __CopyMapTiles(0x4b, 0x39, 0x56, 0x29, 1, 1);
                __CopyMapTiles(0x47, 0x3b, 0x56, 0x2a, 1, 1);
                __CopyMapTiles(0x47, 0x3b, 0x56, 0x2b, 1, 1);
                __CopyMapTiles(0x47, 0x3b, 0x56, 0x2c, 1, 1);
                __CopyMapTiles(0x47, 0x3b, 0x50, 0x31, 1, 1);
                __CopyMapTiles(0x47, 0x3b, 0x51, 0x31, 1, 1);
                __CopyMapTiles(0x47, 0x3b, 0x52, 0x31, 1, 1);
                __CopyMapTiles(0x4e, 0x3a, 0x53, 0x31, 1, 1);
                OvlFunc_924_20088ec(pk);
                __ClearFlag(0x302);
            }
        } else if (pk.b == 10) {
            if ((pk.z >> 20) == 0x28) {
                OvlFunc_924_20088ec(pk);
                if (!__GetFlag(flag)) {
                    __Func_80933d4(0xc0 << 9, 0xc0 << 6);
                    __Func_80933f8(0x2ca0000, -1, 0x94 << 18, 1);
                    __Func_8093530();
                    __SetFlag(flag);
                    OvlFunc_924_20097a8(5);
                    __CutsceneWait(50);
                } else {
                    OvlFunc_924_20097a8(5);
                }
                __SetFlag(0x306);
            } else if ((pk.z >> 20) == 0x2a) {
                pk.arg5 = OvlFunc_924_20098f8;
                OvlFunc_924_20088ec(pk);
                OvlFunc_924_20096c4(5);
                __ClearFlag(0x306);
            }
        }
    }
    __CutsceneEnd();
}

extern void OvlFunc_924_2009bf0(void);

void OvlFunc_924_2009bd8(void) {
    __CutsceneStart();
    OvlFunc_924_20083a8();
    __CutsceneEnd();
    OvlFunc_924_2009bf0();
}

void OvlFunc_924_2009bf0(void)
{
    extern unsigned char Lm924_6064[] __asm__(".Lm924_6064");
    extern void __Func_8010560(void *, int, int);

    struct Actor *a;
    int x;
    int z;

    x = ((struct Actor *)__MapActor_GetActor(8))->pos.x / 0x100000;
    z = ((struct Actor *)__MapActor_GetActor(8))->pos.z / 0x100000;
    __CutsceneStart();

    if (x == 10 && z == 0x17) {
        ((struct Actor *)__MapActor_GetActor(8))->pos.y -= 0x20000;
        a = (struct Actor *)__MapActor_GetActor(8);
        a->prevPos.y = ((struct Actor *)__MapActor_GetActor(8))->pos.y;
        __CopyMapTiles(6, 0x1d, 10, 0x17, 1, 1);
        __PlaySound(0xd9);
        __Func_8010560(Lm924_6064, 10, 0x12);
        __Func_8010704(10, 0x10, 1, 1, 10, 0x13);
        __SetFlag(0x878);
    }

    __CutsceneEnd();
}

void OvlFunc_924_2009c9c(void) {
    extern unsigned char Lm924_6064[] __asm__(".Lm924_6064");
    int x;
    int z;

    if (API_GetFlag(0x256)) {
        return;
    }
    x = ((short *)&((struct Actor *)__MapActor_GetActor(0))->pos.x)[1];
    z = ((short *)&((struct Actor *)__MapActor_GetActor(0))->pos.z)[1];
    x -= 0xa4;
    if ((unsigned int)x > 7) {
        return;
    }
    if (z < (0xba << 1)) {
        return;
    }
    if (z >= (0xba << 1) + 8) {
        return;
    }
    API_CutsceneStart();
    API_SetFlag(0x256);
    API_CutsceneWait(5);
    ((struct Actor *)__MapActor_GetActor(0))->pos.y += 0xfffe0000;
    ((struct Actor *)__MapActor_GetActor(0))->prevPos.y = ((struct Actor *)__MapActor_GetActor(0))->pos.y;
    API_CopyMapTiles(6, 0x1d, 0xa, 0x17, 1, 1);
    API_PlaySound(0xd9);
    CallFunc_8010560(0xa, 0x12, Lm924_6064);
    API_CutsceneEnd();
}

void OvlFunc_924_2009d3c(void) {
    extern unsigned char Lm924_608e[] __asm__(".Lm924_608e");

    if (!API_GetFlag(0x256)) {
        return;
    }
    API_CutsceneStart();
    API_ClearFlag(0x256);
    ((struct Actor *)__MapActor_GetActor(0))->pos.y += 0x80 << 10;
    ((struct Actor *)__MapActor_GetActor(0))->prevPos.y = ((struct Actor *)__MapActor_GetActor(0))->pos.y;
    API_CutsceneWait(5);
    API_CopyMapTiles(8, 0x1d, 0xa, 0x17, 1, 1);
    API_PlaySound(0xd9);
    CallFunc_8010560(0xa, 0x12, Lm924_608e);
    API_CutsceneEnd();
}

/* Distinct from the struct EffectData used elsewhere in this file. */
struct EffectData924 {
    int unk0;
    int unk4;
    int unk8;
    int unkc;
    int unk10;
    int unk14;
    int unk18;
    int unk1c;
    int unk20;
    int unk24;
};

void OvlFunc_924_2009db4(int mode)
{
    extern unsigned int __Random(void);
    extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);
    struct EffectData924 data;
    unsigned int i;
    unsigned int j;

    API_PlaySound(0xd3);
    if (mode == 0) {
        __CopyMapTiles(0x6f, 0x39, 0x71, 0x2a, 1, 1);
        __CopyMapTiles(0x6f, 0x3b, 0x71, 0x2b, 1, 1);
    } else if (mode == 1) {
        __CopyMapTiles(0x71, 0x3a, 0x70, 0x2e, 1, 1);
        __CopyMapTiles(0x73, 0x3a, 0x71, 0x2e, 1, 1);
    } else {
        __CopyMapTiles(0x73, 0x39, 0x74, 0x2c, 1, 1);
        __CopyMapTiles(0x71, 0x39, 0x73, 0x2c, 1, 1);
    }
    data.unk4 = 7;
    data.unk8 = 0x8000;
    data.unkc = 0x8000;
    for (i = 0; i <= 1; i++) {
        for (j = 0; j <= 7; j++) {
            if (j & 1) {
                if (mode == 0) {
                    OvlFunc_common0_10c(0xc6 << 18, 0, (0xb0 << 18) + (((i * 16) + j) << 16),
                                        ((__Random() << 3) >> 16) * 0x3333 - 0xcccc, 0,
                                        ((__Random() << 3) >> 16) * 0x3333 - 0xcccc, 0x90000, &data);
                } else if (mode == 1) {
                    OvlFunc_common0_10c((0xc8 << 18) + (((i * 16) + j) << 16), 0, 0x2ea0000,
                                        ((__Random() << 3) >> 16) * 0x3333 - 0xcccc, 0,
                                        ((__Random() << 3) >> 16) * 0x3333 - 0xcccc, 0x90000, &data);
                } else {
                    OvlFunc_common0_10c((-((i * 16) + j) << 16) + (0xcb << 18), 0, 0x2ca0000,
                                        ((__Random() << 3) >> 16) * 0x3333 - 0xcccc, 0,
                                        ((__Random() << 3) >> 16) * 0x3333 - 0xcccc, 0x90000, &data);
                }
                API_CutsceneWait(1);
            }
        }
        if (mode == 0) {
            __CopyMapTiles(0x6f, 0x3a, 0x71, i + 0x2b, 1, 1);
            __CopyMapTiles(0x6f, 0x3b, 0x71, i + 0x2c, 1, 1);
        } else if (mode == 1) {
            __CopyMapTiles(0x72, 0x3a, i + 0x71, 0x2e, 1, 1);
            __CopyMapTiles(0x73, 0x3a, i + 0x72, 0x2e, 1, 1);
        } else {
            __CopyMapTiles(0x72, 0x39, 0x73 - i, 0x2c, 1, 1);
            __CopyMapTiles(0x71, 0x39, 0x72 - i, 0x2c, 1, 1);
        }
    }
}

void OvlFunc_924_200a030(int arg0)
{
    extern void __CopyMapTiles(int, int, int, int, int, int);
    extern void __PlaySound(int);
    extern unsigned int __Random(void);
    extern void __CutsceneWait(int);
    extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);

    struct EffectData924 data;
    unsigned int i;
    unsigned int j;

    __CopyMapTiles(0x70, 0x39, 0x71, 0x2a, 1, 1);
    __CopyMapTiles(0x75, 0x3a, 0x70, 0x2e, 1, 1);
    __CopyMapTiles(0x75, 0x39, 0x74, 0x2c, 1, 1);
    __PlaySound(0x121);

    data.unk4 = 5;
    data.unk8 = 0x8000;
    data.unkc = 0x8000;

    for (i = 0; i <= 2; i++) {
        for (j = 1; j <= 7; j++) {
            if (j & 1) {
                if (arg0 == 0) {
                    OvlFunc_common0_10c((0x319 - ((__Random() * 5) >> 16)) << 16,
                                        0,
                                        0x2b70000 + (((i * 4) + j) << 17),
                                        0,
                                        arg0,
                                        0x4000,
                                        0x90000,
                                        &data);
                } else if (arg0 == 1) {
                    OvlFunc_common0_10c(0x3120000 + (((i * 4) + j) << 17),
                                        0,
                                        (0xba << 18) + (((__Random() * 5) >> 16) << 16),
                                        0x4000,
                                        0,
                                        0,
                                        0x90000,
                                        &data);
                } else {
                    OvlFunc_common0_10c(-(j << 17) - (i << 19) + (0xce << 18),
                                        0,
                                        (0xb2 << 18) + (((__Random() * 5) >> 16) << 16),
                                        0x4000,
                                        0,
                                        0,
                                        0x90000,
                                        &data);
                }
                __CutsceneWait(1);
            }
        }

        if (arg0 == 0) {
            __CopyMapTiles(0x70, 0x3a, 0x71, i + 0x2b, 1, 1);
        } else if (arg0 == 1) {
            __CopyMapTiles(0x70, 0x3a, i + 0x71, 0x2e, 1, 1);
        } else {
            __CopyMapTiles(0x70, 0x3a, 0x73 - i, 0x2c, 1, 1);
        }
    }
}
#include "actor.h"

typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_924__0200df20[16];
extern ActorCmd gScript_924__0200df60[18];
extern ActorCmd gScript_924__0200dff0[5];
extern ActorCmd gScript_924__0200dfa8[18];

int OvlFunc_924_200a1cc(void)
{
    /* Cast to struct Actor for the position accesses. */
    extern void __Func_80933d4(int, int);
    extern void __Func_80933f8(int, int, int, int);
    extern void __Func_8093530(void);
    extern int __GetFlag(int);
    extern void __MapActor_SetBehavior(int, ActorCmd *);
    extern void __CutsceneWait(int);

    int x;
    int z;

    x = ((struct Actor *)__MapActor_GetActor(9))->pos.x / 0x100000;
    z = ((struct Actor *)__MapActor_GetActor(9))->pos.z / 0x100000;

    __Func_80933d4(0xa0 << 11, 0xa0 << 8);
    __Func_80933f8(0xcc << 18, -1, 0xb2 << 18, 1);
    __Func_8093530();

    if (!__GetFlag(0x877)) {
        if (x == 0x32 && __GetFlag(0x319)) {
            __MapActor_SetBehavior(9, gScript_924__0200df20);
        } else if (x == 0x31) {
            if (z == 0x2c && !__GetFlag(0x319) && !__GetFlag(0x31a) && !__GetFlag(0x31b)) {
                __MapActor_SetBehavior(9, gScript_924__0200df60);
            } else if (z == 0x2c && __GetFlag(0x319)) {
                __MapActor_SetBehavior(9, gScript_924__0200dff0);
            } else if (z == 0x2e && __GetFlag(0x31a)) {
                __MapActor_SetBehavior(9, gScript_924__0200dfa8);
                __CutsceneWait(0x1e);
                return 1;
            }
        }
    }

    __CutsceneWait(0x1e);
    return 0;
}

#include "task.h"
#include "actor.h"

extern u32 __Random(); // Random()

void OvlFunc_924_200a2c4(void) {
    struct Actor* actor = __MapActor_GetActor(9);
    OvlFunc_924_200bb24(actor->pos.x, actor->pos.y + (((__Random() * 4) >> 0x10) << 0x10), actor->pos.z);
}

s32 OvlFunc_924_200a2ec(void) {
    u32 prio = 0xC80;
    __StartTask(OvlFunc_924_200a2c4, prio);
    return 0;
}

unsigned int OvlFunc_924_200a304(void) {
    __StopTask((void *)OvlFunc_924_200a2c4);
    return 0;
}

extern void __MapActor_TravelTo(int, int, int);
void __MapActor_WaitScript(int);
void __Func_8091220(int, int);
extern int OvlFunc_924_200a1cc(void);
extern void OvlFunc_924_200a030(int);
extern void OvlFunc_924_2009db4(int);
void OvlFunc_924_200a318(void)
{
    struct Pk pk;
    int actor_x;
    int pk_x;
    int val;

    __CutsceneStart();
    if (OvlFunc_924_2008758(&pk) != 0) {
        switch (pk.b) {
        case 10:
            OvlFunc_924_20088ec(pk);
            if (pk.z >> 20 == 0x26) {
                __SetFlag(0xc6 << 2);
            } else {
                __ClearFlag(0xc6 << 2);
            }
            break;
        case 11:
            actor_x = *(int *)((char *)__MapActor_GetActor(11) + 8) >> 20;
            OvlFunc_924_20088ec(pk);
            pk_x = pk.x >> 20;
            if (pk_x == 0x2f) {
                __SetFlag(0x319);
                __ClearFlag(0x31a);
                __ClearFlag(0x31b);
                OvlFunc_924_200a1cc();
                if (actor_x == 0x36) {
                    OvlFunc_924_200a030(0);
                } else if (actor_x == 0x30) {
                    OvlFunc_924_200a030(1);
                }
                OvlFunc_924_2009db4(2);
                __CutsceneWait(0x3c);
            } else if (pk_x == 0x30) {
                __SetFlag(0x31a);
                __ClearFlag(0x31b);
                __ClearFlag(0x319);
                if (OvlFunc_924_200a1cc() != 0) {
                    OvlFunc_924_200a030(2);
                    val = 0xd2;
                    OvlFunc_924_200a304();
                    OvlFunc_924_2009db4(1);
                    val <<= 18;
                    __MapActor_WaitScript(9);
                    OvlFunc_common0_18(val, 0, 0x3120000, 0xdf);
                    OvlFunc_common0_18(val, 0, 0x3320000, 0xdf);
                    __MapActor_TravelTo(9, 0xd2 << 2, 0xba << 2);
                    __CutsceneWait(5);
                    __PlaySound(0xbd);
                    __MapActor_WaitMovement(9);
                    __CutsceneWait(0x28);
                    __SetFlag(0x877);
                    __Func_8091220(0x10000, 0);
                    *(int *)((char *)iwram_3001ebc + (0xe0 << 1)) = 0x100;
                    __MapTransitionOut();
                    __WaitMapTransition();
                    __Func_8091e9c(0xf);
                    goto end;
                } else {
                    OvlFunc_924_200a030(2);
                    OvlFunc_924_200a304();
                    OvlFunc_924_2009db4(1);
                    __CutsceneWait(0x3c);
                }
            } else if (pk_x == 0x35) {
                __SetFlag(0x31b);
                __ClearFlag(0x319);
                __ClearFlag(0x31a);
                OvlFunc_924_200a1cc();
                OvlFunc_924_200a030(0);
                __CutsceneWait(0x3c);
            } else {
                __ClearFlag(0x319);
                __ClearFlag(0x31a);
                __ClearFlag(0x31b);
                OvlFunc_924_200a1cc();
                if (actor_x == 0x2f) {
                    OvlFunc_924_200a030(2);
                } else if (actor_x == 0x30) {
                    OvlFunc_924_200a030(1);
                }
                OvlFunc_924_2009db4(0);
                __CutsceneWait(0x3c);
            }
            break;
        }
    }
end:
    __CutsceneEnd();
}

extern void OvlFunc_924_200a51c(void);

void OvlFunc_924_200a504(void) {
    __CutsceneStart();
    OvlFunc_924_20083a8();
    OvlFunc_924_200a51c();
    __CutsceneEnd();
}

void OvlFunc_924_200a51c(void)
{
    int i;
    int flag;
    int x;
    int val;
    int base;
    int new_var;
    int new_var2;

    __CutsceneStart();
    i = 0;
    flag = 0xcc << 2;
    for (; i < 4; i++) {
        x = *(int *)(__MapActor_GetActor(i + 15) + 8);
        if (x < 0) {
            x += 0xfffff;
        }
        val = x >> 20;
        base = i << 2;
        if (val == base + 0x27) {
            __SetFlag(flag);
            __ClearFlag(flag + 1);
        } else {
            base += 0x29;
            if (val == base) {
                __SetFlag(flag + 1);
                __ClearFlag(flag);
            } else {
                __ClearFlag(flag);
                __ClearFlag(flag + 1);
            }
        }
        flag += 2;
    }

    x = *(int *)(__MapActor_GetActor(0x13) + 8);
    if (x < 0) {
        x += 0xfffff;
    }
    val = x >> 20;
    if (val == 0x39) {
        __SetFlag(0xce << 2);
        __ClearFlag(0x339);
        new_var = 0x3a;
        new_var2 = 7;
        __Func_8010704(0x35, 10, 1, 1, new_var, new_var2);
    } else if (val == 0x3b) {
        __SetFlag(0x339);
        __ClearFlag(0xce << 2);
        new_var = 0x3a;
        new_var2 = 7;
        __Func_8010704(0x35, 10, 1, 1, new_var, new_var2);
    } else {
        __ClearFlag(0xce << 2);
        __ClearFlag(0x339);
        new_var = 0x3a;
        new_var2 = 7;
        __Func_8010704(0x35, 11, 1, 1, new_var, new_var2);
    }
    __CutsceneEnd();
}

void OvlFunc_924_200a600(void)
{
  int new_var2;
  int val;
  int new_var;
  int actor;
  __CutsceneStart();
  actor = (int) __MapActor_GetActor(20);
  val = *((int *) (actor + 8));
  if (val <= (0 - 1))
  {
    val += 0xfffff;
  }
  val >>= 20;
  if (val == 28)
  {
    __SetFlag(0xd2 << 2);
    new_var = 0x1f;
    new_var2 = 20;
    __Func_8010704(0x1d, new_var2, 1, 1, new_var, new_var2);
  }
  __CutsceneEnd();
}

void OvlFunc_924_200a648(void)
{
    extern unsigned int iwram_3001e40;
    unsigned int i;
    unsigned short *src;
    unsigned short *dst;
    int tmp;

    if ((iwram_3001e40 & 7) == 0) {
        dst = (unsigned short *)0x5000050;
        tmp = *dst;
        *(unsigned short *)0x500005e = tmp;
        for (i = 0, src = (unsigned short *)0x5000052; i <= 6; i++) {
            *dst = *src;
            src++;
            dst++;
        }
    }
}

void OvlFunc_924_200a684(void) {
    API_CutsceneStart();
    API_MapActor_SetSpeed(3, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MessageID(0x1577);
    API_ActorMessage_Wait(3, 0, 0x14);
    API_MapActor_TravelToAnimWait(3, 0xd2 << 2, 0xa2 << 2);
    API_MapActor_Emote(3, 0x80 << 1, 0x3c);
    API_Func_8092adc(3, 0x80 << 8, 0x14);
    API_MapActor_SetAnim(3, 0x10);
    ((struct Actor *)__MapActor_GetActor(3))->scale.x = 0xffff0000;
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(3, 0, 0x14);
    API_MapActor_SetAnim(3, 1);
    ((struct Actor *)__MapActor_GetActor(3))->scale.x = 0x80 << 9;
    API_CutsceneWait(0x14);
    API_Func_8092adc(3, 0x80 << 7, 0x14);
    API_ShowActorMessage_NoWait(3, 0);
    if (API_Func_8091c7c(0, 0) == 0) {
        API_CutsceneWait(0x14);
        API_MapActor_DoAnim(3, 3);
        API_ActorMessage_Wait(3, 0, 0x14);
        *(unsigned short *)((char *)iwram_3001ebc + (0xec << 1)) += 1;
    } else {
        *(unsigned short *)((char *)iwram_3001ebc + (0xec << 1)) += 1;
        API_CutsceneWait(0x14);
        API_MapActor_DoAnim(3, 4);
        API_ActorMessage_Wait(3, 0, 0x14);
    }
    API_CutsceneWait(0x14);
    API_Func_8092adc(3, 0xc0 << 8, 0x14);
    API_Func_80933d4(0xcccc, 0x1999);
    API_Func_80933f8(0xd2 << 18, -1, 0x9e << 18, 1);
    API_MapActor_TravelToAnimWait(3, 0xd2 << 2, 0x9e << 2);
    API_Func_8093530();
    API_CutsceneWait(0x14);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(3, 4);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(3, 0, 0x14);
    API_SetFlag(0x87 << 4);
    API_CutsceneEnd();
}

void OvlFunc_924_200a814(void)
{
  __CutsceneStart();
  __MapActor_DoAnim(3, 4);
  __CutsceneWait(0x14);
  __MessageID(0x157d);
 do { } while (0);
  __ActorMessage_Wait(3, 0, 0x14);
  __CutsceneEnd();
}

void OvlFunc_924_200a844(void)
{
    extern void __WaitFrames(int);

    unsigned int count;
    unsigned int i;
    vu16 *pal;
    int r;
    int g;
    int b;

    do {
        pal = (vu16 *)0x5000050;
        count = 0;
        for (i = 0; i <= 7; i++, pal++) {
            r = *pal & 0x1f;
            g = (*pal >> 5) & 0x1f;
            b = (*pal >> 10) & 0x1f;
            if (r == 0x1f && g == 0x1f && b == 0x1f) {
                count++;
            } else {
                if (r < 0x1f)
                    r++;
                if (g < 0x1f)
                    g++;
                if (b < 0x1f)
                    b++;
                *pal = (b << 10) | (g << 5) | r;
            }
        }
        __WaitFrames(2);
    } while (count <= 7);
}

void OvlFunc_924_200a8b0(void)
{
    extern unsigned char CS_924_60b8[] __asm__(".Lm924_60b8");
    extern void OvlFunc_924_200a648(void);
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Func_8010560(void *, int, int);
    extern int __Func_8091c7c(int, int);
    extern void OvlFunc_924_200a844(void);
    extern void OvlFunc_924_200cf44(void);
    extern void OvlFunc_common0_0(struct Actor *, int);
    extern int __ShowActorMessage_NoWait(int, int);
    int column;
    int choice1;
    int choice2;
    struct Actor *actor;

    actor = (struct Actor *)__MapActor_GetActor(10);
    column = actor->pos.x;
    if (column < 0)
        column += 0xfffff;
    column >>= 20;
    API_CutsceneStart();
    if (column == 0x33) {
        API_MapActor_SetSpeed(3, 0xcccc, 0x6666);
        API_CutsceneWait(20);
        API_Func_80925cc(3, 2);
        API_CutsceneWait(20);
        API_Func_8092adc(3, 0xd000, 0);
        API_Func_8092adc(0, 0x5000, 10);
        API_MessageID(0x157f);
        __ShowActorMessage_NoWait(3, 0);
        choice1 = __Func_8091c7c(0, 0);
        if (choice1 == 0) {
            *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
            API_CutsceneWait(20);
            API_MapActor_DoAnim(3, 3);
            API_ActorMessage_Wait(3, 0, 20);
        } else {
            API_CutsceneWait(20);
            API_MapActor_DoAnim(3, 4);
            API_ActorMessage_Wait(3, 0, 20);
            *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        }
        API_MapActor_Emote(0, 0x100, 0x3c);
        actor = (struct Actor *)__MapActor_GetActor(1);
        OvlFunc_common0_0((struct Actor *)actor, 1);
        actor = (struct Actor *)__MapActor_GetActor(2);
        OvlFunc_common0_0((struct Actor *)actor, 1);
        API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
        API_MapActor_SetSpeed(2, 0xcccc, 0x6666);
        API_MapActor_SetPos(1, 0x3680000, 0x2580000);
        API_MapActor_SetPos(2, 0x3680000, 0x2580000);
        API_MapActor_TravelToAnim(2, 0x378, 0x278);
        API_MapActor_TravelToAnimWait(1, 0x370, 0x268);
        API_Func_8092adc(1, 0x5000, 0);
        API_MapActor_WaitMovement(2);
        API_Func_8092adc(2, 0x8000, 0);
        API_Func_80925cc(1, 1);
        API_CutsceneWait(20);
        API_ActorMessage_Wait(1, 0, 20);
        API_MapActor_Emote(3, 0x101, 0x3c);
        API_ActorMessage_Wait(3, 0, 20);
        API_Func_8092adc(1, 0x3000, 0);
        API_Func_8092adc(2, 0xb000, 20);
        API_MapActor_SetAnim(1, 3);
        API_MapActor_DoAnim(2, 3);
        API_CutsceneWait(30);
        API_Func_8092adc(1, 0x5000, 0);
        API_Func_8092adc(2, 0x8000, 20);
        API_ActorMessage_Wait(2, 0, 20);
        API_MapActor_DoAnim(3, 3);
        API_CutsceneWait(20);
        API_ActorMessage_Wait(3, 0, 20);
        API_MapActor_TravelToAnim(3, 0x348, 0x290);
        API_CutsceneWait(5);
        API_Func_8092adc(2, 0x5000, 0);
        API_CutsceneWait(10);
        API_Func_8092adc(0, 0x4000, 0);
        API_MapActor_WaitMovement(3);
        API_CutsceneWait(10);
        API_ActorMessage_Wait(3, 0, 20);
        API_Func_8092adc(3, 0xd000, 20);
        API_ActorMessage_Wait(3, 0, 20);
        API_Func_80925cc(1, 1);
        API_CutsceneWait(20);
        API_Func_8092adc(1, 0xc000, 20);
        __ShowActorMessage_NoWait(1, 0);
        choice2 = __Func_8091c7c(0, 0);
        if (choice2 == 0) {
            API_CutsceneWait(20);
            API_MapActor_DoAnim(1, 3);
            API_ActorMessage_Wait(1, 0, 20);
            *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        } else {
            *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
            API_CutsceneWait(20);
            API_MapActor_DoAnim(1, 4);
            API_ActorMessage_Wait(1, 0, 20);
        }
        API_MapActor_SetAnim(3, 16);
        API_CutsceneWait(30);
        API_Func_80925cc(3, 1);
        API_CutsceneWait(20);
        API_ActorMessage_Wait(3, 0, 20);
        API_MapActor_TravelToAnimWait(3, 0x348, 0x278);
        API_Func_8092adc(0, 0x5000, 0);
        API_Func_8092adc(1, 0x5000, 0);
        API_Func_8092adc(2, 0x8000, 0);
        API_CutsceneWait(30);
        OvlFunc_924_200cf44();
        API_CutsceneWait(0x32);
        API_PlaySound(0x83);
        API_Func_8091220(0x10000, 0);
        API_Func_8091200(0x207e9f, 0);
        API_Func_8091254(10);
        API_WaitFrames(1);
        API_PlaySound(0xdc);
        API_WaitFrames(0x28);
        API_Func_8091200(0x10000, 0);
        API_Func_8091254(0x3c);
        API_WaitFrames(0x3c);
        API_PlaySound(0xd1);
        OvlFunc_924_200a844();
        API_CopyMapTiles(0x7e, 0x23, 0x74, 0x23, 1, 2);
        CallFunc_8010560(0x74, 0x23, CS_924_60b8);
        API_StopTask(OvlFunc_924_200a648);
        API_CutsceneWait(20);
        API_MapActor_DoAnim(3, 3);
        API_CutsceneWait(20);
        API_MapActor_SetSpeed(3, 0x30000, 0x18000);
        API_MapActor_Jump(3, 4, 0);
        API_MapActor_TravelToAnim(3, 0x348, 0x258);
        API_MapActor_WaitMovement(3);
        API_Func_8010704(0x74, 0x24, 3, 4, 0x34, 0x24);
        OvlFunc_common0_18(0x3480000, 0x380000, 0x2600000, 0xdf);
        API_MapActor_SetSpeed(3, 0xcccc, 0x6666);
        API_MapActor_TravelToAnimWait(3, 0x348, 0x230);
        API_MapActor_SetPos(3, 0, 0);
        API_CutsceneWait(20);
        API_Func_8092adc(0, 0x4000, 0);
        API_Func_8092adc(1, 0x8000, 0);
        API_Func_8092adc(2, 0xb000, 0);
        API_CutsceneWait(10);
        API_MapActor_SetAnim(0, 3);
        API_MapActor_SetAnim(1, 3);
        API_MapActor_DoAnim(2, 3);
        API_CutsceneWait(20);
        API_MapActor_SetAnim(1, 2);
        actor = (struct Actor *)__MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(1, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
        }
        API_MapActor_SetAnim(2, 2);
        actor = (struct Actor *)__MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(2, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
        }
        API_MapActor_WaitMovement(1);
        API_MapActor_SetPos(1, 0, 0);
        API_MapActor_WaitMovement(2);
        API_MapActor_SetPos(2, 0, 0);
        API_SetFlag(0x871);
    }
    API_CutsceneEnd();
}

void OvlFunc_924_200adcc(void)
{
    extern unsigned int iwram_3001e40;
    unsigned int i;
    unsigned short *src;
    unsigned short *dst;
    int tmp;

    if ((iwram_3001e40 & 7) == 0) {
        dst = (unsigned short *)0x50000c2;
        tmp = *dst;
        *(unsigned short *)0x50000ce = tmp;
        for (i = 0, src = (unsigned short *)0x50000c4; i <= 5; i++) {
            *dst = *src;
            src++;
            dst++;
        }
    }
}
void OvlFunc_924_200ae08(void)
{
    extern void __WaitFrames(int);
    volatile unsigned short *pal;
    int done;
    unsigned int i;
    int r;
    int g;
    int b;

    do {
        pal = (volatile unsigned short *)0x50000c2;
        done = 0;
        for (i = 0; i <= 6; i++) {
            r = *pal & 0x1f;
            g = (*pal >> 5) & 0x1f;
            b = (*pal >> 10) & 0x1f;
            if (r > 0)
                r--;
            if (g > 0)
                g--;
            if (b > 0)
                b--;
            *pal = (b << 10) | (g << 5) | r;
            if (*pal == 0)
                done++;
            pal++;
        }
        __WaitFrames(5);
    } while (done != 7);
}
struct EffectData924b {
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

extern unsigned char Lm924_5e70[] __asm__(".Lm924_5e70");

void OvlFunc_924_200ae6c(int arg0)
{
    extern void __Func_8092950(int, int);
    extern void __WaitFrames(int);
    extern void OvlFunc_924_200bbd4(int, int, int);
    extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);

    struct EffectData924b data;
    struct Actor *actor;
    unsigned int i;
    int x;
    int y;
    int r;

    actor = (struct Actor *)__MapActor_GetActor(arg0);
    actor->__unk55 = 0;
    __Actor_SetSpriteFlags((unsigned char *)actor, 0);
    r = arg0;
    __Func_8092950(r, 0x100);
    __PlaySound(0xdd);

    data.unk0 = 1;
    data.unk4 = 5;
    data.unk18 = 0x11e;
    data.unk1c = Lm924_5e70;

    for (i = 0; i <= 0x2f; i++) {
        if (i <= 0x1f)
            OvlFunc_924_200bbd4(actor->pos.x, actor->pos.y, actor->pos.z);
        if (i & 1) {
            __PlaySound(0xf6);
            x = actor->pos.x + (((__Random() * 24) >> 16) << 16) - 0xc0000;
            y = actor->pos.y + (((__Random() * 32) >> 16) << 16) - 0x100000;
            r = (((__Random() * 4) >> 16) << 15) + 0x8000;
            OvlFunc_common0_10c(x, y, actor->pos.z, 0, r, 0, 0x330000, &data);
        }
        actor->pos.y += i * 0x1999;
        actor->prevPos.y = actor->pos.y;
        __WaitFrames(2);
    }
}
void OvlFunc_924_200af68(void)
{
    extern void OvlFunc_924_200adcc(void);
    extern void OvlFunc_924_200ae08(void);
    extern void OvlFunc_924_200ae6c(int);
    extern unsigned int __Random(void);
    extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);
    struct EffectData924b data;
    unsigned int i, j;
    unsigned int x1, z1, x2, z2, x3;
    int vx, vz2, vz3;
    int y, w, h;

    API_CutsceneStart();
    API_CutsceneWait(20);
    OvlFunc_924_200ae08();
    API_StopTask(OvlFunc_924_200adcc);
    API_CopyMapTiles(0x2d, 0x4d, 0x2d, 0x49, 9, 4);
    API_CutsceneWait(30);
    data.unk0 = 1;
    data.unk4 = 5;
    data.unk18 = 0x11e;
    data.unk1c = Lm924_5e70;
    for (i = 0; i <= 15; i++) {
        if (i & 1)
            API_PlaySound(0xf6);
        x1 = ((__Random() * 48) >> 16) << 16;
        x1 += 0x3000000;
        z1 = ((__Random() * 56) >> 16) << 16;
        z1 += 0x880000;
        OvlFunc_common0_10c(x1, 0, z1, 0, 0, 0, 0x330001, &data);
        API_CutsceneWait(2);
    }
    API_CutsceneWait(40);
    for (i = 0; i <= 15; i++) {
        if (i & 1)
            API_PlaySound(0xf6);
        x2 = ((__Random() * 48) >> 16) << 16;
        x2 += 0x3000000;
        z2 = ((__Random() * 56) >> 16) << 16;
        z2 += 0x980000;
        vz2 = -(((__Random() * 10) >> 16) * 0x3333) - 0x3333;
        OvlFunc_common0_10c(x2, 0, z2, 0, 0, vz2, 0x330001, &data);
        API_CutsceneWait(2);
    }
    API_CutsceneWait(60);
    API_PlaySound(0x8d);
    API_Func_8012330(0x50000, 0x50000, 0x10000);
    API_CutsceneWait(60);
    data.unk4 = 7;
    data.unk8 = 0xb333;
    data.unkc = 0xb333;
    data.unk10 = 0x13333;
    data.unk14 = 0x13333;
    for (i = 0; i <= 3; i++) {
        y = 12 - i;
        h = 1;
        w = 3;
        __CopyMapTiles(0x3b, y, 0x30, y, w, h);
        for (j = 0; j <= 31; j++) {
            x3 = ((__Random() * 48) >> 16) << 16;
            x3 += 0x3000000;
            vx = ((__Random() * 8) >> 16) * 0x1999 - 0x6664;
            vz3 = ((__Random() * 8) >> 16) * 0x1999;
            OvlFunc_common0_10c(x3, 0, ((-(j >> 1) - (i << 4)) << 16) + 0xc00000, vx, 0, vz3, 0xd0001, &data);
            API_CutsceneWait(2);
        }
    }
    API_PlaySound(0x121);
    API_Func_8012330(-1, -1, 0xe666);
    API_Func_8012350();
    API_MapActor_PlayPendingSound();
    API_CutsceneWait(30);
    if (API_GetFlag(0x881) != 0) {
        API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
        API_MapActor_TravelToAnimWait(0, 0x338, 0xe8);
        API_MapActor_TravelToAnimWait(0, 0x318, 0xe8);
        API_MapActor_TravelToAnimWait(0, 0x318, 0xd0);
        API_MapActor_SetSpeed(0, 0x20000, 0x10000);
        API_MapActor_Jump(0, 4, 0);
        API_MapActor_TravelToAnim(0, 0x318, 0xc8);
        API_CutsceneWait(10);
        API_MapActor_SetAnim(0, 18);
        OvlFunc_924_200ae6c(0);
        API_CutsceneWait(0x3c);
        API_StopTask(OvlFunc_924_200adcc);
        API_Func_8091220(0x10000, 0);
        API_Func_8091200(0x10005, 0);
        API_Func_8091254(0x78);
        API_CutsceneWait(0x78);
        API_Func_8091200(0x7fff, 0);
        API_Func_8091254(0x3c);
        API_CutsceneWait(0x3c);
        API_Func_8091e9c(9);
        API_CutsceneEnd();
    } else {
        API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
        API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
        API_MapActor_SetSpeed(2, 0xcccc, 0x6666);
        API_MapActor_SetSpeed(3, 0xcccc, 0x6666);
        API_MapActor_TravelToAnimWait(0, 0x338, 0xf0);
        API_Func_8092adc(0, 0xa000, 20);
        API_MapActor_SetPos(3, 0x3380000, 0xf00000);
        API_MapActor_TravelToAnimWait(3, 0x318, 0xe8);
        API_Func_8092adc(3, 0xc000, 0);
        API_CutsceneWait(0x3c);
        API_Func_8092adc(3, 0x2000, 20);
        API_MapActor_DoAnim(3, 3);
        API_CutsceneWait(0x28);
        API_Func_8092adc(3, 0xc000, 20);
        API_MapActor_TravelToAnimWait(3, 0x318, 0xc8);
        OvlFunc_924_200ae6c(3);
        API_CutsceneWait(20);
        API_Func_80925cc(0, 2);
        API_CutsceneWait(30);
        API_MapActor_TravelToAnimWait(0, 0x318, 0xe8);
        API_Func_8092adc(0, 0xc000, 0);
        API_MapActor_SetPos(1, 0x3180000, 0xe80000);
        API_MapActor_SetPos(2, 0x3180000, 0xe80000);
        API_MapActor_TravelToAnim(1, 0x330, 0xe0);
        API_MapActor_TravelToAnimWait(2, 0x300, 0xe0);
        API_MapActor_WaitMovement(1);
        API_Func_8092adc(1, 0xa000, 0);
        API_Func_8092adc(2, 0xe000, 20);
        API_MapActor_Emote(0, 0x102, 0);
        API_MapActor_Emote(1, 0x102, 0);
        API_MapActor_Emote(2, 0x102, 0x50);
        API_Func_8092adc(1, 0x6000, 0);
        API_Func_8092adc(2, 0x2000, 20);
        API_Func_80925cc(0, 1);
        API_CutsceneWait(0x3c);
        API_MapActor_SetSpeed(0, 0x8000, 0x4000);
        API_MapActor_TravelToAnimWait(0, 0x318, 0xe0);
        API_Func_8092adc(1, 0x8000, 0);
        API_Func_8092adc(2, 0, 0);
        API_MapActor_TravelToAnimWait(0, 0x318, 0xd0);
        API_Func_8092adc(1, 0xa000, 0);
        API_Func_8092adc(2, 0xe000, 20);
        API_MapActor_DoAnim(0, 3);
        API_CutsceneWait(20);
        API_MapActor_SetSpeed(0, 0x20000, 0x10000);
        API_MapActor_Jump(0, 4, 0);
        API_MapActor_TravelToAnim(0, 0x318, 0xc8);
        API_CutsceneWait(10);
        API_MapActor_SetAnim(0, 18);
        API_MapActor_Emote(1, 0x100, 0);
        API_MapActor_Emote(2, 0x100, 0);
        API_Func_809259c(1, 2);
        API_Func_809259c(2, 2);
        OvlFunc_924_200ae6c(0);
        API_CutsceneWait(0x3c);
        API_MapActor_Emote(1, 0x102, 0);
        API_MapActor_Emote(2, 0x102, 0x50);
        API_MapActor_TurnToFaceActor(1, 2, 20);
        API_MapActor_SetAnim(1, 3);
        API_MapActor_DoAnim(2, 3);
        API_CutsceneWait(0x28);
        API_MapActor_TravelToAnimWait(1, 0x318, 0xd8);
        API_Func_8092adc(2, 0xe000, 0);
        API_MapActor_TravelToAnimWait(1, 0x318, 0xc8);
        API_CutsceneWait(30);
        OvlFunc_924_200ae6c(1);
        API_MapActor_TravelToAnimWait(2, 0x318, 0xd8);
        API_MapActor_TravelToAnimWait(2, 0x318, 0xc8);
        API_CutsceneWait(30);
        OvlFunc_924_200ae6c(2);
        API_Func_8091220(0x10000, 0);
        API_StopTask(OvlFunc_924_200adcc);
        API_Func_8091200(0x10005, 0);
        API_Func_8091254(0x78);
        API_CutsceneWait(0x78);
        API_Func_8091200(0x7fff, 0);
        API_Func_8091254(0x3c);
        API_CutsceneWait(0x3c);
        API_CutsceneEnd();
        API_Func_8091e9c(8);
    }
}

void OvlFunc_924_200b5b8(void)
{
    __CutsceneStart();
    {
        unsigned int rq = 0;
        __MapActor_SetAnim(rq, 1);
    }
    {
        unsigned int rm = 0x1576;
        __Func_801776c(rm, 1);
    }
    __CutsceneEnd();
}

void OvlFunc_924_200b5dc(void)
{
	__CutsceneStart();
	{
		unsigned int rq = 0;
		__MapActor_SetAnim(rq, 1);
	}
	{
		unsigned int rm = 0x953;
		__Func_801776c(rm, 1);
	}
	__CutsceneEnd();
}

extern unsigned char *iwram_3001ebc__a3 __asm__("iwram_3001ebc");

void OvlFunc_924_200b600(void) {
    int r0;
    unsigned char *b;
    unsigned short *addr;
    unsigned short v;

    __CutsceneStart();
    __MapActor_SetAnim(0, 1);
    r0 = __GetFlag(0x881);
    if (r0 == 0) {
        __Func_801776c(0x1636, 1);
    } else {
        __Func_801776c(0x1635, 1);
    }
    r0 = __CheckPartyItem(0xb9);
    if (r0 != -1) {
        b = iwram_3001ebc__a3;
        addr = (unsigned short *)(b + (0xb9 << 1));
        v = 1;
        *addr = v;
    }
    __CutsceneEnd();
}

extern void OvlFunc_924_200cf90(int, int);

void OvlFunc_924_200b660(void)
{
    unsigned long long tull;
    unsigned long v1;
    unsigned short t2;
    int i;

    __CutsceneStart();
    __PlaySound(0x53);

    tull = 0xb8;
    do { tull = (unsigned long) tull; } while (0);
    v1 = tull;
    __Func_808f1c0((int) v1, 3);

    OvlFunc_924_200cf90(0xb9, 0xb8);
    i = __CheckPartyItem(0xb8);
    __Func_8019908(i, 1);

    t2 = 0xb8;
    do { t2 = (unsigned short) t2; } while (0);
    __Func_8019908(t2, 2);

    __Func_801776c(0x1638, 1);
    __SetFlag(0x200);
    __CutsceneEnd();
}

extern unsigned char Lconst_36[] __asm__(".Lconst_36");
__asm__(".equ .Lconst_36, 0x36");

struct MLStateEventView {
    unsigned char pad0[0x1c0];
    short event;
};
extern struct MLStateEventView MLStateEvent __asm__("gState");

static inline void API_Func_8092708(int a0, int a1, int a2)
{
    extern void __Func_8092708(int, int, int);
    __Func_8092708(a0, a1, a2);
}

void OvlFunc_924_200b6ac(void)
{
    API_CutsceneStart();
    if (MLStateEvent.event == (int)Lconst_36) {
        API_MapActor_TravelToAnimWait(0, 0x1d8, 0x258);
        API_Func_8092adc(0, 0x4000, 10);
        API_Func_80933f8(0xe8 << 17, -1, 0xa4 << 18, 1);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
        OvlFunc_common0_18(((struct Actor *)__MapActor_GetActor(0))->pos.x, 0, 0x2be0000, 0xdf);
        API_CopyMapTiles(0x5c, 0x2e, 0x5c, 0x28, 3, 2);
        ((struct Actor *)__MapActor_GetActor(0))->gravity = 0x8000;
        API_Func_8092b08(0, 2);
        API_Func_8092708(0, 6, -1);
        *(int *)(iwram_3001ebc__a3 + 0x1c0) = 0x203;
        API_CutsceneWait(0x3c);
        API_Func_8091e9c(8);
    } else {
        API_Func_8092708(0, 6, -1);
    }
    API_CutsceneEnd();
}
void OvlFunc_924_200b788(void)
{
    extern int OvlFunc_924_2008cd0(struct Actor *);
    extern void __Func_8092950(int, int);


    struct Actor *actor;

    actor = (struct Actor *)__MapActor_GetActor(0);
    if (API_GetFlag(0x109) == 0) {
        API_CutsceneStart();
        API_Func_80933f8(-1, -1, -1, 0);
        actor->__unk55 = 0;
        API_MapActor_SetPos(0, ((s16 *)&actor->pos.x)[1] << 16,
                          (((s16 *)&actor->pos.z)[1] << 16) + (int)0xfff00000);
        __Func_8092950(0, 0xf);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
        API_MapTransitionIn();
        API_WaitMapTransition();
        API_PlaySound(0xe4);
        actor->update = (actorfun_t)OvlFunc_924_2008cd0;
        API_MapActor_SetSpeed(0, 0x6666, 0x3333);
        API_Func_8092304(0, 0, 8);
        __Func_8092950(0, 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0), 1);
        actor->sprite->oam.priority = 1;
        API_Func_8092304(0, 0, 10);
        actor->__unk55 = 3;
        actor->update = 0;
        API_MapActor_PlayPendingSound();
        API_CutsceneEnd();
    }
}
void OvlFunc_924_200b860(void)
{
    extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);

    struct EffectData924 data;
    unsigned int i;
    unsigned int j;
    int a;
    int b;

    __CopyMapTiles(0x4a, 0x3a, 0x46, 0x22, 1, 1);
    data.unk4 = 7;
    data.unk8 = 0x8000;
    data.unkc = 0x8000;

    for (i = 0; i <= 1; i++) {
        for (j = 0; j <= 7; j++) {
            if (j & 1) {
                a = ((__Random() * 8) >> 16) * 0x3333 + 0xffff3334;
                b = ((__Random() * 8) >> 16) * 0x3333 + 0xffff3334;
                OvlFunc_common0_10c(0xd2 << 15,
                                    0,
                                    ((-j - (i << 4)) << 16) + (0x88 << 18),
                                    a,
                                    0,
                                    b,
                                    0x90000,
                                    &data);
                __CutsceneWait(1);
            }
        }
        __CopyMapTiles(0x4a, 0x3b, 0x46, 0x22 - i, 1, 1);
        __CopyMapTiles(0x4a, 0x3a, 0x46, 0x21 - i, 1, 1);
    }
}
void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);

#include "overlays/common0_effect.h"
#include "rpg.h"

void OvlFunc_924_200b948(void)
{
    struct EffectData data;
    unsigned int uVar2;
    unsigned int uVar3;
    int iVar4;

    __CopyMapTiles(0x4c, 0x3d, 0x4a, 0x26, 1, 1);
    data.unk4 = 5;
    data.unk8 = 0x8000;
    data.unkc = 0x8000;
    uVar3 = 0;
    do {
        uVar2 = 1;
        iVar4 = -0x20000;
        do {
            if ((uVar2 & 1) != 0) {
                if ((uVar2 & 2) != 0) {
                    OvlFunc_common0_10c((0x69 - (__Random() * 5 >> 16)) << 16, 0,
                                        iVar4 - (uVar3 << 19) + 0x22e0000, 0, 0, 0xffffc000, 0x90000, &data);
                } else {
                    OvlFunc_common0_10c(((uVar3 * 4 + uVar2) << 17) + 0xb70000, 0,
                                        (0x26c - (__Random() * 5 >> 16)) << 16, 0x4000, 0, 0, 0x90000, &data);
                }
                __CutsceneWait(1);
            }
            uVar2++;
            iVar4 -= 0x20000;
        } while (uVar2 <= 7);
        __CopyMapTiles(0x47, 0x3b, 0x46, 0x22 - uVar3, 1, 1);
        __CopyMapTiles(0x47, 0x3b, uVar3 + 0x4b, 0x26, 1, 1);
        uVar3++;
    } while (uVar3 <= 2);
}
void OvlFunc_924_200ba64(void)
{
    extern unsigned int iwram_3001e40;

    struct EffectData data;
    struct Actor *actor;
    unsigned int t;
    int y;
    int vx;
    int vy;

    actor = (struct Actor *)__MapActor_GetActor(0);
    t = iwram_3001e40 & 3;
    if (t == 0) {
        data.unk4 = 7;
        if (((__Random() << 1) >> 16) & 1) {
        } else {
            data.unk4 = 5;
        }
        data.unk8 = 0xb333;
        data.unkc = 0xb333;
        y = actor->pos.y + (((__Random() << 2) >> 16) << 16);
        vx = ((__Random() << 3) >> 16) * 0x3333 - 0xcccc;
        vy = ((__Random() << 3) >> 16) * 0x3333 - 0xcccc;
        OvlFunc_common0_10c(actor->pos.x, y, actor->pos.z, vx, vy, 0, 0x90000, &data);
    }
}
extern unsigned int iwram_3001e40;

void OvlFunc_924_200bb24(unsigned int a, int b, int c)
{
    struct EffectData data;
    unsigned int phase;
    int dx;
    int dy;

    phase = iwram_3001e40 & 3;
    if (phase == 0) {
        data.unk4 = 7;
        if ((((__Random() * 2) >> 16) & 1) == 0) {
            data.unk4 = 5;
        }
        data.unk8 = 0xb333;
        data.unkc = 0xb333;
        dx = ((__Random() * 8) >> 16) * 0x3333 - 0xcccc;
        dy = ((__Random() * 8) >> 16) * 0x3333 - 0xcccc;
        OvlFunc_common0_10c(a, b, c, dx, dy, phase, 0x90000, &data);
    }
}
void OvlFunc_924_200bbd4(int x, int y, int z)
{
    struct {
        int unk0;
        int unk4;
        int unk8;
        int unkc;
        int unk10;
        int unk14;
        int unk18;
        int unk1c;
        int unk20;
        int unk24;
    } data;
    extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);

    data.unk4 = 7;
    data.unk0 = 1;
    data.unk8 = 0xb333;
    data.unkc = 0xb333;
    x += ((__Random() << 4) >> 16) << 16;
    x -= 0x80000;
    z += ((__Random() << 3) >> 16) << 16;
    z -= 0x40000;
    OvlFunc_common0_10c(x, y, z, 0, 0, 0, 0xb0 << 12, &data);
}
void OvlFunc_924_200bc48(int x, int y, int z, int angle)
{
    extern void __vec3_translate(int, int, vec3_t *);
    extern void __WaitFrames(int);

    struct EffectData924 data;
    vec3_t vel;
    unsigned int i;
    int px;
    int pz;

    __PlaySound(0xd8);
    for (i = 0; i <= 11; i++) {
        if (i & 1) {
            data.unk4 = 7;
            if (i & 2)
                data.unk4 = 5;
            data.unk8 = 0x9999;
            data.unkc = 0x9999;
            vel.x = 0;
            vel.y = 0;
            vel.z = 0;
            __vec3_translate((6 - (i >> 1)) * 0x1999, angle, &vel);
            px = x + ((6 - ((__Random() * 6) >> 16)) << 16);
            pz = z + ((6 - ((__Random() * 6) >> 16)) << 16);
            OvlFunc_common0_10c(px, y, pz, vel.x, vel.y, vel.z, 0x90000, &data);
        }
        __WaitFrames(2);
    }
}
/* Map IDs 0x37..0x39 pooled as 32-bit constants (ldr rN, =0x37..0x39 in MercuryLighthouse_MapInit). */
extern unsigned char Lconst_37[] __asm__(".Lconst_37");
__asm__(".equ .Lconst_37, 0x37");
extern unsigned char Lconst_38[] __asm__(".Lconst_38");
__asm__(".equ .Lconst_38, 0x38");
extern unsigned char Lconst_39[] __asm__(".Lconst_39");
__asm__(".equ .Lconst_39, 0x39");

struct MercuryInitStateView {
    unsigned char beforeMap[0x1c0];
    short map;
    short room;
    unsigned char beforeDestination[0x7c];
    unsigned short destinationMap;
    unsigned short destinationRoom;
};

struct MercuryFieldView {
    unsigned char beforeTransition[0x1c0];
    int transition;
};

int MercuryLighthouse_MapInit(void)
{
    extern void OvlFunc_924_2008d58(void);
    extern void OvlFunc_924_200a2c4(void);
    extern void OvlFunc_924_200a648(void);
    extern void OvlFunc_924_200adcc(void);
    extern unsigned char ewram_2001000[];
    extern struct MercuryInitStateView MercuryState __asm__("gState");
    extern struct MercuryFieldView *MercuryField __asm__("iwram_3001ebc");
    extern void __Func_800fe9c(void);
    extern void __Func_8011ae0(void);
    extern void __Func_8011af0(void);
    extern void __Func_8019aa0(int, int, int);
    extern void __Func_8091494(struct Actor *);
    extern void __Func_8091ff0(unsigned int);
    extern void __Func_8092950(int, int);
    extern void *__Func_8093554(void);
    extern void OvlFunc_924_2008dfc(void);
    extern void OvlFunc_924_20097a8(int);
    extern void OvlFunc_924_2009db4(int);
    extern void OvlFunc_924_200a030(int);
    extern void OvlFunc_924_200b788(void);
    extern void OvlFunc_924_200cc68(void);
    extern void OvlFunc_924_200cfcc(int, void *);
    unsigned int i;
    int statueX;
    int statueFlag;
    int completionFlag;
    int stoppedMotion;

    API_SetFlag(0x111);
    MercuryState.destinationRoom = 11;
    MercuryState.destinationMap = (int)Lconst_39;
    MercuryField->transition = 0x204;
    SET_IO(REG_BLDCNT, 0x3f40);
    SET_IO(REG_BLDALPHA, 0x1010);
    OvlFunc_924_200cfcc(21, ewram_2001000);
    __Func_8091494(0);
    if (API_GetFlag(0x875))
        API_StartTask(OvlFunc_924_2008d58, 0xc80);
    else
        OvlFunc_924_2008dfc();

    if (MercuryState.map == (int)Lconst_36) {
        switch (MercuryState.room) {
        case 1:
        case 2:
        case 3:
            if (API_GetFlag(0x875))
                API_Func_8010704(0x42, 5, 27, 23, 2, 5);
            break;
        case 5:
        case 6:
            __Func_8091ff0(0xaa);
            break;
        case 15:
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(0), 1);
            /* fallthrough */
        case 4:
            if (API_GetFlag(0x876)) {
                API_WaitFrames(1);
                API_MapActor_SetPos(9, 0x2a00000, 0x800000);
                API_MapActor_SetPos(10, 0x2c00000, 0xc00000);
                API_MapActor_SetPos(11, 0x2880000, 0xf00000);
            } else if (!API_GetFlag(0x109)) {
                API_ClearFlag(0x310);
                API_ClearFlag(0x311);
                API_ClearFlag(0x312);
                API_ClearFlag(0x313);
            }
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(9), 1);
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(10), 1);
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(11), 1);
            OvlFunc_924_2008ba4(9);
            OvlFunc_924_2008ba4(10);
            OvlFunc_924_2008ba4(11);
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(12), 1);
            if (API_GetFlag(0x310)) {
                API_CopyMapTiles(0x77, 9, 0x6d, 11, 1, 1);
                if (API_GetFlag(0x311))
                    API_CopyMapTiles(0x76, 9, 0x68, 13, 1, 1);
                __Func_800fe9c();
                API_WaitFrames(1);
            }
            break;
        case 9:
        case 10:
            if (!API_GetFlag(0x873)) {
                API_MapActor_SetPos(3, 0x2b80000, 0x2780000);
                API_Func_8092adc(3, 0, 0);
            } else {
                API_MapActor_SetPos(8, 0x3080000, 0x2780000);
                API_Func_8010704(0x6e, 0x27, 5, 1, 0x2e, 0x27);
            }
            break;
        }
    }

    if (MercuryState.map == (int)Lconst_37) {
        switch (MercuryState.room) {
        case 1:
        case 2:
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(8), 1);
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(9), 1);
            if (API_GetFlag(0x302)) {
                API_WaitFrames(1);
                API_PlaySound(0xd3);
                API_MapActor_SetPos(8, 0xb80000, 0x2100000);
                API_Func_8010704(11, 31, 1, 4, 9, 31);
                API_Func_8010704(7, 30, 1, 4, 11, 31);
                API_CopyMapTiles(0x4a, 0x3a, 0x46, 0x20, 1, 2);
                API_CopyMapTiles(0x4a, 0x3b, 0x46, 0x22, 1, 1);
                API_CopyMapTiles(0x4c, 0x3c, 0x4a, 0x26, 3, 1);
                API_CopyMapTiles(0x4d, 0x3c, 0x4c, 0x26, 2, 1);
                API_CopyMapTiles(0x4b, 0x3a, 0x56, 0x29, 1, 3);
                API_CopyMapTiles(0x4b, 0x3b, 0x56, 0x2b, 1, 2);
                API_CopyMapTiles(0x4c, 0x3b, 0x50, 0x31, 2, 1);
                API_CopyMapTiles(0x4d, 0x3b, 0x52, 0x31, 2, 1);
            }
            break;
        case 3:
        case 4:
            __Func_800fe9c();
            API_WaitFrames(1);
            if (API_GetFlag(0x109) && API_GetFlag(0x256)) {
                API_CopyMapTiles(5, 2, 5, 11, 1, 1);
                API_CopyMapTiles(9, 1, 9, 7, 1, 2);
            }
            if (API_GetFlag(0x874)) {
                API_MapActor_SetPos(11, 0x580000, 0xd80000);
                ((struct Actor *)__MapActor_GetActor(11))->pos.y -= 0x20000;
                ((struct Actor *)__MapActor_GetActor(11))->prevPos.y = ((struct Actor *)__MapActor_GetActor(11))->pos.y;
                API_CopyMapTiles(9, 1, 9, 7, 1, 2);
                API_CopyMapTiles(5, 2, 5, 11, 1, 1);
                API_Func_8010704(9, 5, 1, 1, 9, 10);
            }
            break;
        case 7:
        case 8:
        case 9:
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(10), 1);
            if (API_GetFlag(0x306)) {
                OvlFunc_924_20097a8(0);
                API_Func_8010704(0x2a, 0x29, 4, 1, 0x2a, 0x27);
                API_Func_8010704(0x2a, 0x28, 4, 1, 0x2a, 0x29);
                API_MapActor_SetPos(10, 0x2c00000, 0x2800000);
            }
            break;
        }
    }

    if (MercuryState.map == (int)Lconst_38) {
        switch (MercuryState.room) {
        case 4:
        case 5:
        case 6:
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(15), 1);
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(16), 1);
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(17), 1);
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(18), 1);
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(19), 1);
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(0), 1);
            i = 0;
            statueX = 0x2780000;
            statueFlag = 0x330;
            for (; i <= 3; i++) {
                if (API_GetFlag(statueFlag))
                    API_MapActor_SetPos(i + 15, statueX, 0x580000);
                else if (API_GetFlag(statueFlag + 1))
                    API_MapActor_SetPos(i + 15, statueX + 0x200000, 0x580000);
                statueX += 0x400000;
                statueFlag += 2;
            }
            if (API_GetFlag(0x338)) {
                API_MapActor_SetPos(19, 0x3980000, 0x580000);
                API_Func_8010704(0x35, 10, 1, 1, 0x3a, 7);
            } else if (API_GetFlag(0x339)) {
                API_MapActor_SetPos(19, 0x3b80000, 0x580000);
                API_Func_8010704(0x35, 10, 1, 1, 0x3a, 7);
            }
            break;
        case 10:
        case 11:
            if (API_GetFlag(0x348)) {
                API_MapActor_SetPos(20, 0x1c80000, 0x1480000);
                API_Func_8010704(0x1d, 20, 1, 1, 0x1f, 20);
            }
            break;
        case 3:
        case 13:
            OvlFunc_924_200b788();
            /* fallthrough */
        case 1:
        case 2:
        case 12:
            __Func_8091ff0(0xaa);
            break;
        case 7:
        case 8:
        case 9:
            if (API_GetFlag(0x109) && API_GetFlag(0x256)) {
                ((struct Actor *)__MapActor_GetActor(0))->pos.y = -0x20000;
                ((struct Actor *)__MapActor_GetActor(0))->prevPos.y = ((struct Actor *)__MapActor_GetActor(0))->pos.y;
                API_CopyMapTiles(6, 29, 10, 23, 1, 1);
                API_CopyMapTiles(10, 28, 10, 18, 1, 2);
            }
            if (API_GetFlag(0x878)) {
                API_MapActor_SetPos(8, 0xa80000, 0x1780000);
                ((struct Actor *)__MapActor_GetActor(8))->pos.y -= 0x20000;
                ((struct Actor *)__MapActor_GetActor(8))->prevPos.y = ((struct Actor *)__MapActor_GetActor(8))->pos.y;
                API_CopyMapTiles(6, 29, 10, 23, 1, 1);
                API_CopyMapTiles(10, 28, 10, 18, 1, 2);
                API_Func_8010704(10, 16, 1, 1, 10, 19);
                __Func_800fe9c();
            }
            break;
        case 16:
            API_WaitFrames(1);
            API_MapActor_SetPos(10, 0x3300000, 0x2600000);
            API_MapActor_SetPos(11, 0x3080000, 0x2400000);
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(0), 1);
            OvlFunc_924_200a030(0);
            OvlFunc_924_2009db4(1);
            /* fallthrough */
        case 14:
            if (MercuryState.room == 14)
                API_PlaySound(0xd3);
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(9), 1);
            API_Func_8092b08(10, 2);
            ((struct Actor *)__MapActor_GetActor(10))->layer = 2;
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(11), 1);
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(12), 1);
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(13), 1);
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(14), 1);
            OvlFunc_924_2008ba4(10);
            OvlFunc_924_2008ba4(11);
            if (MercuryState.room == 14) {
                if (!API_GetFlag(0x109)) {
                    API_ClearFlag(0x318);
                    API_ClearFlag(0x319);
                    API_ClearFlag(0x31a);
                    API_ClearFlag(0x31b);
                } else {
                    OvlFunc_924_200a030(0);
                    if (API_GetFlag(0x319)) {
                        OvlFunc_924_2009db4(2);
                        if ((((struct Actor *)__MapActor_GetActor(9))->pos.z >> 20) == 0x2c)
                            API_StartTask(OvlFunc_924_200a2c4, 0xc80);
                    } else if (API_GetFlag(0x31a)) {
                        OvlFunc_924_2009db4(1);
                    } else if (!API_GetFlag(0x31b)) {
                        OvlFunc_924_2009db4(0);
                    }
                }
            }
            break;
        case 15:
            API_CutsceneStart();
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(8), 1);
            __Func_8092950(0, 15);
            __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
            ((struct Actor *)__MapActor_GetActor(8))->pos.y = 0x900000;
            stoppedMotion = 0;
            ((struct Actor *)__MapActor_GetActor(8))->__unk55 = stoppedMotion;
            ((struct Actor *)__MapActor_GetActor(8))->bounce = stoppedMotion;
            ((struct Actor *)__MapActor_GetActor(8))->gravity = 0x4ccc;
            MercuryField->transition = 0x100;
            API_MapTransitionIn();
            API_WaitMapTransition();
            ((struct Actor *)__MapActor_GetActor(8))->__unk55 = 3;
            API_PlaySound(0xbd);
            API_CutsceneWait(0x20);
            API_PlaySound(0xbc);
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(8), 2);
            API_Func_8012330(0x30000, 0x30000, 0x10000);
            API_Func_8012330(-1, -1, 0xe666);
            API_Func_8012350();
            API_CutsceneWait(0x3c);
            API_Func_8091e9c(16);
            API_CutsceneEnd();
            break;
        }
    }

    if (MercuryState.map == (int)Lconst_39) {
        switch (MercuryState.room) {
        case 10:
            API_StartTask(OvlFunc_924_200adcc, 0xc80);
            if (!API_GetFlag(0x109)) {
                OvlFunc_924_200b788();
                __Func_8091ff0(0xaa);
                API_Func_8091220(0x10000, 0);
                API_Func_8091200(0x10003, 1);
                API_Func_8091254(30);
                API_WaitMapTransition();
                API_MapActor_SetAnim(0, 1);
                API_CutsceneWait(30);
                __Func_8019aa0(0x1633, 0, 0);
                API_Func_8091200(0x10000, 0);
                API_Func_8091254(30);
            }
            break;
        case 15:
            API_MapActor_SetPos(3, 0, 0);
            __Func_8011ae0();
            SET_IO(REG_BLDCNT, 0);
            ((struct Actor *)__MapActor_GetActor(9))->scale.x = -0x10000;
            API_Func_8092b08(14, 1);
            API_Func_8092b08(15, 1);
            API_Func_8092b08(16, 1);
            completionFlag = API_GetFlag(0x109);
            if (completionFlag != 0) {
                API_Func_8010704(0x68, 0x22, 5, 4, 0x28, 0x22);
                API_CopyMapTiles(0x2d, 0x5b, 0x28, 0x5b, 5, 4);
            } else {
                API_MapActor_SetPos(10, 0x3380000, 0x2580000);
                API_Func_8010704(0x74, 0x24, 3, 4, 0x34, 0x24);
                ((struct Actor *)__MapActor_GetActor(10))->__unk55 = completionFlag;
                OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(10), 1);
                API_CutsceneStart();
                API_Func_80933f8(-1, -1, -1, 0);
                ((struct Actor *)__Func_8093554())->__unk55 = completionFlag;
                API_Func_8092b08(0, 1);
                API_Func_8092b08(13, 1);
                OvlFunc_924_200cc68();
                __Func_8011af0();
                API_CutsceneEnd();
            }
            break;
        case 12:
            API_CutsceneWait(1);
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(0), 1);
            /* fallthrough */
        case 11:
            API_Func_8010704(0x68, 0x22, 5, 4, 0x28, 0x22);
            API_CopyMapTiles(0x2d, 0x5b, 0x28, 0x5b, 5, 4);
            if (!API_GetFlag(0x881)) {
                API_CopyMapTiles(30, 0x2d, 0x32, 0x2d, 5, 6);
                API_CopyMapTiles(0x32, 0x69, 0x32, 0x6d, 5, 3);
                __Func_800fe9c();
                API_WaitFrames(1);
            } else {
                API_Func_8092b08(14, 1);
                API_Func_8092b08(15, 1);
                API_Func_8092b08(16, 1);
            }
            ((struct Actor *)__MapActor_GetActor(9))->scale.x = -0x10000;
            if (!API_GetFlag(0x82b)) {
                API_MapActor_SetPos(3, 0, 0);
                API_MapActor_SetPos(10, 0x3380000, 0x2580000);
                API_Func_8092b08(10, 1);
                API_Func_8010704(0x74, 0x25, 3, 3, 0x34, 0x25);
                API_CopyMapTiles(0x7e, 0x23, 0x74, 0x23, 1, 2);
                API_StartTask(OvlFunc_924_200a648, 0xc80);
                break;
            }
            if (!API_GetFlag(0x871)) {
                if (!API_GetFlag(0x870)) {
                    API_Func_8092adc(3, 0, 0);
                    API_MapActor_SetAnim(3, 16);
                } else {
                    API_MapActor_SetPos(3, 0x3480000, 0x2780000);
                    API_Func_8092adc(3, 0xc000, 0);
                }
                OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(3), 1);
                API_CopyMapTiles(0x7e, 0x23, 0x74, 0x23, 1, 2);
                API_StartTask(OvlFunc_924_200a648, 0xc80);
            } else {
                API_MapActor_SetPos(3, 0, 0);
                API_MapActor_SetPos(10, 0x3380000, 0x2580000);
                API_Func_8010704(0x74, 0x24, 3, 4, 0x34, 0x24);
                ((struct Actor *)__MapActor_GetActor(10))->collision = 0xfe;
                API_CutsceneWait(1);
            }
            ((struct Actor *)__MapActor_GetActor(10))->__unk55 = 0;
            OvlFunc_common0_0((struct Actor *)__MapActor_GetActor(10), 1);
            break;
        }
    }
    return 0;
}
extern unsigned char Msg1591[] __asm__(".Lm924_1591");
__asm__(".equ .Lm924_1591, 0x1591");

extern void __Func_80925cc(int, int);
extern void __Func_8092adc(int, int, int);
extern int __Func_8091c7c(int, int);
extern void __MapActor_TravelToAnimWait(int, int, int);
extern void __MapActor_Face(int, int, int);
extern void __MapActor_Emote(int, int, int);
extern void __Func_80917d0(int, int);
extern void __SetDjinni(int, int, int);
extern void __CalcStats(int);
extern void __MapActor_SetPos(int, int, int);
void OvlFunc_924_200ca08(void)
{
    int msg;
    int next_msg;
    int arg5;
    int arg6;
    char *actor;

    if (*(int *)((char *)__MapActor_GetActor(8) + 8) / 0x100000 == 0x30) {
        __CutsceneStart();
        msg = (int)Msg1591;
        __MessageID(msg);
        __CutsceneWait(0x14);
        __Func_80925cc(3, 1);
        API_Func_8092adc(0, 0x8000, 0x14);
        __ActorMessage_Wait(3, 0, 0x14);
        __MapActor_DoAnim(3, 3);
        __CutsceneWait(0x14);
        __MapActor_DoAnim(0, 3);
        __CutsceneWait(0x14);
        __CutsceneWait(0x3c);
        __MapActor_SetAnim(3, 0x10);
        __CutsceneWait(0x32);
        __MapActor_SetAnim(3, 1);
        __ShowActorMessage_NoWait(3, 0);
        if (__Func_8091c7c(0, 0) == 1) {
            __CutsceneWait(0x14);
            __Func_80925cc(3, 2);
            __CutsceneWait(0x14);
            __ActorMessage_Wait(3, 0, 0x14);
            __MapActor_DoAnim(3, 4);
            __CutsceneWait(0x14);
            __ActorMessage_Wait(3, 0, 0x14);
            __MapActor_DoAnim(3, 3);
            __CutsceneWait(0x14);
            __ShowActorMessage_NoWait(3, 0);
            if (__Func_8091c7c(0, 0) == 1) {
                __CutsceneWait(0x14);
                __MapActor_DoAnim(3, 4);
                __CutsceneWait(0x14);
                for (next_msg = msg + 5; ; next_msg = 0x1639) {
                    __MessageID(next_msg);
                    __ShowActorMessage_NoWait(3, 0);
                    if (__Func_8091c7c(0, 0) != 1)
                        break;
                    __CutsceneWait(0x14);
                    __MapActor_DoAnim(3, 4);
                    __CutsceneWait(0x14);
                }
            }
        }
        __MessageID(0x1597);
        API_MapActor_SetSpeed(3, 0xcccc, 0x6666);
        __MapActor_TravelToAnimWait(3, 0xb6 << 2, 0x9e << 2);
        __CutsceneWait(0x14);
        __ActorMessage_Wait(3, 0, 0x14);
        __MapActor_SetAnim(3, 0x10);
        __ActorMessage_Wait(3, 0, 0x14);
        __MapActor_SetAnim(3, 1);
        __MapActor_Face(3, 0, 0x14);
        __MapActor_DoAnim(3, 4);
        __CutsceneWait(0x14);
        __ActorMessage_Wait(3, 0, 0x14);
        API_MapActor_Emote(3, 0x105, 0x5a);
        __MapActor_DoAnim(3, 3);
        __CutsceneWait(0x14);
        __ActorMessage_Wait(3, 0, 0x14);
        __Func_80917d0(3, 1);
        __SetFlag(0x44);
        __GiveDjinni(3, 1, 0);
        __SetDjinni(3, 1, 0);
        __CalcStats(3);
        __MapActor_SetAnim(3, 2);
        actor = (char *)__MapActor_GetActor(0);
        if (actor != 0) {
            __MapActor_TravelTo(3, *(short *)(actor + 10), *(short *)(actor + 18));
        }
        __MapActor_WaitMovement(3);
        __MapActor_SetPos(3, 0, 0);
        arg5 = 0x2e;
        arg6 = 0x27;
        __Func_8010704(0x6e, 0x27, 5, 1, arg5, arg6);
        __SetFlag(0x873);
        __CutsceneEnd();
    }
}
void OvlFunc_924_200cc68(void)
{
    extern unsigned int iwram_3001e40;
    extern void __Func_800fe9c(void);
    extern void __Func_8011ae0(void);
    int *layer;
    int speed;

    layer = (int *)(*(char **)iwram_3001e70 + 0x164);
    speed = 0x9c28;
    layer[3] = 0x4890000;
    layer[7] = 0;
    ((struct Actor *)__MapActor_GetActor(0))->__unk55 = 0;
    ((struct Actor *)__MapActor_GetActor(0))->pos.z -= 0x890000;
    ((struct Actor *)__MapActor_GetActor(0))->prevPos.z = ((struct Actor *)__MapActor_GetActor(0))->pos.z;
    ((struct Actor *)__MapActor_GetActor(13))->__unk55 = 0;
    API_MapActor_SetPos(13, 0xaa << 18, 0xdc << 17);
    ((struct Actor *)__MapActor_GetActor(13))->pos.z -= 0x890000;
    ((struct Actor *)__MapActor_GetActor(13))->prevPos.z = ((struct Actor *)__MapActor_GetActor(13))->pos.z;
    __Func_800fe9c();
    API_WaitFrames(1);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(60);
    __Func_8011ae0();
    API_PlaySound(0xdf);
    do {
        layer[3] -= speed;
        ((struct Actor *)__MapActor_GetActor(0))->pos.z += speed;
        ((struct Actor *)__MapActor_GetActor(0))->prevPos.z = ((struct Actor *)__MapActor_GetActor(0))->pos.z;
        ((struct Actor *)__MapActor_GetActor(13))->pos.z += speed;
        ((struct Actor *)__MapActor_GetActor(13))->prevPos.z = ((struct Actor *)__MapActor_GetActor(13))->pos.z;
        if (layer[3] > 0x4000000) {
            if ((iwram_3001e40 & 15) == 0 && speed > 0xccb)
                speed -= 0x560;
            API_WaitFrames(1);
        } else {
            break;
        }
    } while (1);
    layer[3] = 0x4000000;
    __Func_800fe9c();
    API_WaitFrames(2);
    ((struct Actor *)__MapActor_GetActor(0))->__unk55 = 3;
    ((struct Actor *)__MapActor_GetActor(13))->pos.z = 0xdc << 17;
    ((struct Actor *)__MapActor_GetActor(13))->prevPos.z = ((struct Actor *)__MapActor_GetActor(13))->pos.z;
    API_CutsceneWait(30);
    API_MapActor_TravelToAnimWait(0, 0xb0 << 2, 0x92 << 2);
    ((struct Actor *)__MapActor_GetActor(0))->bounce = 0;
    API_MapActor_SetAnim(0, 6);
    API_CutsceneWait(6);
    API_MapActor_SetAnim(0, 7);
    ((struct Actor *)__MapActor_GetActor(0))->speed = 0xc0 << 10;
    ((struct Actor *)__MapActor_GetActor(0))->accel = 0x80 << 10;
    API_PlaySound(0x98);
    ((struct Actor *)__MapActor_GetActor(0))->motion.y = 0x80 << 11;
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    API_MapActor_TravelTo(0, 0xb8 << 2, 0x92 << 2);
    API_MapActor_WaitMovement(0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 1);
    ((struct Actor *)__MapActor_GetActor(0))->bounce = 0x80 << 7;
    API_MapActor_SetAnim(0, 6);
    API_CutsceneWait(6);
    API_Func_8092adc(0, 0x80 << 8, 30);
    API_PlaySound(0xdf);
    while (1) {
        layer[3] += speed;
        ((struct Actor *)__MapActor_GetActor(13))->pos.z -= speed;
        ((struct Actor *)__MapActor_GetActor(13))->prevPos.z = ((struct Actor *)__MapActor_GetActor(13))->pos.z;
        if (layer[3] > 0x488ffff)
            break;
        if ((iwram_3001e40 & 7) == 0 && speed <= 0xcccc)
            speed += 0x1999;
        API_WaitFrames(1);
    }
    layer[3] = 0x4000000;
    API_CopyMapTiles(0x2d, 0x5b, 0x28, 0x5b, 5, 4);
    API_Func_8010704(0x68, 0x22, 5, 4, 0x28, 0x22);
    __Func_800fe9c();
    API_WaitFrames(2);
    API_MapActor_SetPos(13, 0, 0);
    API_CutsceneWait(30);
    ((struct Actor *)__MapActor_GetActor(0))->flags |= 1;
}
void OvlFunc_924_200cf44(void)
{
    extern unsigned char *iwram_3001f30;
    extern void __Func_8096fb0(int, int);
    extern void __Func_80970f8(int, int);
    extern void __Func_809728c(void);
    extern void __FieldMove(int);
    extern void __Func_8097174(void);
    unsigned char *p;
    unsigned int v;

    p = iwram_3001f30;
    API_MapActor_SetPos(0xb, 0x3480000, 0x2580000);
    __Func_8096fb0(0x5d, 1);
    __Func_80970f8(3, 0xb);
    p += 0x71c;
    v = 8;
    v |= *p;
    *p = v;
    __Func_809728c();
    __FieldMove(1);
    __Func_8097174();
}

void OvlFunc_924_200cf90(int item, int replacement) {
    extern int __CheckPartyItem(int item);
    extern int __CheckItem(int pc, int item);
    extern struct Unit *__GetUnit(int pc);
    int pc;
    int slot;

    pc = __CheckPartyItem(item);
    if (pc != -1) {
        slot = __CheckItem(pc, item);
        if (slot != -1) {
            __GetUnit(pc)->items[slot] = replacement;
        }
    }
}

#include "dma.h"
#include "field/map_tile.h"

#define TILES_ADDR 0x02010000
#define TILES ((struct MapTile_528 *)TILES_ADDR)

extern void *__galloc_ewram(int a, int b);
extern struct Actor *__GetFieldActor(int);
extern s32 gScript_924__0200de38[];
extern s32 gScript_924__0200de20[];

void OvlFunc_924_200cfcc(int arg0, int *arg1)
{
    extern void __Sprite_SetAnim(struct Sprite *, int);
    struct Actor *actor;
    struct Actor *obj;
    struct Sprite *sprite;
    struct MapTile_528 *cell;
    GlobalState *gs;
    int z;

    *(unsigned int *)__galloc_ewram(0x23, 4) = (unsigned int)arg1;

    if (__GetFlag(0x109) == 0) {
        DMA3_CLEAR(arg1, 0x1c);
        arg1[1] = arg0;
        return;
    }

    gs = &gState;
    actor = __GetFieldActor(*(int *)((char *)gs + 0x1f4));
    z = actor->pos.z;
    cell = TILES + (((z / 0x100000) << 7) + actor->pos.x / 0x100000);

    if (arg1[0] != 0 && arg1[5] != 0) {
        obj = API_CreateActor(0x1a, actor->pos.x, actor->pos.y + 0x180000, z);
        if (obj != 0) {
            obj->floorPos = actor->floorPos;
            sprite = obj->sprite;
            __Actor_SetScript(obj, gScript_924__0200de38);
            obj->linkedActor = actor;
            obj->__unk55 = 4;
            obj->pos.y += -0x8000;
            if (sprite != 0) {
                __Sprite_SetAnim(sprite, 6 - arg1[0]);
                sprite->flags = 0;
                sprite->oam.priority = 1;
            }
            arg1[5] = (int)obj;
        }
    } else {
        arg1[5] = 0;
    }

    if (cell->b == arg0 && arg1[6] != 0) {
        obj = API_CreateActor(0x1a, actor->pos.x, actor->pos.y, actor->pos.z);
        if (obj != 0) {
            obj->floorPos = actor->floorPos;
            sprite = obj->sprite;
            __Actor_SetScript(obj, gScript_924__0200de20);
            obj->__unk55 = 0;
            obj->waveCounter = 0;
            obj->flags = 2;
            obj->speed = 0x40000;
            if (sprite != 0) {
                __Sprite_SetAnim(sprite, 6);
                sprite->flags = 0;
            }
            arg1[6] = (int)obj;
        }
    } else {
        arg1[6] = 0;
    }
}
extern unsigned char gScript_924__0200de08[];

void OvlFunc_924_200d158(struct Actor *arg0)
{
    extern void __Sprite_SetAnim(struct Sprite *, int);
    struct Actor *actor;
    struct Sprite *sprite;

    actor = API_CreateActor(0x18, arg0->pos.x, arg0->pos.y, arg0->pos.z);
    if (actor != 0) {
        sprite = actor->sprite;
        __Actor_SetScript(actor, gScript_924__0200de08);
        actor->__unk55 = 0;
        actor->layer = 1;
        actor->flags = 2;
        if (sprite != 0) {
            __Sprite_SetAnim(sprite, 2);
            sprite->flags = 0;
            sprite->oam.priority = 3;
        }
    }
}

int OvlFunc_924_200d1b0(struct Actor *actor) {
    struct Actor *target;
    int next;
    int val;
    int s;

    next = (unsigned short)actor->waveCounter + 1;
    target = actor->linkedActor;
    actor->waveCounter = next;
    val = (short)next;
    if (val > 31) {
        return 0;
    }
    s = __sin(val << 10);
    actor->scale.x = s;
    actor->scale.y = s;
    actor->pos.x = target->pos.x;
    actor->pos.y += 0x80 << 9;
    actor->pos.z = target->pos.z;
    return 1;
}

unsigned int OvlFunc_924_200d1f0(unsigned int arg0)
{
    unsigned short *p;
    int v;

    p = (unsigned short *)((char *)arg0 + 0x64);
    *p = *p + 1;
    v = (short)*p;
    if (v > 0x10)
        return 0;
    *(unsigned int *)((char *)arg0 + 0x18) = (v * 3) << 10;
    *(unsigned int *)((char *)arg0 + 0x1c) = (v * 3) << 10;
    return 1;
}
unsigned int OvlFunc_924_200d218(unsigned int arg0)
{
    short *p;
    int v;

    p = (short *)(arg0 + 0x64);
    *p = *p + 1;
    if ((int)((*p) << 16) >> 16 > 0x10)
        return 0;
    v = (((int)((*p) << 16) >> 16) << 11) + (0x80 << 9);
    *(unsigned int *)(arg0 + 0x18) = v;
    *(unsigned int *)(arg0 + 0x1c) = v;
    return 1;
}

#include "math.h"

extern s32 Func_8000948(s32);
extern fx32 Func_80008ac(fx32, fx32);
extern fx32 __FastIntSqrtFP1616_RAM(fx32);
extern u32 iwram_3001e40;

static inline s32 Mercury_Sqrt(s32 n)
{
    s32 (*func)(s32) = Func_8000948;
    return func(n);
}

static inline fx32 Mercury_FxDiv(fx32 num, fx32 denom)
{
    fx32 (*divide)(fx32, fx32) = Func_80008ac;
    return divide(num, denom);
}

bool32 OvlFunc_924_200d244(struct Actor *actor)
{
    struct Actor *target = actor->linkedActor;
    fx32 tz, tx;
    fx32 dx, dz;
    fx32 dist, step;

    actor->speed = 0x20000;
    actor->accel = 0x10000;
    tx = target->pos.x;
    tz = target->pos.z;
    actor->prevPos.x = 0x80000000;
    actor->prevPos.y = 0x80000000;
    actor->prevPos.z = 0x80000000;

    dx = (tx - actor->pos.x) / 0x10000;
    dz = (tz - actor->pos.z) / 0x10000;
    dist = Mercury_Sqrt(dx * dx + dz * dz) << 16;

    dx = tx - actor->pos.x;
    dz = tz - actor->pos.z;

    if (dist < 0x400000) {
        dist = __FastIntSqrtFP1616_RAM(fx32_multiply(dx, dx) + fx32_multiply(dz, dz));
    }

    step = dist / 8;
    if (step > actor->speed) {
        step = actor->speed;
    }

    if (dist < 0x4000) {
        actor->pos.x = tx;
        actor->pos.z = tz;
    } else {
        if (dist > step) {
            dx = fx32_multiply(Mercury_FxDiv(dist, dx), step);
            dz = fx32_multiply(Mercury_FxDiv(dist, dz), step);
        }
        actor->pos.x += dx;
        actor->pos.z += dz;
    }

    actor->sprite->layers[0]->colorswap = ((iwram_3001e40 >> 1) & 1) * 7;
    actor->sprite->visible = TRUE;

    return TRUE;
}

extern s32 gScript_924__0200de14[];

void OvlFunc_924_200d388(void)
{
    extern void __Sprite_SetAnim(struct Sprite *, int);
    extern unsigned char gState_b9[] __asm__("gState");
    struct MapState *map;
    struct Actor *target;
    struct Actor *actor;
    struct Sprite *sprite;
    unsigned char *gs;
    int idx;

    map = gPushBlockMapState;
    gs = gState_b9;
    idx = *(int *)(gs + 0x1f4);
    target = (struct Actor *)map->actors[idx];

    actor = API_CreateActor(0x1a, target->pos.x, target->pos.y, target->pos.z);
    if (actor != 0) {
        actor->floorPos = target->floorPos;
        sprite = actor->sprite;
        __Actor_SetScript(actor, gScript_924__0200de14);
        actor->__unk55 = 0;
        actor->waveCounter = 0;
        actor->linkedActor = target;
        if (sprite != 0) {
            __Sprite_SetAnim(sprite, 2);
            sprite->flags = 0;
            sprite->oam.priority = 1;
        }
    }

    actor = API_CreateActor(0x1a, target->pos.x, target->pos.y, target->pos.z);
    if (actor != 0) {
        actor->floorPos = target->floorPos;
        sprite = actor->sprite;
        __Actor_SetScript(actor, gScript_924__0200de14);
        actor->__unk55 = 0;
        actor->waveCounter = 0;
        actor->linkedActor = target;
        actor->flags = 2;
        if (sprite != 0) {
            __Sprite_SetAnim(sprite, 1);
            sprite->flags = 0;
        }
    }

    __PlaySound(0x82);
}
extern unsigned int iwram_3001edc;
extern s32 gScript_924__0200de38[];
extern void OvlFunc_924_200d388(void);
extern void __Actor_SetScript();
extern void __Actor_SetAnim();
extern void __CutsceneStart();
extern void __CutsceneEnd();
extern void __WaitFrames(int);
extern void __SetFlag();

void OvlFunc_924_200d458(void)
{
    extern unsigned char gState_b9[] __asm__("gState");
    int *r8;
    struct Actor *actor;
    struct Actor *target;
    struct Sprite *sprite;
    int i;
    struct MapState *map;
    unsigned char *gs;
    int idx;

    r8 = *(int **)iwram_3001edc;
    map = *(struct MapState **)((char *)&iwram_3001edc - 0x20);
    gs = gState_b9;
    idx = *(int *)(gs + 0x1f4);
    target = (struct Actor *)map->actors[idx];
    if ((unsigned int)*r8 > 2)
        return;

    __CutsceneStart();
    if (*(struct Actor **)((char *)r8 + 0x14) == 0) {
        actor = API_CreateActor(0x1a, target->pos.x, target->pos.y + (0xc0 << 13), target->pos.z);
        if (actor != 0) {
            sprite = actor->sprite;
            actor->floorPos = target->floorPos;
            __Actor_SetScript(actor, gScript_924__0200de38);
            actor->linkedActor = target;
            actor->__unk55 = 4;
            actor->pos.y += -0x8000;
            if (sprite != 0) {
                sprite->flags = 0;
                sprite->oam.priority = 1;
            }
            actor->visible = 0;
            *(struct Actor **)((char *)r8 + 0x14) = actor;
        }
    }
    actor = *(struct Actor **)((char *)r8 + 0x14);

    for (i = *r8; i <= 2; i++) {
        OvlFunc_924_200d388();
        __WaitFrames(30);
        actor->visible = 1;
        __Actor_SetAnim(actor, 5 - i);
    }

    *r8 = 3;
    r8[3] = (actor->pos.x & 0xfff00000) + 0x80000;
    r8[4] = (actor->pos.z & 0xfff00000) + 0x80000;
    __SetFlag(0x161);
    __CutsceneEnd();
}


extern unsigned int iwram_3001edc;
extern unsigned int gScript_924__0200de2c;

void OvlFunc_924_200d578(void)
{
    unsigned int r6;
    unsigned int r5;

    r6 = *(unsigned int *)*(unsigned int *)&iwram_3001edc;
    if (*(unsigned int *)r6 != 0) {
        *(unsigned int *)r6 = 0;
        __ClearFlag(0x161);
        r5 = *(unsigned int *)((char *)r6 + 0x14);
        if (r5 != 0) {
            unsigned short v = 0;
            *(unsigned short *)((char *)r5 + 0x64) = v;
            __Actor_SetScript(r5, &gScript_924__0200de2c);
            __Actor_SetAnim(r5, 7);
            *(unsigned int *)((char *)r6 + 0x14) = 0;
        }
    }
}

#include "math.h"

struct CS924_Traversal {
    int count, tileType, busy, resetX, resetZ;
    struct Actor *source, *traveler;
};
struct CS924_GameState {
    unsigned char padding[0x1f4];
    int partyIndex;
};
extern struct CS924_GameState CS924_State __asm__("gState");
extern unsigned int gKeyHeld;
extern unsigned int gKeyPress;
extern unsigned short CS924_Directions[] __asm__(".Lm924_5e44");
extern void __vec3_translate(int, unsigned int, int *);
extern void __DeleteActor(void *);

static inline void CS924_Project(int distance, unsigned int angle, int *position)
{
    __vec3_translate(distance, angle, position);
}
static inline struct Actor *CS924_ActorAt(unsigned char *scene, int slot)
{
    return *(struct Actor **)(scene + slot);
}
static inline int API_TestCollision_924(void *actor, int *pos)
{
    return __TestCollision(actor, pos);
}

void OvlFunc_924_200d5c0(void)
{
    extern void __Sprite_SetAnim(struct Sprite *, int);
    struct CS924_Traversal *state;
    unsigned char *scene, *sourceTile, *destTile;
    struct Actor *actor, *traveler, *source;
    struct Sprite *sprite;
    unsigned char savedMode;
    int collision, count, frame;
    unsigned int direction;
    int coords[3];

    state = *(struct CS924_Traversal **)iwram_3001edc;
    scene = *(unsigned char **)((unsigned char *)&iwram_3001edc - 0x20);
    actor = CS924_ActorAt(scene, CS924_State.partyIndex * 4 + 0x14);
    savedMode = actor->__unk55;
    direction = CS924_Directions[(gKeyHeld >> 4) & 15];
    if ((short)direction == -1)
        return;
    coords[0] = (actor->pos.x & 0xfff00000) + 0x80000;
    coords[1] = actor->floorPos;
    coords[2] = (actor->pos.z & 0xfff00000) + 0x80000;
    sourceTile = (unsigned char *)0x02010000 + 4 * ((coords[2] / 0x100000) * 128 + coords[0] / 0x100000);
    CS924_Project(0x200000, direction, coords);
    destTile = (unsigned char *)0x02010000 + 4 * ((coords[2] / 0x100000) * 128 + coords[0] / 0x100000);
    if (sourceTile[2] != state->tileType && destTile[2] == state->tileType && state->count == 0)
        return;
    API_CutsceneStart();
    collision = API_TestCollision_924(actor, coords);
    if (collision != 0)
        return;
    traveler = state->traveler;
    if (traveler != 0) {
        traveler->waveCounter = 0;
        __Actor_SetScript(traveler, &gScript_924__0200de2c);
        __Actor_SetAnim(traveler, 7);
        state->traveler = 0;
    }
    if (destTile[2] == state->tileType && state->count != 0) {
        source = state->source;
        traveler = API_CreateActor(26, source->pos.x, source->pos.y, source->pos.z);
        if (traveler != 0) {
            sprite = traveler->sprite;
            traveler->floorPos = source->floorPos;
            __Actor_SetScript(traveler, gScript_924__0200de20);
            traveler->__unk55 = 0;
            traveler->waveCounter = 0;
            traveler->flags = 2;
            traveler->speed = 0x40000;
            traveler->accel = 0x20000;
            __Actor_TravelTo(traveler, coords[0], coords[1], coords[2]);
            if (sprite != 0) {
                __Sprite_SetAnim(sprite, 6);
                sprite->flags = 0;
            }
            state->traveler = traveler;
        }
        count = state->count - 1;
        state->count = count;
        if (count == 0) {
            __DeleteActor(state->source);
            state->source = 0;
            API_ClearFlag(0x161);
        } else if (state->source != 0) {
            __Actor_SetAnim(state->source, 6 - count);
        }
    }
    __Actor_SetAnim(actor, 6);
    API_WaitFrames(3);
    API_PlaySound(0x98);
    __Actor_SetAnim(actor, 7);
    actor->speed = 0x30000;
    actor->accel = 0x20000;
    actor->motion.y = 0x40000;
    actor->__unk55 &= 0x7e;
    __Actor_SetSpriteFlags((unsigned char *)actor, 0);
    API_MapActor_TravelToWait(0, coords[0] >> 16, coords[2] >> 16);
    __Actor_SetAnim(actor, 6);
    API_WaitFrames(2);
    if (destTile[2] != state->tileType)
        __Actor_SetSpriteFlags((unsigned char *)actor, 1);
    else
        API_PlaySound(0xd7);
    API_WaitFrames(1);
    actor->__unk55 = savedMode;
    if (destTile[2] == state->tileType && state->traveler == 0) {
        __Actor_SetAnim(actor, 18);
        API_PlaySound(0xf1);
        for (frame = 0; ; frame++) {
            if ((frame & 15) == 0)
                OvlFunc_924_200d158(actor);
            if (frame > 31 && gKeyPress != 0)
                break;
            API_WaitFrames(1);
        }
        API_PlaySound(0x120);
        API_WaitFrames(1);
        actor->pos.x = state->resetX;
        actor->pos.z = state->resetZ;
        __Actor_SetSpriteFlags((unsigned char *)actor, 1);
    }
    state->busy = 0;
    API_CutsceneEnd();
    *(int *)(scene + 0x1b4) += fx32_multiply(*(int *)(scene + 0x1b0), 0x200000);
}
void OvlFunc_924_200d900(void)
{
    extern unsigned char gState_b9[] __asm__("gState");
    unsigned int *state;
    char *base;
    struct Actor *arg;
    int off = 0xfa << 1;
    int timer;
    int offset;

    state = (unsigned int *)**(unsigned int **)&iwram_3001edc;
    base = *(char **)((char *)&iwram_3001edc - 0x20);
    offset = *(int *)(gState_b9 + off) * 4 + 0x14;
    arg = *(struct Actor **)(base + offset);
    timer = state[2];
    if (timer != 0) {
        timer--;
    } else {
        OvlFunc_924_200d158(arg);
        timer = (((unsigned int)__Random() * 30) >> 16) + 10;
    }
    state[2] = timer;
}

extern void *__galloc_ewram(int a, int b);
extern void __DeleteActor(void *p);

void OvlFunc_924_200d948(void) {
    unsigned char *p;
    unsigned char *q;
    void *v;

    p = (unsigned char *)__galloc_ewram(0x23, 4);
    if (p == (unsigned char *)0)
        return;
    q = *(unsigned char **)p;
    v = *(void **)(q + 0x14);
    if (v == (void *)0)
        return;
    __DeleteActor(v);
    *(void **)(q + 0x14) = (void *)0;
}

