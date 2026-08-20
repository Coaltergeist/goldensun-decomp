// fakematch
/* rom_7a2bf0 (overlay file 915): consolidated TU — kolima_forest_3 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/kolima_forest_3/exports.s");

extern int Func_8000948(int);

int OvlFunc_915_2008030(int *a, int *b)
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

INCLUDE_ASM("asm/maps/kolima_forest_3/OvlFunc_915_200806c.s");
INCLUDE_ASM("asm/maps/kolima_forest_3/OvlFunc_915_20080c4.s");
INCLUDE_ASM("asm/maps/kolima_forest_3/OvlFunc_915_2008244.s");

extern unsigned int Lf10[] __asm__(".Lm915_f10");
extern int Lf50[] __asm__(".Lm915_f50");
extern void *OvlFunc_915_200806c(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_915_20082a8(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = Lf10[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_915_200806c(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = Lf50;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = Lf10[idx];
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

INCLUDE_ASM("asm/maps/kolima_forest_3/OvlFunc_915_200834c.s");

extern int Lf68[] __asm__(".Lm915_f68");
extern void *OvlFunc_915_200834c(int *, void *, void *);

int OvlFunc_915_2008474(void *arg0)
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
    obj = OvlFunc_915_200834c(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = Lf68[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = Lf68[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = Lf68[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = Lf68[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (Lf10[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (Lf10[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (Lf68[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (Lf68[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += Lf10[dir] & 0xffff0000;
        cur[2] += Lf10[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = Lf10[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern unsigned char iwram_3001e70[];
extern int Lf10__a2[] __asm__(".Lm915_f10");
extern void OvlFunc_915_2008244(int, int, int, int, int, int);
void __MapActor_SetSpeed(unsigned int, int, int);
extern void __MapActor_SetAnim(unsigned int, unsigned int);
extern void __MapActor_TravelBy(unsigned int, int, int);
extern void __Func_8010704(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned char *__MapActor_GetActor(unsigned int);
extern void __Actor_TravelTo(void *, int, int, int);
void __MapActor_WaitMovement(unsigned int);
struct Pk {
int a;
int b;
int x;
int y;
int z;
void (*arg5)(void);
};

void OvlFunc_915_2008608(struct Pk arg)
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
    t1 = Lf68[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = Lf68[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = Lf68[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = Lf68[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (Lf68[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (Lf68[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_915_2008244(0, vb[0], vb[2], w, h, 0);
    __MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_915_20082a8;
    __CutsceneWait(4);
    if (dir - 6 <= 7)
        __Actor_SetAnim(actor, 3);
    else
        __Actor_SetAnim(actor, 2);
    __PlaySound(0xef);
    __Actor_TravelTo(actor, arg.x, arg.y, arg.z);
    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 2);
    {
        register unsigned int r0z __asm__("r0") = 0;
        register unsigned int r1v __asm__("r1") = 0x4ccc;
        register unsigned int r2v __asm__("r2") = 0x1999;
        __asm__ volatile ("" : : "r"(r0z));
        __asm__ volatile ("" : : "r"(r1v));
        __asm__ volatile ("" : : "r"(r2v));
        __MapActor_SetSpeed(r0z, r1v, r2v);
    }
    __MapActor_TravelBy(0, (short)(Lf10__a2[dir] >> 16) / 2, (short)(Lf10__a2[dir]) / 2);
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
    x1 += Lf68[arg.a << 2] << 16;
    x2 += Lf68[(arg.a << 2) + 1] << 16;
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
    OvlFunc_915_2008244(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_915_2008244(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (Lf68[arg.a << 2] << 16);
    u2 = ap[2] + (Lf68[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_915_2008244(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

INCLUDE_ASM("asm/maps/kolima_forest_3/OvlFunc_915_20088c0.s");

extern unsigned char gOvl_02008fc8[];

unsigned int KolimaForest3_GetEntrances(void) {
    return (unsigned int)gOvl_02008fc8;
}

int KolimaForest3_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02009028[];

void *KolimaForest3_GetExits(void) {
    return (void *)gOvl_02009028;
}
extern unsigned char gOvl_02009038[];

void *KolimaForest3_GetActors(void) {
    return (void *)gOvl_02009038;
}

INCLUDE_ASM("asm/maps/kolima_forest_3/OvlFunc_915_20089f8.s");
INCLUDE_ASM("asm/maps/kolima_forest_3/OvlFunc_915_2008aac.s");

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;

void OvlFunc_915_2008ba4(void)
{
    unsigned char *p;
    unsigned char *base;
    unsigned int arr[3];
    unsigned int t;

    base = (unsigned char *)&gState;
    p = (unsigned char *)__MapActor_GetActor(*(unsigned int *)(base + (0xfa * 2)));
    t = *(unsigned int *)(p + 8) & 0xfff00000;
    arr[0] = t + 0x80000;
    arr[1] = *(unsigned int *)(p + 0xc);
    arr[2] = (*(unsigned int *)(p + 0x10) & 0xfff00000) + 0x80000;
    arr[0] = t + 0x280000;
    OvlFunc_915_2008aac(arr);
}

extern unsigned char gOvl_02009098[];

void *KolimaForest3_GetEvents(void) {
    return (void *)gOvl_02009098;
}

INCLUDE_ASM("asm/maps/kolima_forest_3/KolimaForest3_MapInit.s");
INCLUDE_ASM("asm/maps/kolima_forest_3/OvlFunc_915_2008c8c.s");
INCLUDE_ASM("asm/maps/kolima_forest_3/OvlFunc_915_2008cf4.s");

#include "dma.h"
extern unsigned int iwram_3001ed0;
extern unsigned char L10e0[] __asm__(".Lm915_10e0");

void OvlFunc_915_2008d5c(void) {
    DMA3_COPY((void *)iwram_3001ed0, L10e0, 0x380);
}

#include "dma.h"

extern int OvlFunc_915_20082a8();
extern unsigned char L17e0[] __asm__(".Lm915_17e0");

void OvlFunc_915_2008d7c(void) {
    DMA3_COPY((void *)iwram_3001ed0, L17e0, 0x380);
}

INCLUDE_ASM("asm/maps/kolima_forest_3/OvlFunc_915_2008d9c.s");
INCLUDE_ASM("asm/maps/kolima_forest_3/OvlFunc_915_2008ddc.s");

INCLUDE_ASM("asm/maps/kolima_forest_3/imports.s");
