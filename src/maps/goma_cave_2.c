/* rom_799abc (overlay file 905): consolidated TU — goma_cave_2 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/goma_cave_2/exports.s");

extern int OvlFunc_905_20082a8();

extern int Func_8000948(int);

int OvlFunc_905_2008030(int *a, int *b)
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

INCLUDE_ASM("asm/maps/goma_cave_2/OvlFunc_905_200806c.s");
INCLUDE_ASM("asm/maps/goma_cave_2/OvlFunc_905_20080c4.s");
INCLUDE_ASM("asm/maps/goma_cave_2/OvlFunc_905_2008244.s");

extern unsigned int L1554[] __asm__(".Lm905_1554");
extern int L1594[] __asm__(".Lm905_1594");
extern void *OvlFunc_905_200806c(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_905_20082a8(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L1554[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_905_200806c(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L1594;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L1554[idx];
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

INCLUDE_ASM("asm/maps/goma_cave_2/OvlFunc_905_200834c.s");

extern int L15ac[] __asm__(".Lm905_15ac");
extern void *OvlFunc_905_200834c(int *, void *, void *);

int OvlFunc_905_2008474(void *arg0)
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
    obj = OvlFunc_905_200834c(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = L15ac[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L15ac[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = L15ac[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L15ac[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L1554[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L1554[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (L15ac[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (L15ac[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L1554[dir] & 0xffff0000;
        cur[2] += L1554[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L1554[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern unsigned char iwram_3001e70[];
extern int L1554__a2[] __asm__(".Lm905_1554");
extern void OvlFunc_905_2008244(int, int, int, int, int, int);
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

void OvlFunc_905_2008608(struct Pk arg)
{
    int va[3];
    int sp1 = 0x4ccc;
    int sp2 = 0x1999;
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

    do { } while (sp1 == 0);
    env = (unsigned char *)*(int *)iwram_3001e70;
    dir = *(unsigned short *)(__MapActor_GetActor(0) + 6) >> 12;
    actor = (unsigned char *)__MapActor_GetActor(arg.b);
    t1 = L15ac[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L15ac[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L15ac[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L15ac[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (L15ac[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (L15ac[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_905_2008244(0, vb[0], vb[2], w, h, 0);
    __MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_905_20082a8;
    __CutsceneWait(4);
    if (dir - 6 <= 7)
        __Actor_SetAnim(actor, 3);
    else
        __Actor_SetAnim(actor, 2);
    __PlaySound(0xef);
    __Actor_TravelTo(actor, arg.x, arg.y, arg.z);
    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 2);
    __MapActor_SetSpeed(0, sp1, sp2);
    __MapActor_TravelBy(0, (short)(L1554__a2[dir] >> 16) / 2, (short)(L1554__a2[dir]) / 2);
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
    x1 += L15ac[arg.a << 2] << 16;
    x2 += L15ac[(arg.a << 2) + 1] << 16;
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
    OvlFunc_905_2008244(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_905_2008244(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (L15ac[arg.a << 2] << 16);
    u2 = ap[2] + (L15ac[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_905_2008244(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

INCLUDE_ASM("asm/maps/goma_cave_2/OvlFunc_905_20088c0.s");
INCLUDE_ASM("asm/maps/goma_cave_2/OvlFunc_905_20089dc.s");
INCLUDE_ASM("asm/maps/goma_cave_2/OvlFunc_905_2008a00.s");

extern void __Func_80929d8(int a, int b);

unsigned int OvlFunc_905_2008a58(int a) {
    __Func_80929d8(a, 15);
    return 0;
}

INCLUDE_ASM("asm/maps/goma_cave_2/OvlFunc_905_2008a68.s");

extern unsigned char gOvl_02009690[];

unsigned int GomaCave2_GetEntrances(void) {
    return (unsigned int)gOvl_02009690;
}

int GomaCave2_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02009750[];

void *GomaCave2_GetExits(void) {
    return (void *)gOvl_02009750;
}
extern unsigned char gOvl_0200976c[];

void *GomaCave2_GetActors(void) {
    return (void *)gOvl_0200976c;
}

void OvlFunc_905_2008b6c(void)
{
  int x;
  int val;

  x = *((int *) (((int) __MapActor_GetActor(8)) + 8));
  if (x <= (0 - 1))
  {
    x += 0xfffff;
  }
  val = x >> 20;
  __CutsceneStart();
  if (val == 0x14)
  {
    int t5 = 0x12;
    int six = 6;
    __Func_8010704(0x12, 0x28, six, 3, t5, six);
    __ClearFlag(0x302);
  }
  else
  {
    int t5 = 0x12;
    int six = 6;
    __Func_8010704(0x18, 0x28, six, 3, t5, six);
    __SetFlag(0x302);
  }
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/goma_cave_2/OvlFunc_905_2008bd0.s");
INCLUDE_ASM("asm/maps/goma_cave_2/OvlFunc_905_2008ce0.s");
extern void OvlFunc_905_2008a68(int, int, int, int, int, int, int);

void OvlFunc_905_2008ecc(void)
{
    int val;
    int x;

    x = *(int *)(__MapActor_GetActor(10) + 8);
    if (x < 0) {
        x += 0xfffff;
    }
    val = x >> 20;

    x = *(int *)(__MapActor_GetActor(10) + 0x10);
    if (x < 0) {
        x += 0xfffff;
    }
    x >>= 20;

    if (val == 0x26 && x == 0xe) {
        *(int *)(__MapActor_GetActor(10) + 0xc) = 0xfffe0000;
        *(int *)(__MapActor_GetActor(10) + 0x3c) = *(int *)(__MapActor_GetActor(10) + 0xc);
        __PlaySound(0xbc);

        OvlFunc_905_2008a68(*(int *)(__MapActor_GetActor(10) + 8), *(int *)(__MapActor_GetActor(10) + 0xc), *(int *)(__MapActor_GetActor(10) + 0x10), 0x8000, 0, 0, 1);

        OvlFunc_905_2008a68(*(int *)(__MapActor_GetActor(10) + 8), *(int *)(__MapActor_GetActor(10) + 0xc), *(int *)(__MapActor_GetActor(10) + 0x10), 0x6666, 0x6666, 0, 1);

        OvlFunc_905_2008a68(*(int *)(__MapActor_GetActor(10) + 8), *(int *)(__MapActor_GetActor(10) + 0xc), *(int *)(__MapActor_GetActor(10) + 0x10), -0x6666, 0x6666, 0, 1);

        OvlFunc_905_2008a68(*(int *)(__MapActor_GetActor(10) + 8), *(int *)(__MapActor_GetActor(10) + 0xc), *(int *)(__MapActor_GetActor(10) + 0x10), -0x8000, 0, 0, 1);

        OvlFunc_905_2008a68(*(int *)(__MapActor_GetActor(10) + 8), *(int *)(__MapActor_GetActor(10) + 0xc), *(int *)(__MapActor_GetActor(10) + 0x10), 0x6666, -0x6666, 0, 1);

        OvlFunc_905_2008a68(*(int *)(__MapActor_GetActor(10) + 8), *(int *)(__MapActor_GetActor(10) + 0xc), *(int *)(__MapActor_GetActor(10) + 0x10), -0x6666, -0x6666, 0, 1);

        __SetFlag(0x301);
    }
}

extern void OvlFunc_905_2008ecc(void);

void OvlFunc_905_2009088(void) {
    __CutsceneStart();
    OvlFunc_905_2008ecc();
    __CutsceneEnd();
}

extern void OvlFunc_905_20080c4(void);

void OvlFunc_905_200909c(void) {
    __CutsceneStart();
    OvlFunc_905_20080c4();
    OvlFunc_905_2008ecc();
    __CutsceneEnd();
}

extern void __Func_8093c00(void);

void OvlFunc_905_20090b4(void) {
    __Func_8093c00();
}

extern unsigned char gOvl_02009814[];

void *GomaCave2_GetEvents(void) {
    return (void *)gOvl_02009814;
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern unsigned char iwram_3001ebc[];
extern GlobalState gState;
extern int gOvl_020098ec;

extern void __Func_8092adc(int, int, int);
extern void __MapActor_Emote(int, int, int);
extern void __Func_809259c(int, int);
extern void __MapActor_Jump(int, int, int);
void OvlFunc_905_20090c8(void)
{
    unsigned char *base;
    unsigned char *gs;
    unsigned char *p;
    int val;
    int a;
    short v;

    a = 0x2000;
    do { } while (a == 0);

    base = *(unsigned char **)iwram_3001ebc;
    val = ++gOvl_020098ec;
    switch (val) {
    case 0x3c:
        __Func_8092adc(0xd, a, 0);
        __MapActor_Emote(0xd, 2, 0);
        break;
    case 0xb4:
        __Func_809259c(0xd, 3);
        break;
    case 0xf0:
    case 0x10e:
        __MapActor_Jump(0xd, 4, 0);
        break;
    case 0x1e0:
        __MapActor_SetAnim(0xd, 4);
        break;
    }

    gs = (unsigned char *)&gState;
    gs += 0x234;
    if (*(short *)gs == 0) {
        p = base + 0x182;
        v = 0x63;
        *(short *)p = v;
    }
}
INCLUDE_ASM("asm/maps/goma_cave_2/OvlFunc_905_200915c.s");
INCLUDE_ASM("asm/maps/goma_cave_2/GomaCave2_MapInit.s");

INCLUDE_ASM("asm/maps/goma_cave_2/imports.s");
