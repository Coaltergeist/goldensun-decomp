// fakematch
/* rom_7bdeb0 (overlay file 934): consolidated TU — vale_cave map overlay. */

#include "nonmatching.h"

extern int OvlFunc_934_200858c();

extern int Func_8000948(int);

int OvlFunc_934_2008314(int *a, int *b)
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

INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_2008350.s");
INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_20083a8.s");
INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_2008528.s");

extern unsigned int L1e48[] __asm__(".Lm934_1e48");
extern int ActorCmd_ARRAY_933__02009e88[];
extern void *OvlFunc_934_2008350(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_934_200858c(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L1e48[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_934_2008350(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = ActorCmd_ARRAY_933__02009e88;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L1e48[idx];
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

INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_2008630.s");

extern int L1ea0[] __asm__(".Lm934_1ea0");
extern void *OvlFunc_934_2008630(int *, void *, void *);

int OvlFunc_934_2008758(void *arg0)
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
    obj = OvlFunc_934_2008630(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = L1ea0[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L1ea0[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = L1ea0[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L1ea0[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L1e48[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L1e48[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (L1ea0[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (L1ea0[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L1e48[dir] & 0xffff0000;
        cur[2] += L1e48[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L1e48[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern unsigned char iwram_3001e70[];
extern int L1e48__a2[] __asm__(".Lm934_1e48");
extern void OvlFunc_934_2008528(int, int, int, int, int, int);
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

void OvlFunc_934_20088ec(struct Pk arg)
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
    t1 = L1ea0[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L1ea0[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L1ea0[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L1ea0[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (L1ea0[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (L1ea0[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_934_2008528(0, vb[0], vb[2], w, h, 0);
    __MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_934_200858c;
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
    __MapActor_TravelBy(0, (short)(L1e48__a2[dir] >> 16) / 2, (short)(L1e48__a2[dir]) / 2);
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
    x1 += L1ea0[arg.a << 2] << 16;
    x2 += L1ea0[(arg.a << 2) + 1] << 16;
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
    OvlFunc_934_2008528(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_934_2008528(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (L1ea0[arg.a << 2] << 16);
    u2 = ap[2] + (L1ea0[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_934_2008528(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_2008ba4.s");

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_934_2008cc0(void) {
    __Func_80955b0(8, 3, 4);
}

extern void __WaitFrames(int arg0);

void OvlFunc_934_2008cd0(unsigned int arg0)
{
    int *r5;
    int r6;

    r5 = (int *)arg0;
    r6 = 0x3c;
    while (r6 != 0) {
        __WaitFrames(1);
        r6--;
        if (r5[3] <= r5[5])
            break;
    }
    r5[3] = r5[5];
}

int OvlFunc_934_2008cf8(int arg0)
{
    int *r5 = (int *)arg0;
    int *actor = (int *)__MapActor_GetActor(0);
    *(short *)((char *)r5 + 6) = __atan2(actor[4] - r5[4], actor[2] - r5[2]);
    return 0;
}

INCLUDE_ASM("asm/maps/vale_cave/ovl_314_c_c.s");

INCLUDE_ASM("asm/maps/vale_cave/ValeCave_GetEntrances.s");

int ValeCave_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200a1dc[];

void *ValeCave_GetExits(void) {
    return (void *)gOvl_0200a1dc;
}

INCLUDE_ASM("asm/maps/vale_cave/ValeCave_GetActors.s");
INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_2008dcc.s");
INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_2008de8.s");
INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_2008e04.s");
INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_2008f78.s");

extern void OvlFunc_934_20083a8(void);
extern void OvlFunc_934_2008f78(void);

void OvlFunc_934_20090c8(void) {
    __CutsceneStart();
    OvlFunc_934_20083a8();
    __CutsceneEnd();
    OvlFunc_934_2008f78();
}

INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_20090e0.s");
INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_20091a0.s");
INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_2009258.s");

typedef struct { unsigned char _bytes[704]; } GlobalState;
typedef struct { unsigned char _pad[0x30]; int speed; int accel; } ActorT;
extern unsigned char iwram_3001ebc[];
extern GlobalState gState;
extern unsigned char L1f00[] __asm__(".Lm934_1f00");

void OvlFunc_934_2009300(void)
{
    unsigned char *base;
    unsigned char *p;
    unsigned char *gs;
    unsigned char *tbl;
    short r5;
    ActorT *p1;
    ActorT *p2;
    int idx;
    int idx2;

    base = *(unsigned char **)iwram_3001ebc;
    if (__GetFlag(0x302) != 0) {
        gs = (unsigned char *)&gState;
        gs += 0x24a;
        if (*(short *)gs != 8) {
            p = base + (0xb6 << 1);
            r5 = *(short *)p;
            p1 = (ActorT *)__MapActor_GetActor(8);
            p2 = (ActorT *)__MapActor_GetActor(0);
            p1->speed = p2->speed;
            p1 = (ActorT *)__MapActor_GetActor(8);
            p2 = (ActorT *)__MapActor_GetActor(0);
            p1->accel = p2->accel;
            tbl = L1f00;
            idx = (r5 - 0x2d) << 3;
            idx2 = idx + 4;
            __MapActor_TravelToAnim(8, *(int *)(tbl + idx), *(int *)(tbl + idx2));
        }
    }
}

INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_2009378.s");
INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_2009390.s");
INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_20094ac.s");
INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_20095cc.s");

INCLUDE_ASM("asm/maps/vale_cave/ValeCave_GetEvents.s");
INCLUDE_ASM("asm/maps/vale_cave/ValeCave_MapInit.s");


void OvlFunc_934_2009748(void)
{
  char *new_var2;
  int r5;
  int off;
  int new_var;
  if (1)
  {
    off = 0xb6;
    off <<= 1;
    r5 = *((short *) (new_var2 = ((char *) (*((int *) iwram_3001ebc))) + off));
    __PlaySound(0x7b);
    new_var = r5;
    __Func_8091e9c(new_var);
  }
}

INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_2009770.s");
INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_20097d8.s");

extern void OvlFunc_934_20097d8(int, int, int);
extern void OvlFunc_934_2009770(void);

void OvlFunc_934_20098b4(void) {
    __PlaySound(0xf1);
    OvlFunc_934_20097d8(0xb, 0x70, 0);
    OvlFunc_934_20097d8(0xb, 0x50, 0);
    __SetFlag(0x301);
    __WaitFrames(2);
    OvlFunc_934_2009770();
    __PlaySound(0x121);
}


void OvlFunc_934_20098f4(void) {
    __PlaySound(0xf1);
    OvlFunc_934_20097d8(0xb, -0x70, 0);
    OvlFunc_934_20097d8(0xb, -0x50, 0);
    __ClearFlag(0x301);
    __WaitFrames(2);
    OvlFunc_934_2009770();
    __PlaySound(0x121);
}

INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_2009938.s");
INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_2009984.s");


void OvlFunc_934_2009bfc(void)
{
	__MapActor_SetAnim(0xb, 1);
	__MapActor_SetAnim(0xb, 2);
}

INCLUDE_ASM("asm/maps/vale_cave/ovl_169c_c.s");
