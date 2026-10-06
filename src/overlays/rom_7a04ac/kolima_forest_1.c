/* rom_7a04ac (overlay file 913): consolidated TU — kolima_forest_1 map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

INCLUDE_ASM("asm/overlays/rom_7a04ac/kolima_forest_1/exports.s");

extern int OvlFunc_913_20082a8();

extern int Func_8000948(int);

int OvlFunc_913_2008030(int *a, int *b)
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

typedef struct {
    unsigned char _pad[0x14];
    struct Actor *actors[66];
} KolimaMap;

extern KolimaMap *iwram_3001ebc;

void *OvlFunc_913_200806c(int *pos, void *arg1)
{
    KolimaMap *map;
    unsigned int i;
    struct Actor *actor;
    int target_x;

    map = iwram_3001ebc;
    i = 8;
    target_x = pos[0] >> 20;

    for (; i <= 0x41; i++) {
        actor = map->actors[i];
        if (target_x != actor->pos.x >> 20)
            continue;
        if (pos[1] / 0x10000 != actor->pos.y / 0x10000)
            continue;
        if (pos[2] >> 20 == actor->pos.z >> 20)
            return actor;
    }
    return 0;
}
extern unsigned int L2d68[] __asm__(".Lm913_2d68");
extern int __TestCollision(void *, int *);

void OvlFunc_913_20080c4(void)
{
    int stk[3];
    struct Actor *hero;
    struct Actor *res;
    struct Actor *a;
    unsigned int idx;
    unsigned int t;

    hero = (struct Actor *)__MapActor_GetActor(0);
    idx = *(unsigned short *)((char *)hero + 6) >> 12;
    t = L2d68[idx];
    stk[0] = hero->pos.x + (t & 0xffff0000);
    stk[1] = hero->pos.y;
    t <<= 16;
    stk[2] = hero->pos.z + t;
    res = (struct Actor *)OvlFunc_913_200806c(stk, hero);
    if (res == 0)
        return;

    t = L2d68[idx];
    stk[0] = res->pos.x + (t & 0xffff0000);
    stk[1] = res->pos.y;
    t <<= 16;
    stk[2] = res->pos.z + t;
    a = (struct Actor *)OvlFunc_913_200806c(stk, res);
    if (a != 0 && (*(char *)((char *)a + 0x59) & 1))
        return;

    stk[0] = res->pos.x;
    stk[1] = res->pos.y + 0x100000;
    stk[2] = res->pos.z;
    a = (struct Actor *)OvlFunc_913_200806c(stk, res);
    if (a != 0 && (*(char *)((char *)a + 0x59) & 1))
        return;

    *(char *)((char *)res + 0x22) = 2;
    t = L2d68[idx];
    stk[0] = res->pos.x + (t & 0xffff0000);
    stk[1] = res->pos.y;
    t <<= 16;
    stk[2] = res->pos.z + t;
    if (__TestCollision(res, stk) > 0)
        return;

    if (*(char *)((char *)res + 0x62) != 0)
        return;

    __Actor_SetAnim(hero, 8);
    __WaitFrames(15);
    __PlaySound(0xb9);
    *(int *)((char *)res + 0x30) = 0x3333;
    *(int *)((char *)res + 0x34) = 0x3333;
    __Actor_TravelTo(res, stk[0], stk[1], stk[2]);
    *(int *)((char *)hero + 0x30) = 0x3333;
    *(int *)((char *)hero + 0x34) = 0x3333;
    __Actor_TravelTo(hero, stk[0], stk[1], stk[2]);
    __Actor_WaitMovement(res);
    __MapActor_PlayPendingSound();

    res->pos.x = stk[0];
    res->pos.z = stk[2];
    *(int *)((char *)res + 0x24) = 0;
    *(int *)((char *)res + 0x2c) = 0;
    *(int *)((char *)hero + 0x38) = 0x80 << 24;
    *(int *)((char *)hero + 0x40) = 0x80 << 24;
    hero->pos.x = *(short *)((char *)hero + 10) << 16;
    *(int *)((char *)hero + 0x24) = 0;
    *(int *)((char *)hero + 0x2c) = 0;
    hero->pos.z = *(short *)((char *)hero + 18) << 16;
    __Actor_SetAnim(hero, 1);
}
extern unsigned char gBuffer[];
extern unsigned char iwram_3001e70[];

typedef struct {
    unsigned char *buf;
    unsigned char _pad[0x2c];
} LayerInfo;

typedef struct {
    unsigned char _pad[0x130];
    LayerInfo layers[3];
} EnvState;

int OvlFunc_913_2008244(unsigned int layer, int x, int y, unsigned int width, unsigned int height, int val)
{
    EnvState *env;
    unsigned char *ptr;
    unsigned int i;
    unsigned int j;
    unsigned char *row;

    env = *(EnvState **)iwram_3001e70;
    if (env == 0)
        return 0;

    if (layer <= 2) {
        ptr = env->layers[layer].buf;
    } else {
        ptr = gBuffer;
    }

    ptr += (x + y * 128) * 4;

    for (j = 0; j < height; j++) {
        row = ptr + j * 512;
        for (i = 0; i < width; i++) {
            row[2] = val;
            row += 4;
        }
    }

    return 0;
}

extern unsigned int L2d68[] __asm__(".Lm913_2d68");
extern int L2da8[] __asm__(".Lm913_2da8");
extern void *OvlFunc_913_200806c(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_913_20082a8(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L2d68[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_913_200806c(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L2da8;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L2d68[idx];
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

extern int L2dc0[] __asm__(".Lm913_2dc0");

extern unsigned char *__MapActor_GetActor(unsigned int);

INCLUDE_ASM("asm/overlays/rom_7a04ac/kolima_forest_1/OvlFunc_913_200834c.s");

int OvlFunc_913_2008474(void *arg0)
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
    obj = OvlFunc_913_200834c(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = L2dc0[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L2dc0[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = L2dc0[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L2dc0[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L2d68[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L2d68[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (L2dc0[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (L2dc0[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L2d68[dir] & 0xffff0000;
        cur[2] += L2d68[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L2d68[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern unsigned char iwram_3001e70[];
extern int L2d68__a2[] __asm__(".Lm913_2d68");
extern int OvlFunc_913_2008244(unsigned int, int, int, unsigned int, unsigned int, int);
void __MapActor_SetSpeed(unsigned int, int, int);
extern void __MapActor_SetAnim(unsigned int, unsigned int);
extern void __Actor_SetAnim(void *, int);
extern void __MapActor_TravelBy(unsigned int, int, int);
extern void __Func_8010704(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned char *__MapActor_GetActor(unsigned int);
extern void __Actor_TravelTo(void *, int, int, int);
void __MapActor_WaitMovement(unsigned int);
#include "field/push_block.h"

void OvlFunc_913_2008608(struct Pk arg)
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
    t1 = L2dc0[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L2dc0[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L2dc0[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L2dc0[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (L2dc0[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (L2dc0[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_913_2008244(0, vb[0], vb[2], w, h, 0);
    API_MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_913_20082a8;
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
    __MapActor_TravelBy(0, (short)(L2d68__a2[dir] >> 16) / 2, (short)(L2d68__a2[dir]) / 2);
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
    x1 += L2dc0[arg.a << 2] << 16;
    x2 += L2dc0[(arg.a << 2) + 1] << 16;
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
    OvlFunc_913_2008244(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_913_2008244(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (L2dc0[arg.a << 2] << 16);
    u2 = ap[2] + (L2dc0[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_913_2008244(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

INCLUDE_ASM("asm/overlays/rom_7a04ac/kolima_forest_1/OvlFunc_913_20088c0.s");

extern unsigned char L3390[] __asm__(".Lm913_3390");

unsigned int OvlFunc_913_20089dc(void *arg0) {
    int r3;
    r3 = *(int *)L3390;
    if (r3) {
        __Actor_SetAnim(arg0, 2);
        *(int *)L3390 = 0;
    }
    return 1;
}

extern unsigned int __Random(void);
extern int __Func_80929d8();

unsigned int OvlFunc_913_20089fc(struct Actor *a) {
    a->waveCounter += (__Random() * 100) >> 16;
    if (a->waveCounter > 1000) {
        __Func_80929d8(a, 7);
    } else {
        __Func_80929d8(a, 10);
    }
    if (a->waveCounter > 1200) {
        a->waveCounter = 0;
    }
    return 1;
}

extern unsigned char gOvl_0200b06c[];

unsigned int KolimaForest1_GetEntrances(void) {
    return (unsigned int)gOvl_0200b06c;
}

unsigned int KolimaForest1_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200b0cc[];

void *KolimaForest1_GetExits(void) {
    return (void *)gOvl_0200b0cc;
}
extern unsigned char gOvl_0200b0e4[];

void *KolimaForest1_GetActors(void) {
    return (void *)gOvl_0200b0e4;
}

extern void __Actor_SetSpriteFlags(void *, int);

void OvlFunc_913_2008a68(void) {
    struct Pk pk;

    API_CutsceneStart();
    if (OvlFunc_913_2008474(&pk)) {
        OvlFunc_913_2008608(pk);
        if (pk.b == 10 && (pk.x >> 20) == 0x14) {
            char *actor;
            int s1, s2;
            int zero = 0;

            API_MapActor_SetAnim(0xa, 3);
            API_MapActor_TravelBy(0xa, -0x12, 6);
            API_CutsceneWait(0x1e);
            API_PlaySound(0xf0);
            API_MapActor_SetAnim(0xa, 8);
            actor = (char *)__MapActor_GetActor(0xa);
            actor[0x23] = 2;
            s2 = 0x11;
            s1 = 0x13;
            __Func_8010704(0, 0x11, 2, 4, s1, s2);
            OvlFunc_913_2008244(2, 0x14, 0x11, 1, 4, zero);
            API_SetFlag(0x200);
            __Actor_SetSpriteFlags(__MapActor_GetActor(0xa), zero);
        }
    }
    API_CutsceneEnd();
}

int OvlFunc_913_2008b1c(int *p) {
    struct Actor *a;
    unsigned char *b;
    int c;

    a = (struct Actor *)__MapActor_GetActor(0);
    b = &a->__unk55;
    c = *b;

    if (!__TestCollision(a, p)) {
        API_CutsceneStart();
        __Actor_SetAnim(a, 6);
        API_WaitFrames(6);
        API_PlaySound(0x98);
        __Actor_SetAnim(a, 7);
        a->speed = 0xc0 << 10;
        a->accel = 0x80 << 10;
        a->motion.y = 0x80 << 11;
        *b &= 0x7e;
        __Actor_SetSpriteFlags(a, 0);
        API_MapActor_TravelToWait(0, ((short *)p)[1], ((short *)p)[5]);
        __Actor_SetAnim(a, 6);
        __Actor_SetSpriteFlags(a, 1);
        *b = 0;
        API_MapActor_SetAnim(0xa, 7);
        a->pos.y += -0x10000;
        a->floorPos += -0x10000;
        API_WaitFrames(2);
        a->pos.y += -0x10000;
        a->floorPos += -0x10000;
        API_WaitFrames(0xa);
        a->pos.y += 0x10000;
        a->floorPos += 0x10000;
        API_WaitFrames(4);
        a->pos.y += 0x10000;
        a->floorPos += 0x10000;
        *b = c;
        API_CutsceneEnd();
        return 1;
    }
    return 0;
}

#include "state/global_state.h"
extern GlobalState gState;

void OvlFunc_913_2008c14(void)
{
    unsigned char *p;
    unsigned int arr[3];
    unsigned int t;
    unsigned int r2;
    unsigned int *leader;

    r2 = 0xfa;
    r2 <<= 1;
    leader = (unsigned int *)((char *)&gState + r2);
    p = (unsigned char *)__MapActor_GetActor(*leader);
    t = *(unsigned int *)(p + 8) & 0xfff00000;
    arr[0] = t + (0x80 << 12);
    arr[1] = *(unsigned int *)(p + 0xc);
    arr[2] = (*(unsigned int *)(p + 0x10) & 0xfff00000) + (0x80 << 12);
    arr[0] = t + (0xa0 << 14);
    OvlFunc_913_2008b1c(arr);
}

extern unsigned char gOvl_0200b294[];

void *KolimaForest1_GetEvents(void) {
    return (void *)gOvl_0200b294;
}

extern int OvlFunc_913_20088c0(int);
extern void OvlFunc_913_2008d3c(void);
int KolimaForest1_MapInit(void) {
    unsigned int r2;

    OvlFunc_913_20088c0(0xa);
    if (API_GetFlag(0x200) != 0) {
        int zero = 0;
        int s1, s2;
        char *actor = (char *)__MapActor_GetActor(0xa);
        actor[0x23] = 2;
        s2 = 0x11;
        s1 = 0x13;
        __Func_8010704(0, 0x11, 2, 4, s1, s2);
        OvlFunc_913_2008244(2, 0x14, 0x11, 1, 4, zero);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0xa), zero);
    }
    OvlFunc_913_20088c0(8);
    OvlFunc_913_20088c0(9);
    r2 = 0xe1;
    r2 <<= 1;
    if (*(short *)((char *)&gState + r2) == 4 && API_GetFlag(0x843) == 0) {
        OvlFunc_913_2008d3c();
    }
    if (API_GetFlag(0x845) != 0) {
        API_MapActor_SetPos(0x11, 0, 0);
        API_MapActor_SetPos(0x12, 0, 0);
        API_MapActor_SetPos(0x13, 0, 0);
        API_MapActor_SetPos(0x14, 0, 0);
        API_MapActor_SetPos(0x15, 0, 0);
    }
    return 0;
}
INCLUDE_ASM("asm/overlays/rom_7a04ac/kolima_forest_1/OvlFunc_913_2008d3c.s");

extern void __ActorMessage(unsigned int arg0, unsigned int arg1);
extern void __CutsceneWait(unsigned int arg0);

void OvlFunc_913_200a768(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}

extern void __Func_8092adc(unsigned int arg0, unsigned int arg1, unsigned int arg2);

void OvlFunc_913_200a780(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
	__Func_8092adc(arg0, arg1, 0);
	__CutsceneWait(arg2);
}

extern void __DeleteActor(void);

unsigned int OvlFunc_913_200a798(unsigned char *param)
{
    int v38, v3c, v40;

    *(unsigned int *)(param + 0x18) = *(unsigned int *)(param + 0x18) + 0x1eb8;
    v38 = *(int *)(param + 0x38);
    if (v38 == (int)(0x80 << 24)) {
        v3c = *(int *)(param + 0x3c);
        if (v3c == v38) {
            v40 = *(int *)(param + 0x40);
            if (v40 == v3c) {
                __DeleteActor();
            }
        }
    }
    return 1;
}

extern unsigned int iwram_3001e40;
extern int L3398[] __asm__(".Lm913_3398");
extern unsigned char gScript_913__0200b2d0[];

extern struct Actor *__CreateActor(int, int, int, int);

void OvlFunc_913_200a7c8(void)
{
    unsigned int r6;
    struct Actor *actor;
    unsigned char *sprite;
    int c = ~0xc;

    r6 = iwram_3001e40 & 7;
    if (r6 == 0) {
        if (L3398[0] != 0) {
            __PlaySound(0xc8);
        }
        actor = (struct Actor *)API_CreateActor(0x1a, 0xe70000, 0, 0x1cc0000);
        if (actor != 0) {
            sprite = (unsigned char *)actor->sprite;
            {
                unsigned char flags[1] = {actor->flags};
                sprite[0x26] = r6;
                actor->flags = flags[0] & 0xfe;
            }
            do {
                sprite[9] = (sprite[9] & c) | 4;
                actor->scale.x = 0x1999;
                actor->speed = 0x80000;
                actor->accel = 0x80000;
            } while (0);
            actor->__unk55 = r6;
            __Actor_SetAnim(actor, 2);
            API_Actor_TravelTo(actor, 0xe70000, 0, 0x2700000);
            __Actor_SetScript(actor, gScript_913__0200b2d0);
        }
    }
}

extern int __Func_80929d8();
extern unsigned int iwram_3001e40;

unsigned int OvlFunc_913_200a864(int a) {
    if ((iwram_3001e40 >> 1) & 1) {
        __Func_80929d8(a, 10);
    } else {
        __Func_80929d8(a, 7);
    }
    return 0;
}

extern int L3394[] __asm__(".Lm913_3394");
extern unsigned char gScript_913__0200b2e4[];

unsigned int OvlFunc_913_200a88c(struct Actor *actor)
{
    extern void __PlaySound(int);
    int x;

    if (*(int *)L3394) {
        x = actor->pos.x;
        if (x > 0xc00000 && x < 0x1120000 && actor->pos.z > 0x2360000 && actor->pos.z < 0x2640000)
            goto hit;
        if (x > 0xca0000 && x < 0xff0000 && actor->pos.z > 0x2250000 && actor->pos.z < 0x2780000)
            goto hit;
    } else {
        x = actor->pos.x;
        if (x > 0xc00000 && x < 0xf40000 && actor->pos.z > 0x2250000 && actor->pos.z <= 0x248ffff)
            goto hit;
        if (x > 0xf40000 && x < 0x1120000 && actor->pos.z > 0x23b0000 && actor->pos.z <= 0x25cffff)
            goto hit;
        if (x > 0xd30000 && x < 0xff0000 && actor->pos.z > 0x2540000 && actor->pos.z < 0x2780000)
            goto hit;
    }
    return 0;

hit:
    API_PlaySound(0x6a);
    __Actor_SetScript(actor, gScript_913__0200b2e4);
    *(int *)L3390 = 1;
    return 0;
}

extern int L338c[] __asm__(".Lm913_338c");
extern int L3388[] __asm__(".Lm913_3388");
extern int L3384[] __asm__(".Lm913_3384");
extern unsigned char gScript_913__0200b308[];

void OvlFunc_913_200a974(void)
{
    struct Actor *actor = 0;
    unsigned char *sprite;
    int *base_pos;
    int x;
    int z;
    int c = ~0xc;

    switch (*(unsigned int *)L338c) {
    case 1:
        if (*(int *)L3388 <= 0x3a97)
            *(int *)L3388 += 50;
        if (*(int *)L3384 > 0x3c0000)
            *(int *)L3384 -= 0x4000;
        break;
    case 2:
        if (*(int *)L3388 <= 0x752f)
            *(int *)L3388 += 50;
        if (*(int *)L3384 > 0x180000)
            *(int *)L3384 -= 0x4000;
        break;
    case 3:
        if (*(int *)L3384 < -0x800000) {
            *(int *)L338c = 0;
        } else {
            *(int *)L3388 += 50;
            *(int *)L3384 -= 0x4000;
        }
        break;
    }

    if (iwram_3001e40 & 7)
        return;

    actor = (struct Actor *)__CreateActor(0x11d, 0, 0, 0);
    if (actor == 0)
        return;

    base_pos = **(int ***)iwram_3001e70;
    if ((iwram_3001e40 & 0x3f) == 0)
        __PlaySound(0xf6);

    if (*(int *)L338c != 0) {
        x = base_pos[0] + (((__Random() * *(int *)L3388) >> 16) << 8) + *(int *)L3384;
    } else {
        x = base_pos[0] + (__Random() << 8) - 0x800000;
    }

    z = base_pos[2] + (__Random() << 8) - 0x800000;

    actor->__unk55 = 0;
    actor->pos.y = 160 << 16;
    sprite = (unsigned char *)actor->sprite;
    actor->scale.x = 0xe666;
    actor->scale.y = 0xe666;
    actor->pos.x = x;
    actor->pos.z = z;
    sprite[0x26] = 0;
    {
        unsigned char flags[1] = {actor->flags};
        actor->flags = flags[0] & 0xfe;
    }
    do {
        sprite[9] = (sprite[9] & c) | 4;
    } while (0);
    __Actor_SetAnim(actor, 1);
    __Actor_SetScript(actor, gScript_913__0200b308);
}


void OvlFunc_913_200aad8(void) {
    struct Actor *a;

    a = (struct Actor *)__MapActor_GetActor(0xd);
    if (a != 0) {
        a->__unk55 = 0;
        if ((iwram_3001e40 & 1) == 0) {
            a->pos.y = 0;
        } else {
            a->pos.y = 0xfa << 17;
        }
    }
    a = (struct Actor *)__MapActor_GetActor(0xe);
    if (a != 0) {
        a->__unk55 = 0;
        if (iwram_3001e40 & 1) {
            a->pos.y = 0;
        } else {
            a->pos.y = 0xfa << 17;
        }
    }
    a = (struct Actor *)__MapActor_GetActor(0xf);
    if (a != 0) {
        a->__unk55 = 0;
        if ((iwram_3001e40 & 1) == 0) {
            a->pos.y = 0;
        } else {
            a->pos.y = 0xfa << 17;
        }
    }
    a = (struct Actor *)__MapActor_GetActor(0x10);
    if (a != 0) {
        a->__unk55 = 0;
        if (iwram_3001e40 & 1) {
            a->pos.y = 0;
        } else {
            a->pos.y = 0xfa << 17;
        }
    }
}

INCLUDE_ASM("asm/overlays/rom_7a04ac/kolima_forest_1/kolima_forest_1_data.s");

INCLUDE_ASM("asm/overlays/rom_7a04ac/kolima_forest_1/imports.s");
