// fakematch
/* rom_7a04ac (overlay file 913): consolidated TU — kolima_forest_1 map overlay. */

#include "nonmatching.h"

extern int OvlFunc_913_20082a8();

/* Cluster OvlFunc_913_2008030..OvlFunc_913_2008030 extracted from goldensun/asm/overlays/rom_799abc/ovl_30_a_a_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_799abc/ovl_30_a_a_a_a.o and asm/overlays/rom_799abc/ovl_30_a_a_a_c.o in
 * goldensun/overlays/rom_799abc/overlay.ld.
 */
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

INCLUDE_ASM("asm/maps/kolima_forest_1/ovl_30_a_a_a_c_a.s");

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

INCLUDE_ASM("asm/maps/kolima_forest_1/ovl_30_a_a_a_c_c_a.s");

extern int L2dc0[] __asm__(".Lm913_2dc0");
extern void *OvlFunc_913_200834c(int *, void *, void *);

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
extern void OvlFunc_913_2008244(int, int, int, int, int, int);
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
    __MapActor_SetSpeed(0, 0x8000, 0x1999);
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
    {
        register unsigned int r0z __asm__("r0") = 0;
        register unsigned int r1v __asm__("r1") = 0x4ccc;
        register unsigned int r2v __asm__("r2") = 0x1999;
        __asm__ volatile ("" : : "r"(r0z));
        __asm__ volatile ("" : : "r"(r1v));
        __asm__ volatile ("" : : "r"(r2v));
        __MapActor_SetSpeed(r0z, r1v, r2v);
    }
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

INCLUDE_ASM("asm/maps/kolima_forest_1/ovl_30_a_a_a_c_c_c_c.s");

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

INCLUDE_ASM("asm/maps/kolima_forest_1/ovl_30_a_a_c.s");

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

INCLUDE_ASM("asm/maps/kolima_forest_1/ovl_30_c_c_a_a.s");

typedef struct { unsigned char _bytes[704]; } GlobalState;
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

INCLUDE_ASM("asm/maps/kolima_forest_1/ovl_30_c_c_c_a_a_a.s");

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

INCLUDE_ASM("asm/maps/kolima_forest_1/ovl_30_c_c_c_a_c.s");

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

INCLUDE_ASM("asm/maps/kolima_forest_1/ovl_30_c_c_c_c.s");
