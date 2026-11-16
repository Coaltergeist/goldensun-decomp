typedef union { int raw; struct { unsigned short lo; short hi; } half; } Fx32Parts;
/* rom_7aa430 (overlay file 923): consolidated TU — mercury_lighthouse_entrance map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"
#include "field.h"

/* Void declarations for veneer callees. */
extern void __Actor_SetAnim();
extern void __Actor_SetScript();
extern void __Actor_WaitMovement();
extern void __CutsceneEnd();
extern void __CutsceneStart();
extern void __CutsceneWait();
extern void __Func_801776c();
extern void __MapActor_PlayPendingSound();
extern void __PlaySound();
extern void __SetFlag();


extern int OvlFunc_923_200858c();
extern void OvlFunc_923_2009fe8();

extern int Func_8000948(int);

int OvlFunc_923_2008314(int *a, int *b)
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

void *OvlFunc_923_2008350(int *pos, void *arg1)
{
    unsigned int i;
    unsigned char **actors;
    unsigned char *actor;

    actors = (unsigned char **)(*(char **)iwram_3001ebc + 0x14);
    for (i = 8; i <= 0x41; i++) {
        actor = actors[i];
        if (pos[0] >> 20 == *(int *)(actor + 8) >> 20 &&
            pos[1] / 0x10000 == *(int *)(actor + 0xc) / 0x10000 &&
            pos[2] >> 20 == *(int *)(actor + 0x10) >> 20) {
            return actor;
        }
    }
    return 0;
}
extern unsigned char *__MapActor_GetActor(unsigned int);
extern unsigned int L2700__a1[] __asm__(".Lm923_2700");
extern int __TestCollision(void *, int *);
extern void __WaitFrames(int);
extern void __PlaySound(unsigned int);
extern void __Actor_TravelTo(void *, int, int, int);

void OvlFunc_923_20083a8(void)
{
    int stk[3];
    unsigned char *actor;
    unsigned char *obj;
    unsigned char *hit;
    unsigned int dir;
    unsigned int t;
    int zero;

    actor = __MapActor_GetActor(0);
    dir = *(unsigned short *)(actor + 6) >> 12;
    t = L2700__a1[dir];
    stk[0] = *(int *)(actor + 8) + (t & 0xffff0000);
    stk[1] = *(int *)(actor + 0xc);
    t <<= 16;
    stk[2] = *(int *)(actor + 0x10) + t;
    obj = OvlFunc_923_2008350(stk, actor);
    if (obj == 0)
        return;

    t = L2700__a1[dir];
    stk[0] = *(int *)(obj + 8) + (t & 0xffff0000);
    stk[1] = *(int *)(obj + 0xc);
    t <<= 16;
    stk[2] = *(int *)(obj + 0x10) + t;
    hit = OvlFunc_923_2008350(stk, obj);
    if (hit != 0 && (hit[0x59] & 1))
        return;

    stk[0] = *(int *)(obj + 8);
    stk[1] = *(int *)(obj + 0xc) + (0x80 << 13);
    stk[2] = *(int *)(obj + 0x10);
    hit = OvlFunc_923_2008350(stk, obj);
    if (hit != 0 && (hit[0x59] & 1))
        return;

    obj[0x22] = 2;
    t = L2700__a1[dir];
    stk[0] = *(int *)(obj + 8) + (t & 0xffff0000);
    stk[1] = *(int *)(obj + 0xc);
    t <<= 16;
    stk[2] = *(int *)(obj + 0x10) + t;
    if (__TestCollision(obj, stk) > 0)
        return;
    zero = obj[0x62];
    if (zero != 0)
        return;

    __Actor_SetAnim(actor, 8);
    __WaitFrames(15);
    __PlaySound(0xb9);
    *(int *)(obj + 0x30) = 0x3333;
    *(int *)(obj + 0x34) = 0x3333;
    __Actor_TravelTo(obj, stk[0], stk[1], stk[2]);
    *(int *)(actor + 0x30) = 0x3333;
    *(int *)(actor + 0x34) = 0x3333;
    __Actor_TravelTo(actor, stk[0], stk[1], stk[2]);
    __Actor_WaitMovement(obj);
    __MapActor_PlayPendingSound();

    *(int *)(obj + 8) = stk[0];
    *(int *)(obj + 0x10) = stk[2];
    *(int *)(obj + 0x24) = zero;
    *(int *)(obj + 0x2c) = zero;
    *(int *)(actor + 0x38) = 0x80 << 24;
    *(int *)(actor + 0x40) = 0x80 << 24;
    *(int *)(actor + 0x24) = zero;
    *(int *)(actor + 0x2c) = zero;
    *(int *)(actor + 8) = ((Fx32Parts *)(actor + 8))->half.hi << 16;
    *(int *)(actor + 0x10) = ((Fx32Parts *)(actor + 0x10))->half.hi << 16;
    __Actor_SetAnim(actor, 1);
}
struct MapTile_OvlFunc_923_2008528 {
    unsigned short a;
    unsigned char b;
    unsigned char c;
};

extern unsigned char iwram_3001e70[];
extern unsigned char gBuffer[];

int OvlFunc_923_2008528(unsigned int layer, int x, int y, unsigned int w, unsigned int h, unsigned int val) {
    char *base;
    struct MapTile_OvlFunc_923_2008528 *buf;
    unsigned int i;
    unsigned int j;

    base = *(char **)iwram_3001e70;
    if (base == 0)
        return 0;

    if (layer <= 2) {
        int offset = 0x130 + layer * 0x30;
        buf = *(struct MapTile_OvlFunc_923_2008528 **)(base + offset);
    } else {
        buf = (struct MapTile_OvlFunc_923_2008528 *)gBuffer;
    }

    buf += x + (y << 7);
    for (i = 0; i < h; i++) {
        struct MapTile_OvlFunc_923_2008528 *row = buf + (i << 7);
        for (j = 0; j < w; j++) {
            row->b = val;
            row++;
        }
    }
    return 0;
}

extern unsigned int L2700[] __asm__(".Lm923_2700");
extern int L2740[] __asm__(".Lm923_2740");
extern void *OvlFunc_923_2008350(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_923_200858c(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L2700[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_923_2008350(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L2740;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L2700[idx];
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

extern int PushBlockIds_923[] __asm__(".Lm923_2740");
extern int PushBlockBoxes_923[] __asm__(".Lm923_2758");
extern unsigned int PushBlockDirs_923[] __asm__(".Lm923_2700");
extern struct MapState *gPushBlockMapState __asm__("iwram_3001ebc");

void *OvlFunc_923_2008630(int *dir, int *arg1, int *arg2)
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
            if (val == PushBlockIds_923[k]) {
                *arg2 = k;
                hero_x = *(int *)(hero + 8) >> 16;
                d = PushBlockDirs_923[*dir];
                target_x = (hero_x + (d >> 16)) >> 4;
                target_z = ((*(int *)(hero + 16) >> 16) + (short)d) >> 4;

                ax = *(short *)((char *)actor + 10);
                b_x1 = (ax + PushBlockBoxes_923[k * 4 + 0]) >> 4;
                az = *(short *)((char *)actor + 18);
                b_z1 = (az + PushBlockBoxes_923[k * 4 + 1]) >> 4;
                b_x2 = (ax + PushBlockBoxes_923[k * 4 + 2]) >> 4;
                b_z2 = (az + PushBlockBoxes_923[k * 4 + 3]) >> 4;

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


extern int L2758[] __asm__(".Lm923_2758");

int OvlFunc_923_2008758(void *arg0)
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
    obj = OvlFunc_923_2008630(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = L2758[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L2758[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = L2758[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L2758[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L2700[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L2700[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (L2758[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (L2758[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L2700[dir] & 0xffff0000;
        cur[2] += L2700[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L2700[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern int L2700__a2[] __asm__(".Lm923_2700");
void __MapActor_SetSpeed(unsigned int, int, int);
extern void __MapActor_SetAnim(unsigned int, unsigned int);
extern void __MapActor_TravelBy(unsigned int, int, int);
extern void __Func_8010704(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned char *__MapActor_GetActor(unsigned int);
extern void __Actor_TravelTo(void *, int, int, int);
void __MapActor_WaitMovement(unsigned int);
#include "field/push_block.h"

static inline void SetActorSpeed(int actor, int speed, int accel)
{
    __MapActor_SetSpeed(actor, speed, accel);
}
void OvlFunc_923_20088ec(struct Pk arg)
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
    t1 = L2758[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L2758[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L2758[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L2758[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (L2758[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (L2758[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_923_2008528(0, vb[0], vb[2], w, h, 0);
    __MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_923_200858c;
    __CutsceneWait(4);
    if (dir - 6 <= 7)
        __Actor_SetAnim(actor, 3);
    else
        __Actor_SetAnim(actor, 2);
    __PlaySound(0xef);
    __Actor_TravelTo(actor, arg.x, arg.y, arg.z);
    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 2);
    SetActorSpeed(0, 0x4ccc, 0x1999);
    __MapActor_TravelBy(0, (short)(L2700__a2[dir] >> 16) / 2, (short)(L2700__a2[dir]) / 2);
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
    x1 += L2758[arg.a << 2] << 16;
    x2 += L2758[(arg.a << 2) + 1] << 16;
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
    OvlFunc_923_2008528(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_923_2008528(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (L2758[arg.a << 2] << 16);
    u2 = ap[2] + (L2758[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_923_2008528(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

int OvlFunc_923_2008ba4(unsigned int actorId)
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
        if (*(short *)(*(int **)((char *)*(int **)(actor + 0x50) + 0x28)) == L2740[i]) {
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
    t1 = L2758[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L2758[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t3 = L2758[arg.a << 2];
    if (t3 < 0) t3 = -t3;
    t4 = L2758[(arg.a << 2) + 2];
    if (t4 < 0) t4 = -t4;
    w = (t3 + t4) >> 4;
    arg.x += L2758[arg.a << 2] << 16;
    arg.z += L2758[(arg.a << 2) + 1] << 16;
    arg.x >>= 20;
    arg.z >>= 20;
    raw = *(int *)(env + 0x13c);
    i = raw >> 20;
    raw = *(int *)(env + 0x140);
    camz = raw >> 20;
    s5 = i + arg.x;
    s6 = camz + arg.z;
    __Func_8010704(arg.x, arg.z, w, h, s5, s6);
    OvlFunc_923_2008528(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_923_2008528(2, arg.x, arg.z, w, h, 0xff);
    return 1;
}

int OvlFunc_923_2008cc0(struct Actor *actor) {
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

extern void __PlaySound(unsigned int);

unsigned int OvlFunc_923_2008d48(void) {
    __PlaySound(0x76);
    return 0;
}

extern int __atan2(int, int);

int OvlFunc_923_2008d58(char *arg0) {
    char *r5 = arg0;
    int actor = (int)__MapActor_GetActor(0);

    if ((*(int *)(actor + 0x10) >> 19) <= 0x16)
    {
        *(short *)(r5 + 6) = __atan2(*(int *)(actor + 0x10) - *(int *)(r5 + 0x10),
                                      *(int *)(actor + 8) - *(int *)(r5 + 8));
    }
    else if (*(unsigned short *)(r5 + 6) != (0xc0 << 8))
    {
        API_Func_8092adc(3, 0xc0 << 8, 0);
    }
    return 0;
}

extern int Lm923_291c __asm__(".Lm923_291c");
extern int Lm923_2924 __asm__(".Lm923_2924");
extern int gOvl_0200a920;
extern unsigned int iwram_3001e40;
void OvlFunc_923_2008d98(void)
{
    extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
    extern int _divsi3_RAM(int, int);
    volatile unsigned short c = 0;
    unsigned int i;
    int v, hi;

    if (_umodsi3_RAM(iwram_3001e40, 5) == 0) {
        Lm923_291c = (Lm923_291c + 4) & 0x1f;
        for (i = 0; i <= 5; i++) {
            c = ((unsigned short *)0x5000000)[0x6e - i] & 0x1f;
            v = c;
            if (i <= 2)
                v -= _divsi3_RAM(v * 4, 10);
            { unsigned short *d = &((unsigned short *)0x5000000)[0x6f - i];
            hi = (Lm923_2924 << 10) | (gOvl_0200a920 << 5);
            *d = v | hi; }
        }
        *(unsigned short *)0x50000d2 = Lm923_291c | hi;
    }
}

void OvlFunc_923_2008e3c(void)
{
    unsigned int i = 0;
    unsigned int j = 0;

    do {
        i++;
        *(unsigned short *)(0x50000de - j * 2) = 0;
        j++;
    } while (i <= 6);
}

extern void OvlFunc_923_200a370(void);

void OvlFunc_923_2008e60(void) {
    OvlFunc_923_200a370();
}


void OvlFunc_923_2008e6c(void) {
    OvlFunc_923_2009fe8();
}

extern void OvlFunc_923_200a030(void);

void OvlFunc_923_2008e78(void) {
    OvlFunc_923_200a030();
}

extern void OvlFunc_923_2009ec8(void);

void OvlFunc_923_2008e84(void) {
    OvlFunc_923_2009ec8();
}


extern unsigned char gOvl_0200a928[];

unsigned int MercuryLighthouseEntrance_GetEntrances(void) {
    return (unsigned int)gOvl_0200a928;
}

int MercuryLighthouseEntrance_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200abf8[];

void *MercuryLighthouseEntrance_GetExits(void) {
    return (void *)gOvl_0200abf8;
}
extern unsigned char gOvl_0200ac58[];

void *MercuryLighthouseEntrance_GetActors(void) {
    return (void *)gOvl_0200ac58;
}

void OvlFunc_923_2008eac(void)
{
    __CutsceneStart();
    {
        unsigned int rq = 0;
        __MapActor_SetAnim(rq, 1);
    }
    {
        unsigned int rm = 0x1632;
        __Func_801776c(rm, 1);
    }
    __CutsceneEnd();
}

extern unsigned char *__MapActor_GetActor(unsigned int);
extern void __CutsceneStart(void);
extern void __PlaySound(unsigned int);
extern void __MapActor_SetAnim(unsigned int, unsigned int);
extern void __MapActor_TravelBy(unsigned int, int, int);
extern void __MapActor_WaitMovement(unsigned int);
extern void __Func_8092950(unsigned int, unsigned int);
extern void __Actor_SetSpriteFlags(void *, unsigned int);
extern void __CutsceneWait(int);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __Func_8091e9c(int);
extern void __CutsceneEnd(void);
extern int OvlFunc_923_2008cc0(struct Actor *);

void OvlFunc_923_2008ed0(int arg0)
{
    unsigned char *actor;

    actor = __MapActor_GetActor(0);
    __CutsceneStart();
    __PlaySound(0xe4);
    *(int (**)(struct Actor *))(actor + 0x6c) = OvlFunc_923_2008cc0;
    *(int *)(actor + 0x30) = 0x3333;
    __MapActor_SetAnim(0, 2);
    __MapActor_TravelBy(0, 0, -6);
    __MapActor_WaitMovement(0);
    __Func_8092950(0, 0xf);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    *(int *)(actor + 0x6c) = 0;
    __CutsceneWait(0x1e);
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(arg0);
    __CutsceneEnd();
}
extern void __CutsceneStart(void);
extern void __PlaySound(unsigned int);
extern void __MapActor_SetSpeed(unsigned int, int, int);
extern void __Func_8092b08(unsigned int, unsigned int);
extern void __MapActor_TravelBy(unsigned int, int, int);
extern unsigned char *__MapActor_GetActor(unsigned int);
extern void __Actor_SetSpriteFlags(void *, unsigned int);
extern void __CutsceneWait(int);

void OvlFunc_923_2008f48(int arg0)
{
    __CutsceneStart();
    __PlaySound(0xe4);
    API_MapActor_SetSpeed(0, 0x6666, 0x3333);
    __Func_8092b08(0, 2);
    __MapActor_TravelBy(0, 0, -8);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    __CutsceneWait(8);
    API_MapActor_SetPos(0, (arg0 << 19) + (0x80 << 12), 0);
    __CutsceneWait(30);
}

extern void OvlFunc_923_2008ed0(int);

void OvlFunc_923_2008fac(void) {
    OvlFunc_923_2008ed0(0x11);
}


void OvlFunc_923_2008fb8(void) {
    OvlFunc_923_2008ed0(0x12);
}


void OvlFunc_923_2008fc4(void) {
    OvlFunc_923_2008ed0(0x13);
}

extern unsigned char gOvl_0200ad60[];

void *MercuryLighthouseEntrance_GetEvents(void) {
    return (void *)gOvl_0200ad60;
}

#include "overlays/common0_effect.h"

extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);
extern void OvlFunc_923_2008d98();
extern unsigned char Lm923_2f4c[] __asm__(".Lm923_2f4c");
extern int _divsi3_RAM(int, int);
extern void __CopyMapTiles(int, int, int, int, int, int);
void OvlFunc_923_2008fd8(void)
{
    int val;
    int x;
    unsigned int i;
    int rx;
    int ry;
    int rz;
    int div;
    int s1;
    int s2;
    struct EffectData data;

    x = *(int *)(__MapActor_GetActor(0) + 8);
    if (x < 0) {
        x += 0xfffff;
    }
    val = x >> 20;

    x = *(int *)(__MapActor_GetActor(0) + 0x10);
    if (x < 0) {
        x += 0xfffff;
    }
    x >>= 20;

    if (val == 0xc && x == 0x20) {
        __CutsceneStart();
        __Func_8091200(0x10000, 0);
        __Func_8091254(0x3c);
        __CutsceneWait(0x78);
        __Func_8091200(0x10005, 1);
        __Func_8091254(0x3c);
        __CutsceneWait(0x28);

        for (i = 0; i <= 14; i++) {
            data.unk0 = 1;
            data.unk18 = 0x8f << 1;
            data.unk1c = (int)Lm923_2f4c;
            __PlaySound(0xf6);

            rx = 0xd0 - (((unsigned int)__Random() * 16) >> 16);
            ry = (0x8c << 2) - (((unsigned int)__Random() * 16) >> 16);
            rz = ((unsigned int)__Random() * 4) >> 16;
            div = _divsi3_RAM((rz * 15 << 16) + (0xf0 << 14), 0x64);

            OvlFunc_common0_10c(rx << 16, 0, ry << 16, 0, div, 0, 0x320001, &data);
            __CutsceneWait(4);
        }

        __PlaySound(0xdc);
        __CutsceneWait(0x3c);
        __SetFlag(0x875);
        __StartTask(OvlFunc_923_2008d98, 0xc8 << 4);
        s1 = 5;
        s2 = 3;
        __CopyMapTiles(0x25, 0x62, 0xa, 0x61, s1, s2);
        s1 = 6;
        s2 = 0x20;
        __Func_8010704(0x46, 0x20, 0xd, 7, s1, s2);
        __Func_8091200(0x10000, 0);
        __Func_8091254(0x3c);
        __CutsceneWait(0x78);
        __CutsceneEnd();
    }
}

extern void __Func_8091e9c(int);

void OvlFunc_923_2009144(void) {
    __Func_8091e9c(0x3f);
}


extern void __ClearFlag(int);
extern void __MapActor_SetBehavior(int, void *);
extern unsigned char gScript_923__0200a820[];

void OvlFunc_923_2009150(void) {
    __ClearFlag(0x205);
    __MapActor_SetBehavior(8, gScript_923__0200a820);
}

typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_884__0200a874[29];
extern ActorCmd gScript_923__0200a8c8[21];

void OvlFunc_923_200916c(void)
{
    unsigned char *p;
    int v;

    p = __MapActor_GetActor(0);
    v = *(int *)(p + 8);
    if (v < 0) {
        v += 0xfffff;
    }
    v >>= 20;
    __SetFlag(0x205);
    if (v == 7) {
        __MapActor_SetBehavior(8, gScript_884__0200a874);
    } else {
        __MapActor_SetBehavior(8, gScript_923__0200a8c8);
    }
}

#include "state/global_state.h"
extern GlobalState gState;

extern unsigned char Lconst_35[] __asm__(".Lconst_35");
__asm__(".equ .Lconst_35, 0x35");

void OvlFunc_923_20091b4(void)
{
    extern void __Func_80925cc(int, int);
    extern void __Func_8091f90(int, int);
    extern void __StartMapBattle(int, int);

    __CutsceneStart();
    __Func_80925cc(8, 2);
    __CutsceneWait(20);
    *(int *)(*(char **)iwram_3001ebc + 0x1c0) = 0x200;
    __Func_8091f90((int)Lconst_35, 0x1f);
    do {
        gState._bytes[0x22b] = 3;
    } while (0);
    __StartMapBattle(0x24, 1);
    __CutsceneEnd();
}

void OvlFunc_923_2009208(void) {
    extern unsigned char *__MapActor_GetActor(unsigned int);
    extern void __Func_8092950(unsigned int, unsigned int);
    extern void __Actor_SetSpriteFlags(void *, unsigned int);
    extern void __PlaySound(unsigned int);
    extern int OvlFunc_923_2008cc0(struct Actor *);
    extern void __Func_8092304(unsigned int, unsigned int, unsigned int);
    extern void __MapActor_PlayPendingSound(void);
    unsigned char *actor;
    unsigned char *sprite;
    int flag;
    int mask;

    actor = __MapActor_GetActor(0);
    flag = API_GetFlag(0x109);
    if (flag != 0) {
        return;
    }
    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    *(unsigned char *)(actor + 0x55) = flag;
    API_MapActor_SetPos(0, ((short *)(actor + 8))[1] << 16,
                         (((short *)(actor + 0x10))[1] << 16) + 0xfff00000);
    __Func_8092950(0, 0xf);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    API_MapTransitionIn();
    API_WaitMapTransition();
    __PlaySound(0xe4);
    *(int (**)(struct Actor *))(actor + 0x6c) = OvlFunc_923_2008cc0;
    API_MapActor_SetSpeed(0, 0x6666, 0x3333);
    __Func_8092304(0, 0, 8);
    __Func_8092950(0, 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 1);
    sprite = *(unsigned char **)(actor + 0x50);
    mask = -0xd;
    sprite[9] = (sprite[9] & mask) | 4;
    __Func_8092304(0, 0, 0xa);
    *(unsigned char *)(actor + 0x55) = 3;
    *(int *)(actor + 0x6c) = flag;
    __MapActor_PlayPendingSound();
    API_CutsceneEnd();
}

#include "gba/io.h"

extern unsigned char Lconst_39[] __asm__(".Lconst_39");
__asm__(".equ .Lconst_39, 0x39");

int MercuryLighthouseEntrance_MapInit(void)
{
    extern void OvlFunc_923_2008d98(void);
    extern unsigned char ewram_2001000[];
    struct EntranceStateView {
        unsigned char pad0[0x1c2];
        short room;
        unsigned char pad1[0x7c];
        unsigned short field240;
        unsigned short field242;
    };
    extern struct EntranceStateView EntranceState __asm__("gState");
    extern int __cos(int);
    extern int __sin(int);
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void EntranceSpriteFlags(void *, int) __asm__("__Actor_SetSpriteFlags");
    extern void __Func_800fe9c(void);
    extern void __Func_8019aa0(int, int, int);
    extern void __Func_8091494(int);
    extern void __Func_8091ff0(unsigned int);
    extern void __Func_8092950(unsigned int, unsigned int);
    extern struct Actor *EntranceGetActor(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_923_2008e3c(void);
    extern void OvlFunc_923_2009208(void);
    extern void OvlFunc_923_2009730(void);
    extern void OvlFunc_923_200996c(void);
    extern void OvlFunc_923_2009a3c(int, int *);
    struct EffectData effect;
    int motion[3];
    unsigned int particle;
    struct Actor *effectActor;
    int flagValue5;

    SET_IO(REG_BLDCNT, 0x3f40);
    SET_IO(REG_BLDALPHA, 0x1010);
    OvlFunc_923_2009a3c(21, (int *)ewram_2001000);
    API_SetFlag(0x111);
    EntranceState.field242 = 11;
    EntranceState.field240 = (unsigned int)Lconst_39;
    __Func_8091494(0);
    if (API_GetFlag(0x875) != 0) {
        API_StartTask(OvlFunc_923_2008d98, 0xc80);
    } else {
        OvlFunc_923_2008e3c();
    }
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x204;
    switch (EntranceState.room) {
    case 1:
        if (API_GetFlag(0x872) == 0) {
            API_Func_8091e9c(20);
        }
        /* fallthrough */
    case 2:
        EntranceGetActor(12)->scale.x = -0x10000;
        EntranceGetActor(13)->scale.x = -0x10000;
        EntranceGetActor(14)->scale.x = -0x10000;
        API_WaitFrames(1);
        break;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
        if (API_GetFlag(0x875) == 0)
            break;
        API_Func_8010704(0x54, 5, 10, 7, 20, 5);
        API_Func_8010704(0x65, 5, 12, 7, 0x25, 5);
        break;
    case 3:
    case 4:
    case 5:
    case 6:
        API_StartTask(OvlFunc_923_2008d98, 0xc80);
        if (API_GetFlag(0x875) != 0) {
            API_CopyMapTiles(0x25, 0x62, 10, 0x61, 5, 3);
            __Func_800fe9c();
            API_WaitFrames(1);
            API_Func_8010704(0x46, 0x20, 13, 7, 6, 0x20);
        }
        if (EntranceState.room != 6)
            break;
        flagValue5 = API_GetFlag(0x251);
        if (flagValue5 != 0)
            break;
        API_SetFlag(0x251);
        API_CutsceneStart();
        API_Func_80933f8(-1, -1, -1, 0);
        __Func_800fe9c();
        API_WaitFrames(1);
        EntranceGetActor(0)->pos.y = 0x820000;
        EntranceGetActor(0)->gravity = 0x8000;
        EntranceGetActor(0)->bounce = flagValue5;
        EntranceGetActor(0)->__unk55 = flagValue5;
        API_MapTransitionIn();
        API_WaitMapTransition();
        API_CutsceneWait(30);
        EntranceGetActor(0)->__unk55 = 3;
        API_PlaySound(0xcc);
        API_CutsceneWait(24);
        effectActor = EntranceGetActor(0);
        effect.unk4 = 7;
        for (particle = 0; particle <= 16; particle++) {
            motion[0] = __cos(particle << 12);
            motion[1] = 0;
            motion[2] = __sin(particle << 12);
            motion[0] -= motion[0] / 4;
            motion[2] -= motion[2] / 2;
            OvlFunc_common0_10c(effectActor->pos.x, effectActor->pos.y, effectActor->pos.z, motion[0], motion[1], motion[2], 0x10001, &effect);
        }
        API_PlaySound(0xbc);
        API_MapActor_Surprise(0, 0x101);
        API_MapActor_SetAnim(0, 22);
        API_Func_8012330(0x50000, 0x50000, 0x10000);
        API_Func_8012330(-1, -1, 0xe666);
        API_Func_8012350();
        API_MapActor_Surprise(0, 0x100);
        EntranceGetActor(0)->gravity = 0x10000;
        EntranceGetActor(0)->bounce = 0x4000;
        if (API_GetFlag(0x875) == 0) {
            API_Func_8091220(0x10000, 0);
            API_Func_8091200(0x10003, 1);
            API_Func_8091254(30);
            API_WaitMapTransition();
            API_MapActor_SetAnim(0, 1);
            API_CutsceneWait(30);
            __Func_8019aa0(0x1632, 0, 0);
            API_Func_8091200(0x10000, 0);
            API_Func_8091254(30);
        }
        API_CutsceneEnd();
        break;
    case 18:
    case 19:
    case 20:
        OvlFunc_923_2009208();
        /* fallthrough */
    case 17:
        __Func_8091ff0(0xaa);
        break;
    case 25:
        __Func_8092950(0, 15);
        EntranceSpriteFlags(EntranceGetActor(0), 0);
        API_CutsceneStart();
        __Func_800fe9c();
        API_WaitFrames(1);
        *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x100;
        API_MapTransitionIn();
        API_WaitMapTransition();
        API_CutsceneWait(0x78);
        API_Func_8091e9c(0x32);
        API_CutsceneEnd();
        break;
    case 30:
        if (API_GetFlag(0x109) == 0) {
            OvlFunc_923_2009730();
        } else {
            API_Func_8010704(0, 0, 3, 3, 7, 9);
        }
        break;
    case 31:
        if (API_GetFlag(0x109) == 0) {
            OvlFunc_923_200996c();
        }
        break;
    }
    return 0;
}
extern struct Actor *CS923M_Actor(int) __asm__("__MapActor_GetActor");
void OvlFunc_923_2009730(void)
{
    int i;
    API_CutsceneStart();
    CS923M_Actor(12)->scale.x = -0x10000;
    CS923M_Actor(13)->scale.x = -0x10000;
    CS923M_Actor(14)->scale.x = -0x10000;
    API_MapActor_SetPos(3, 0x880000, 0xb80000);
    API_MapActor_SetPos(0, 0x880000, 0x1280000);
    API_MapActor_SetPos(8, 0x880000, 0x980000);
    API_MapActor_SetSpeed(3, 0x18000, 0xc000);
    API_MapActor_SetSpeed(8, 0x18000, 0xc000);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_Func_80933d4(0xcccc, 0x1999);
    API_Func_80933f8(0x880000, -1, 0xb80000, 0);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_Func_80925cc(3, 1);
    CS923M_Actor(8)->__unk5A &= 0xfe;
    API_CutsceneWait(20);
    for (i = 0; i < 2; i++) {
        API_MapActor_TravelToAnim(3, 0x98, 0xa8);
        API_CutsceneWait(10);
        API_MapActor_SetBehavior(8, (int)gScript_923__0200a8c8);
        API_MapActor_WaitMovement(3);
        API_Func_8092adc(3, 0xc000, 30);
        API_Func_80925cc(3, 1);
        CS923M_Actor(3)->__unk5A &= 0xfe;
        API_MapActor_TravelToAnim(3, 0x88, 0xb8);
        API_CutsceneWait(10);
        API_MapActor_SetBehavior(8, (int)gScript_923__0200a820);
        API_MapActor_WaitMovement(3);
        CS923M_Actor(3)->__unk5A |= 1;
        API_CutsceneWait(30);
        API_MapActor_TravelToAnim(3, 0x78, 0xa8);
        API_CutsceneWait(5);
        API_MapActor_SetBehavior(8, (int)gScript_884__0200a874);
        API_MapActor_WaitMovement(3);
        API_Func_8092adc(3, 0xc000, 30);
        API_Func_80925cc(3, 1);
        API_CutsceneWait(15);
        CS923M_Actor(3)->__unk5A &= 0xfe;
        API_MapActor_TravelToAnim(3, 0x88, 0xb8);
        API_CutsceneWait(15);
        API_MapActor_SetBehavior(8, (int)gScript_923__0200a820);
        API_MapActor_WaitMovement(3);
        API_Func_80925cc(3, 1);
        CS923M_Actor(3)->__unk5A |= 1;
    }
    API_CutsceneWait(20);
    API_MapActor_Emote(3, 0x102, 60);
    CS923M_Actor(3)->update = (actorfun_t)OvlFunc_923_2008d58;
    API_Func_8093500(0, 1);
    API_CutsceneWait(30);
    API_MapActor_TravelToAnimWait(0, 0x88, 0x108);
    API_Func_8093530();
    API_Func_8010704(0, 0, 3, 3, 7, 9);
    API_CutsceneEnd();
}
extern unsigned char iwram_3001ebc[];

extern int __GetFlag(int);
extern void __MapActor_SetPos(int, int, int);
extern void __Func_8092adc(int, int, int);
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern void __MapActor_Face(int, int, int);
extern void __MapActor_DoAnim(int, int);
extern void __MapActor_TravelToAnim(int, int, int);
extern void __Func_80925cc(int, int);
void OvlFunc_923_200996c(void)
{
    unsigned char *actor;

    if (!API_GetFlag(0x250)) {
        API_SetFlag(0x250);
        __CutsceneStart();
        actor = (unsigned char *)__MapActor_GetActor(12);
        *(int *)(actor + 0x18) = 0xffff0000;
        actor = (unsigned char *)__MapActor_GetActor(13);
        *(int *)(actor + 0x18) = 0xffff0000;
        actor = (unsigned char *)__MapActor_GetActor(14);
        *(int *)(actor + 0x18) = 0xffff0000;
        API_MapActor_SetPos(3, 0x880000, 0x900000);
        __Func_8092adc(3, 0x4000, 10);
        *(int *)(*(char **)iwram_3001ebc + 0x1c0) = 0x201;
        __MapTransitionIn();
        __WaitMapTransition();
        __CutsceneWait(60);
        __MapActor_Face(3, 0, 0);
        __MapActor_DoAnim(3, 3);
        __CutsceneWait(30);
        __MapActor_TravelToAnim(3, 0x88, 0x48);
        __CutsceneWait(40);
        __Func_80925cc(0, 1);
        __MapActor_WaitMovement(3);
        API_MapActor_SetPos(3, 0, 0);
        API_SetFlag(0x872);
        *(int *)(*(char **)iwram_3001ebc + 0x1c0) = 0x204;
        __CutsceneEnd();
    }
}

#include "dma.h"
#include "field/map_tile.h"
#include "state/global_state.h"

#define TILES_ADDR 0x02010000
#define TILES ((struct MapTile_528 *)TILES_ADDR)

extern GlobalState gState;
extern unsigned int *__galloc_ewram(int a, int b);
extern struct Actor *__GetFieldActor(int);
extern void *__CreateActor(int, int, int, int);
extern void __Sprite_SetAnim(void *, int);
extern s32 gScript_923__0200a7e8[];
extern s32 gScript_923__0200a7d0[];

void OvlFunc_923_2009a3c(int arg0, int *arg1)
{
    struct Actor *actor;
    struct Actor *obj;
    struct Sprite *sprite;
    struct MapTile_528 *cell;
    GlobalState *gs;
    int z;

    *__galloc_ewram(0x23, 4) = (unsigned int)arg1;

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
        obj = (struct Actor *)__CreateActor(0x1a, actor->pos.x, actor->pos.y + 0x180000, z);
        if (obj != 0) {
            obj->floorPos = actor->floorPos;
            sprite = obj->sprite;
            __Actor_SetScript(obj, gScript_923__0200a7e8);
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
        obj = (struct Actor *)__CreateActor(0x1a, actor->pos.x, actor->pos.y, actor->pos.z);
        if (obj != 0) {
            obj->floorPos = actor->floorPos;
            sprite = obj->sprite;
            __Actor_SetScript(obj, gScript_923__0200a7d0);
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
extern void *__CreateActor(int, int, int, int);
extern void __Actor_SetScript(void *, void *);
extern void __Sprite_SetAnim(void *, int);
extern unsigned char gScript_923__0200a7b8[];

void OvlFunc_923_2009bc8(int *arg0)
{
    unsigned char *actor;
    unsigned char *sprite;

    actor = (unsigned char *)__CreateActor(0x18, arg0[2], arg0[3], arg0[4]);
    if (actor != 0) {
        sprite = *(unsigned char **)(actor + 0x50);
        __Actor_SetScript(actor, gScript_923__0200a7b8);
        actor[0x55] = 0;
        actor[0x22] = 1;
        actor[0x23] = 2;
        if (sprite != 0) {
            __Sprite_SetAnim(sprite, 2);
            sprite[0x26] = 0;
            sprite[9] = sprite[9] | 0xc;
        }
    }
}
extern int __sin(int);

int OvlFunc_923_2009c20(struct Actor *actor)
{
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

unsigned int OvlFunc_923_2009c60(unsigned int arg0)
{
    unsigned char *base;
    unsigned short *counter;
    short val;

    base = (unsigned char *)arg0;
    counter = (unsigned short *)(base + 0x64);
    *counter = (unsigned short)(*counter + 1);
    val = (short)*counter;
    if (val > 0x10) {
        return 0;
    }
    *(unsigned int *)(base + 0x18) = (val * 3) << 10;
    *(unsigned int *)(base + 0x1c) = (val * 3) << 10;
    return 1;
}
unsigned int OvlFunc_923_2009c88(unsigned int arg0)
{
    short *count;
    int v;

    count = (short *)((char *)arg0 + 0x64);
    *count += 1;
    v = *count;
    if (v > 0x10)
        return 0;
    v = (v << 11) + (0x80 << 9);
    *(int *)((char *)arg0 + 0x18) = v;
    *(int *)((char *)arg0 + 0x1c) = v;
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

bool32 OvlFunc_923_2009cb4(struct Actor *actor)
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

extern s32 gScript_923__0200a7c4[];

void OvlFunc_923_2009df8(void)
{
    struct MapState *map;
    struct Actor *target;
    struct Actor *actor;
    struct Sprite *sprite;
    GlobalState *gs;
    int idx;

    map = gPushBlockMapState;
    gs = &gState;
    idx = *(int *)((char *)gs + 0x1f4);
    target = (struct Actor *)map->actors[idx];

    actor = (struct Actor *)__CreateActor(0x1a, target->pos.x, target->pos.y, target->pos.z);
    if (actor != 0) {
        actor->floorPos = target->floorPos;
        sprite = actor->sprite;
        __Actor_SetScript(actor, gScript_923__0200a7c4);
        actor->__unk55 = 0;
        actor->waveCounter = 0;
        actor->linkedActor = target;
        if (sprite != 0) {
            __Sprite_SetAnim(sprite, 2);
            sprite->flags = 0;
            sprite->oam.priority = 1;
        }
    }

    actor = (struct Actor *)__CreateActor(0x1a, target->pos.x, target->pos.y, target->pos.z);
    if (actor != 0) {
        actor->floorPos = target->floorPos;
        sprite = actor->sprite;
        __Actor_SetScript(actor, gScript_923__0200a7c4);
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
extern GlobalState gState;
extern unsigned int iwram_3001edc;
extern s32 gScript_923__0200a7e8[];
extern void OvlFunc_923_2009df8(void);
extern void *__CreateActor(int, int, int, int);
extern void __Actor_SetScript(void *, void *);
extern void __Actor_SetAnim();
extern void __CutsceneStart();
extern void __CutsceneEnd();
extern void __WaitFrames(int);
extern void __SetFlag();

void OvlFunc_923_2009ec8(void)
{
    int *r8;
    struct Actor *actor;
    struct Actor *target;
    struct Sprite *sprite;
    int i;
    struct MapState *map;
    GlobalState *gs;
    int idx;

    r8 = *(int **)iwram_3001edc;
    map = *(struct MapState **)((char *)&iwram_3001edc - 0x20);
    gs = &gState;
    idx = *(int *)((char *)gs + 0x1f4);
    target = (struct Actor *)map->actors[idx];
    if ((unsigned int)*r8 > 2)
        return;

    __CutsceneStart();
    if (*(struct Actor **)((char *)r8 + 0x14) == 0) {
        actor = (struct Actor *)__CreateActor(0x1a, target->pos.x, target->pos.y + (0xc0 << 13), target->pos.z);
        if (actor != 0) {
            sprite = actor->sprite;
            actor->floorPos = target->floorPos;
            __Actor_SetScript(actor, gScript_923__0200a7e8);
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
        OvlFunc_923_2009df8();
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
extern unsigned int gScript_923__0200a7dc;

void OvlFunc_923_2009fe8(void)
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
            __Actor_SetScript(r5, &gScript_923__0200a7dc);
            __Actor_SetAnim(r5, 7);
            *(unsigned int *)((char *)r6 + 0x14) = 0;
        }
    }
}

#include "math.h"

struct CS923_Traversal {
    int count, tileType, busy, resetX, resetZ;
    struct Actor *source, *traveler;
};
struct CS923_GameState {
    unsigned char padding[0x1f4];
    int partyIndex;
};
extern struct CS923_GameState CS923_State __asm__("gState");
extern unsigned int gKeyHeld;
extern unsigned int gKeyPress;
extern unsigned short CS923_Directions[] __asm__(".Lm923_27f4");
extern void __vec3_translate(int, unsigned int, int *);
extern void __DeleteActor(int a);

static inline void CS923_Project(int distance, unsigned int angle, int *position)
{
    __vec3_translate(distance, angle, position);
}
static inline struct Actor *CS923_ActorAt(unsigned char *scene, int slot)
{
    return *(struct Actor **)(scene + slot);
}
static inline int API_TestCollision_923(void *actor, int *pos)
{
    return __TestCollision(actor, pos);
}

void OvlFunc_923_200a030(void)
{
    struct CS923_Traversal *state;
    unsigned char *scene, *sourceTile, *destTile;
    struct Actor *actor, *traveler, *source;
    struct Sprite *sprite;
    unsigned char savedMode;
    int collision, count, frame;
    unsigned int direction;
    int coords[3];

    state = *(struct CS923_Traversal **)iwram_3001edc;
    scene = *(unsigned char **)((unsigned char *)&iwram_3001edc - 0x20);
    actor = CS923_ActorAt(scene, CS923_State.partyIndex * 4 + 0x14);
    savedMode = actor->__unk55;
    direction = CS923_Directions[(gKeyHeld >> 4) & 15];
    if ((short)direction == -1)
        return;
    coords[0] = (actor->pos.x & 0xfff00000) + 0x80000;
    coords[1] = actor->floorPos;
    coords[2] = (actor->pos.z & 0xfff00000) + 0x80000;
    sourceTile = (unsigned char *)0x02010000 + 4 * ((coords[2] / 0x100000) * 128 + coords[0] / 0x100000);
    CS923_Project(0x200000, direction, coords);
    destTile = (unsigned char *)0x02010000 + 4 * ((coords[2] / 0x100000) * 128 + coords[0] / 0x100000);
    if (sourceTile[2] != state->tileType && destTile[2] == state->tileType && state->count == 0)
        return;
    API_CutsceneStart();
    collision = API_TestCollision_923(actor, coords);
    if (collision != 0)
        return;
    traveler = state->traveler;
    if (traveler != 0) {
        traveler->waveCounter = 0;
        __Actor_SetScript(traveler, &gScript_923__0200a7dc);
        __Actor_SetAnim(traveler, 7);
        state->traveler = 0;
    }
    if (destTile[2] == state->tileType && state->count != 0) {
        source = state->source;
        traveler = (struct Actor *)__CreateActor(26, source->pos.x, source->pos.y, source->pos.z);
        if (traveler != 0) {
            sprite = traveler->sprite;
            traveler->floorPos = source->floorPos;
            __Actor_SetScript(traveler, gScript_923__0200a7d0);
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
            __DeleteActor((int)state->source);
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
    __Actor_SetSpriteFlags(actor, 0);
    API_MapActor_TravelToWait(0, coords[0] >> 16, coords[2] >> 16);
    __Actor_SetAnim(actor, 6);
    API_WaitFrames(2);
    if (destTile[2] != state->tileType)
        __Actor_SetSpriteFlags(actor, 1);
    else
        API_PlaySound(0xd7);
    API_WaitFrames(1);
    actor->__unk55 = savedMode;
    if (destTile[2] == state->tileType && state->traveler == 0) {
        __Actor_SetAnim(actor, 18);
        API_PlaySound(0xf1);
        for (frame = 0; ; frame++) {
            if ((frame & 15) == 0)
                OvlFunc_923_2009bc8((int *)actor);
            if (frame > 31 && gKeyPress != 0)
                break;
            API_WaitFrames(1);
        }
        API_PlaySound(0x120);
        API_WaitFrames(1);
        actor->pos.x = state->resetX;
        actor->pos.z = state->resetZ;
        __Actor_SetSpriteFlags(actor, 1);
    }
    state->busy = 0;
    API_CutsceneEnd();
    *(int *)(scene + 0x1b4) += fx32_multiply(*(int *)(scene + 0x1b0), 0x200000);
}
extern int __Random(void);

void OvlFunc_923_200a370(void)
{
    unsigned int *state;
    char *base;
    int *arg;
    int off = 0xfa << 1;
    int timer;
    int offset;

    state = (unsigned int *)**(unsigned int **)&iwram_3001edc;
    base = *(char **)((char *)&iwram_3001edc - 0x20);
    offset = *(int *)((unsigned char *)&gState + off) * 4 + 0x14;
    arg = *(int **)(base + offset);
    timer = state[2];
    if (timer != 0) {
        timer--;
    } else {
        OvlFunc_923_2009bc8(arg);
        timer = (((unsigned int)__Random() * 30) >> 16) + 10;
    }
    state[2] = timer;
}

extern unsigned int *__galloc_ewram(int a, int b);
extern void __DeleteActor(int a);

void OvlFunc_923_200a3b8(void) {
    unsigned int *p;
    unsigned int *r5;

    p = __galloc_ewram(0x23, 4);
    if (p == (unsigned int *)0)
        return;
    r5 = (unsigned int *)*p;
    if (*(unsigned int *)((char *)r5 + 0x14) == 0)
        return;
    __DeleteActor(*(unsigned int *)((char *)r5 + 0x14));
    *(unsigned int *)((char *)r5 + 0x14) = 0;
}

INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/mercury_lighthouse_entrance_data.s");
