// fakematch
/* rom_7e636c (overlay file 958): consolidated TU — gondowan map overlay. */

#include "nonmatching.h"

extern int OvlFunc_958_200858c();

extern int Func_8000948(int);

int OvlFunc_958_2008314(int *a, int *b)
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

INCLUDE_ASM("asm/maps/gondowan/ovl_314_c_a.s");

extern unsigned int L16c0[] __asm__(".Lm958_16c0");
extern int L1700[] __asm__(".Lm958_1700");
extern void *OvlFunc_958_2008350(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_958_200858c(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L16c0[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_958_2008350(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L1700;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L16c0[idx];
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

INCLUDE_ASM("asm/maps/gondowan/ovl_314_c_c_a.s");

extern int L1718[] __asm__(".Lm958_1718");
extern void *OvlFunc_958_2008630(int *, void *, void *);

int OvlFunc_958_2008758(void *arg0)
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
    obj = OvlFunc_958_2008630(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = L1718[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L1718[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = L1718[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L1718[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L16c0[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L16c0[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (L1718[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (L1718[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L16c0[dir] & 0xffff0000;
        cur[2] += L16c0[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L16c0[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern unsigned char iwram_3001e70[];
extern int L16c0__a2[] __asm__(".Lm958_16c0");
extern void OvlFunc_958_2008528(int, int, int, int, int, int);
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

void OvlFunc_958_20088ec(struct Pk arg)
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
    t1 = L1718[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L1718[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L1718[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L1718[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (L1718[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (L1718[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_958_2008528(0, vb[0], vb[2], w, h, 0);
    __MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_958_200858c;
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
    __MapActor_TravelBy(0, (short)(L16c0__a2[dir] >> 16) / 2, (short)(L16c0__a2[dir]) / 2);
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
    x1 += L1718[arg.a << 2] << 16;
    x2 += L1718[(arg.a << 2) + 1] << 16;
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
    OvlFunc_958_2008528(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_958_2008528(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (L1718[arg.a << 2] << 16);
    u2 = ap[2] + (L1718[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_958_2008528(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

INCLUDE_ASM("asm/maps/gondowan/ovl_314_c_c_c_c.s");

INCLUDE_ASM("asm/maps/gondowan/ovl_cc0_a.s");

int Gondowan_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200991c[];

unsigned int Gondowan_GetExits(void) {
    return (unsigned int)gOvl_0200991c;
}

INCLUDE_ASM("asm/maps/gondowan/ovl_cc0_c_a_c_a.s");

extern int __GetFlag(int);
extern int __MessageID(int);
extern void __ActorMessage(int, int);

void OvlFunc_958_2009040(void) {
    if (__GetFlag(0x95 << 4) && !__GetFlag(0x96f)) {
        __MessageID(0x23d5);
    } else {
        __MessageID(0x23d2);
    }
    __ActorMessage(0x9, 0);
}

extern unsigned char iwram_3001ebc[];

void OvlFunc_958_2009080(void) {
    int r5;
    int r3;
    int r2;
    int a;
    int b;
    int c;
    int d;

    r5 = *(int *)iwram_3001ebc;
    __CutsceneStart();
    if (__GetFlag(0x204) != 0) {
        __ClearFlag(0x9a3);
        a = 0x9a5;
        __asm__ ("" : "+r" (a));
        __ClearFlag(a);
        b = 0x9a4;
        __asm__ ("" : "+r" (b));
        __ClearFlag(b);
        __ClearFlag(0x9a6);
        c = 0x9a5;
        __asm__ ("" : "+r" (c));
        __SetFlag(c);
        d = 0x9a4;
        __asm__ ("" : "+r" (d));
        __SetFlag(d);
    }
    r2 = 0xb6;
    r2 <<= 1;
    r3 = r5 + r2;
    r2 = 0;
    __Func_8091e9c(*(short *)(r3 + r2));
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}

extern void __Func_8093c00(void);

void OvlFunc_958_20090f0(void) {
    __Func_8093c00();
}

extern void OvlFunc_958_20091f8(int arg0);

void OvlFunc_958_20090fc(void)
{
  int r3;
  int new_var;
  int new_var2;
  int new_var3;
  unsigned int *actor;
  __MapActor_GetActor(8);
  __CutsceneStart();
  new_var2 = 8;
  actor = __MapActor_GetActor(new_var2);
  r3 = (*((int *) (((char *) actor) + new_var2))) >> 20;
  if (r3 <= 30)
  {
    OvlFunc_958_20091f8(8);
    new_var = 0x1b;
    new_var3 = 0x13;
    __Func_8010704(0x1d, 0x13, 1, 1, new_var, new_var3);
    __SetFlag(0x9a2);
  }
  __CutsceneEnd();
}

extern void OvlFunc_958_20083a8(void);
extern void OvlFunc_958_2009158(void);

void OvlFunc_958_2009148(void)
{
	OvlFunc_958_20083a8();
	OvlFunc_958_2009158();
}

INCLUDE_ASM("asm/maps/gondowan/ovl_cc0_c_a_c_c_c_c.s");

void OvlFunc_958_20091c4(void) {}

void OvlFunc_958_20091c8(unsigned int arg0) {
    unsigned int r2;
    unsigned int r1;
    unsigned short r3;

    r2 = *(unsigned int *)(arg0 + 0x50);
    r1 = 0xfffffc00;
    r3 = *(unsigned short *)(r2 + 0x1e);
    r3 += r1;
    *(unsigned short *)(r2 + 0x1e) = r3;
}

extern void __WaitFrames(int);

void OvlFunc_958_20091d8(unsigned int arg0, int arg1)
{
    int r5;
    int *r7;

    r7 = (int *)arg0;
    r5 = 0x28;
    while (r5 != 0) {
        __WaitFrames(1);
        r5--;
        if (r7[3] <= arg1)
            break;
    }
}

INCLUDE_ASM("asm/maps/gondowan/ovl_cc0_c_c_a_c.s");

void OvlFunc_958_2009380(void) {}

extern void __MapActor_SetPos(int a, int b, int c);

void OvlFunc_958_2009384(void) {
    __MapActor_SetPos(12, 0, 0);
}

INCLUDE_ASM("asm/maps/gondowan/ovl_cc0_c_c_c_c.s");
