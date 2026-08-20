// fakematch
/* rom_7e7574 (overlay file 959): consolidated TU — lunpa_fortress map overlay. */

#include "nonmatching.h"

extern int OvlFunc_959_20082a8();
extern unsigned int OvlFunc_959_20098e4();
extern void OvlFunc_959_20097bc();
extern void OvlFunc_959_200975c();

extern int Func_8000948(int);

int OvlFunc_959_2008030(int *a, int *b)
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

INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200806c.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_20080c4.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2008244.s");

extern unsigned int L5ed8[] __asm__(".Lm959_5ed8");
extern int L5f18[] __asm__(".Lm959_5f18");
extern void *OvlFunc_959_200806c(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_959_20082a8(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L5ed8[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_959_200806c(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L5f18;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L5ed8[idx];
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

INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200834c.s");

extern int L5f30[] __asm__(".Lm959_5f30");
extern void *OvlFunc_959_200834c(int *, void *, void *);

int OvlFunc_959_2008474(void *arg0)
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
    obj = OvlFunc_959_200834c(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = L5f30[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L5f30[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = L5f30[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L5f30[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L5ed8[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L5ed8[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (L5f30[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (L5f30[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L5ed8[dir] & 0xffff0000;
        cur[2] += L5ed8[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L5ed8[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern unsigned char iwram_3001e70[];
extern int L5ed8__a2[] __asm__(".Lm959_5ed8");
extern void OvlFunc_959_2008244(int, int, int, int, int, int);
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

void OvlFunc_959_2008608(struct Pk arg)
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
    t1 = L5f30[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L5f30[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L5f30[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L5f30[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (L5f30[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (L5f30[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_959_2008244(0, vb[0], vb[2], w, h, 0);
    __MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_959_20082a8;
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
    __MapActor_TravelBy(0, (short)(L5ed8__a2[dir] >> 16) / 2, (short)(L5ed8__a2[dir]) / 2);
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
    x1 += L5f30[arg.a << 2] << 16;
    x2 += L5f30[(arg.a << 2) + 1] << 16;
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
    OvlFunc_959_2008244(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_959_2008244(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (L5f30[arg.a << 2] << 16);
    u2 = ap[2] + (L5f30[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_959_2008244(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_20088c0.s");

INCLUDE_ASM("asm/maps/lunpa_fortress/LunpaFortress_GetEntrances.s");

int LunpaFortress_GetSpecialExits(void) {
    return 0;
}

INCLUDE_ASM("asm/maps/lunpa_fortress/LunpaFortress_GetExits.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/LunpaFortress_GetActors.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/LunpaFortress_GetEvents.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2008b4c.s");

extern void OvlFunc_959_20080c4(void);

void OvlFunc_959_2008ba0(void) {
    OvlFunc_959_20080c4();
}

INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2008bac.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2008bec.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2008c78.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2008c90.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2008ce0.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2008d54.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2008dcc.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2008e30.s");

// fakematch
extern unsigned char iwram_3001ebc[];
extern void OvlFunc_959_2008e30(int a);

void OvlFunc_959_2008e80(void) {
    unsigned int r5;
    short *p;
    short v;

    r5 = *(unsigned int *)iwram_3001ebc;
    if (__CheckPartyItem(0xea) != -1) {
        p = (short *)(r5 + (0xb6 << 1));
        v = *p;
        OvlFunc_959_2008e30(v - 0x28);
        __PlaySound(0x9d);
        {
            register unsigned int p0 __asm__("r0") = 0xc0;
            register unsigned int p1 __asm__("r1") = 0xc0;
            register unsigned int p2 __asm__("r2") = 0x80;
            __asm__ volatile ("" : "+r" (p0), "+r" (p1), "+r" (p2));
            p0 <<= 10;
            __asm__ volatile ("" : "+r" (p0));
            p1 <<= 10;
            p2 <<= 9;
            __Func_8012330(p0, p1, p2);
        }
        {
            register int q0 __asm__("r0");
            register int q1 __asm__("r1");
            q0 = -1;
            q1 = -1;
            __asm__ volatile ("" : "+r" (q0), "+r" (q1));
            {
                register unsigned int q2 __asm__("r2") = 0xe666;
                __asm__ volatile ("" : "+r" (q2));
                __Func_8012330(q0, q1, q2);
            }
        }
        __SetFlag(v + 0x330);
    }
}

INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2008ee0.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2008f30.s");

void OvlFunc_959_2008f94(void)
{
    unsigned int r0;
    unsigned int r3;

    r0 = __CheckPartyItem(0xea);
    r3 = 1;
    r3 = -r3;
    if (r0 != r3)
        return;
    __Func_801776c(0x953, 1);
}

extern void __Func_801776c(int a, int b);

void OvlFunc_959_2008fb4(void) {
    __Func_801776c(0x953, 1);
}

extern int OvlFunc_959_2009038(int, int);

void OvlFunc_959_2008fc8(void)
{
    if (OvlFunc_959_2009038(8, 8))
        __SetFlag(0xf2a);
}


void OvlFunc_959_2008fe4(void)
{
    if (OvlFunc_959_2009038(9, 7))
        __SetFlag(0xf2b);
}

void OvlFunc_959_2009000(void)
{
    if (OvlFunc_959_2009038(0xa, 6))
        __SetFlag(0xf2c);
}


void OvlFunc_959_200901c(void)
{
    if (OvlFunc_959_2009038(0xb, 5))
        __SetFlag(0xf2d);
}

INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2009038.s");

void OvlFunc_959_2009098(void) {}
void OvlFunc_959_200909c(void) {}
void OvlFunc_959_20090a0(void) {}
void OvlFunc_959_20090a4(void) {}

INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_20090a8.s");

unsigned int OvlFunc_959_2009108(void) {
    int *p;
    int a, b;

    p = (int *)__MapActor_GetActor(0);
    a = p[4] / 0x100000;
    b = p[2] / 0x100000;
    if (a >= 5 && a <= 7 && b <= 0xa)
        return 1;
    if (b >= 8 && b <= 9 && a > 0x16)
        return 1;
    return 0;
}

INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2009150.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_20092e0.s");

unsigned int OvlFunc_959_2009324(void) {
    int *r5;
    int *r0;
    int a, b, c;

    r5 = (int *)__MapActor_GetActor(0);
    r0 = (int *)__MapActor_GetActor(0x11);
    a = *(int *)((char *)r5 + 8) / 0x100000;
    b = *(int *)((char *)r0 + 0x10) / 0x100000;
    c = *(int *)((char *)r0 + 8) / 0x100000;
    if (a == 0x34 && c == 0x39 && b > 0x22 && b <= 0x28) {
        return 1;
    }
    if (a == 0x39 && c == 0x34 && b > 0x22 && b <= 0x28) {
        return 1;
    }
    return 0;
}

INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200938c.s");

extern void OvlFunc_959_2009b24(int);
extern void __CutsceneEnd(void);

void OvlFunc_959_20094bc(void) {
    OvlFunc_959_2009b24(0x11);
    __CutsceneEnd();
}

unsigned int OvlFunc_959_20094cc(void) {
    int *p;
    int a, b;

    p = (int *)__MapActor_GetActor(0);
    a = p[4] / 0x100000;
    b = p[2] / 0x100000;
    if ((b >= 0x29 && b <= 0x2c && a > 0x19 && a <= 0x1c) ||
        (b == 0x29 && a > 0x25 && a <= 0x29))
        return 1;
    if (b >= 0x36 && b <= 0x38 && a > 0x1e && a <= 0x28)
        return 1;
    return 0;
}

INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2009528.s");


void OvlFunc_959_2009650(void) {
    OvlFunc_959_2009b24(0x12);
    __CutsceneEnd();
}


unsigned int OvlFunc_959_2009660(void) {
    int *p;
    int a, b;

    p = (int *)__MapActor_GetActor(0);
    a = p[4] / 0x100000;
    b = p[2] / 0x100000;
    if (b > 0x2d && a > 0xe && b <= 0x40 && a <= 0x10)
        return 0;
    return 1;
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern unsigned char *iwram_3001ebc__a1 __asm__("iwram_3001ebc");
extern GlobalState gState;

void OvlFunc_959_200969c(void)
{
    unsigned char *r5;
    unsigned int r3;
    unsigned int r2;
    int x;

    r5 = iwram_3001ebc__a1;
    if ((({ x = 0x214; __asm__ ("" : "+r" (x)); __GetFlag(x); })) == 0) {
        if (OvlFunc_959_2009660() == 0) {
            r3 = (unsigned int)&gState;
            r2 = 0x93;
            r2 <<= 2;
            r3 += r2;
            if (*(short *)r3 == 0) {
                if (OvlFunc_959_20098e4(0x11) != 0) {
                    __SetFlag(0x215);
                    (({ x = 0x214; __asm__ ("" : "+r" (x)); __SetFlag(x); }));
                }
            }
            if ((({ x = 0x214; __asm__ ("" : "+r" (x)); __GetFlag(x); })) != 0) {
                r3 = 0xc1;
                r3 <<= 1;
                r2 = (unsigned int)(r5 + r3);
                r3 = 0x5e;
                *(unsigned short *)r2 = r3;
            }
        }
    }
}


void OvlFunc_959_2009708(void) {
    OvlFunc_959_2009b24(0x11);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2009718.s");

extern unsigned int iwram_3001ebc__a2 __asm__("iwram_3001ebc");

void OvlFunc_959_200975c(void)
{
    unsigned int r3;
    unsigned int r2;
    unsigned char *r5;
    int r0;
    int x;

    r5 = (unsigned char *)iwram_3001ebc__a2;
    r0 = ({ x = 0x225; __asm__("" : "+r"(x)); __GetFlag(x); });
    if (r0 == 0) {
        r0 = OvlFunc_959_20098e4(0xd);
        if (r0 != 0) {
            r3 = (unsigned int)&gState;
            r2 = 0x93;
            r2 <<= 2;
            r3 += r2;
            if (*(short *)r3 == 0) {
                __SetFlag(0x225);
                __StopTask(OvlFunc_959_200975c);
                __StopTask(OvlFunc_959_20097bc);
                r3 = 0xc1;
                r3 <<= 1;
                r2 = (unsigned int)r5 + r3;
                r3 = 0x60;
                *(unsigned short *)r2 = r3;
            }
        }
    }
}

extern unsigned char *iwram_3001ebc__a3 __asm__("iwram_3001ebc");

void OvlFunc_959_20097bc(void)
{
    unsigned char *r5;
    unsigned int r3;
    unsigned int r2;
    int x;

    r5 = iwram_3001ebc__a3;
    if ((({ x = 0x225; __asm__ ("" : "+r" (x)); __GetFlag(x); })) == 0) {
        if (OvlFunc_959_20098e4(0x15) != 0) {
            r3 = (unsigned int)&gState;
            r2 = 0x93;
            r2 <<= 2;
            r3 += r2;
            if (*(short *)r3 == 0) {
                __SetFlag(0x225);
                __StopTask(OvlFunc_959_20097bc);
                __StopTask(OvlFunc_959_200975c);
                r3 = 0xc1;
                r3 <<= 1;
                r2 = (unsigned int)(r5 + r3);
                r3 = 0x60;
                *(unsigned short *)r2 = r3;
            }
        }
    }
}

INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200981c.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2009880.s");

extern int OvlFunc_959_2009980(void);
extern int OvlFunc_959_200981c(unsigned int arg0);
extern int OvlFunc_959_2009880(unsigned int arg0);

unsigned int OvlFunc_959_20098e4(unsigned int arg0)
{
	int v;
	if (!OvlFunc_959_2009980())
		return 0;
	if (OvlFunc_959_200981c(arg0))
		return 1;
	v = OvlFunc_959_2009880(arg0);
	return (unsigned int)(-v | v) >> 31;
}

INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2009918.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2009980.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_20099e8.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2009a44.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2009ab0.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2009b24.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2009be4.s");

void OvlFunc_959_2009c4c(unsigned int actor)
{
    unsigned int msg;
    unsigned short t2;
    unsigned short e;

    __Func_80925cc(actor, 1);
    do { msg = 0x241e; } while (0);
    __MessageID(msg);
    __ActorMessage(actor, 0);
    e = 0x81;
    {
        register unsigned int p2 __asm__("r2") = 0x3c;
        register unsigned int p0 __asm__("r0") = actor;
        __asm__ volatile ("" : : "r" (p2), "r" (p0));
        e <<= 1;
        __MapActor_Emote(p0, e, p2);
    }
    __MessageID(msg+1);
    __ActorMessage(actor, 0);
    msg += 2;
    t2 = 4;
    do { t2 = (unsigned short) t2; } while (0);
    __MapActor_DoAnim(actor, t2);
    __MessageID(msg);
    __ActorMessage(actor, 0);
}

void OvlFunc_959_2009ca4(unsigned int arg0)
{
    unsigned int msg;
    unsigned short t1;
    unsigned short t2;

    msg = 0x2421;
    __MessageID(msg);
    __ActorMessage(arg0, 0);
    t1 = 1;
    do { t1 = (unsigned short) t1; } while (0);
    __Func_80925cc(arg0, t1);
    __MessageID(msg + 1);
    __ActorMessage(arg0, 0);
    msg += 2;
    t2 = 4;
    do { t2 = (unsigned short) t2; } while (0);
    __MapActor_DoAnim(arg0, t2);
    __MessageID(msg);
    __ActorMessage(arg0, 0);
}

void OvlFunc_959_2009cf0(unsigned int actor)
{
    unsigned int msg = 0x2424;
    unsigned short anim;
    unsigned short z;

    __MessageID(msg);
    z = 0;
    do { z = (unsigned short) z; } while (0);
    __ActorMessage(actor, z);
    __CutsceneWait(0x78);
    {
        register unsigned int p2 __asm__("r2") = 0x3c;
        register unsigned int p0 __asm__("r0") = actor;
        __asm__ volatile ("" : : "r" (p2), "r" (p0));
        __MapActor_Emote(p0, 0x101, p2);
    }
    __MessageID(msg+1);
    __ActorMessage(actor, 0);
    anim = 1;
    do { anim = (unsigned short) anim; } while (0);
    __Func_80925cc(actor, anim);
    __MessageID(msg+2);
    __ActorMessage(actor, 0);
    msg += 3;
    anim = 4;
    do { anim = (unsigned short) anim; } while (0);
    __MapActor_DoAnim(actor, anim);
    __MessageID(msg);
    __ActorMessage(actor, 0);
}

void OvlFunc_959_2009d60(unsigned int actor)
{
    unsigned int msg = 0x2428;
    unsigned short anim;

    __MessageID(msg);
    __ActorMessage(actor, 0);
    anim = 4;
    do { anim = (unsigned short) anim; } while (0);
    __MapActor_DoAnim(actor, anim);
    __MessageID(msg+1);
    __ActorMessage(actor, 0);
    anim = 1;
    do { anim = (unsigned short) anim; } while (0);
    __Func_80925cc(actor, anim);
    __MessageID(msg+2);
    __ActorMessage(actor, 0);
    msg += 3;
    anim = 3;
    do { anim = (unsigned short) anim; } while (0);
    __MapActor_DoAnim(actor, anim);
    __MessageID(msg);
    __ActorMessage(actor, 0);
}

void OvlFunc_959_2009be4(int a1);
void __StartMapBattle(int a1, int a2);

void OvlFunc_959_2009dc4(void)
{
    unsigned int *p;
    GlobalState *gs;

    __MapActor_SetAnim(0, 1);
    __PlaySound(0x71);
    __MapActor_Emote(0xf, 0x100, 0x3c);
    OvlFunc_959_2009be4(0xf);
    p = *(unsigned int **)iwram_3001ebc;
    *(unsigned int *)((char *)p + 0x1c0) = 0x200;
    gs = &gState;
    *(unsigned char *)((char *)gs + 0x22b) = 3;
    __StartMapBattle(0x62, 2);
    {
        unsigned short t = 0xf;
        do { t = (unsigned short) t; } while (0);
        __MapActor_SetPos((int) t, 0, 0);
    }
    __CutsceneEnd();
    __SetFlag(0x94c);
}


void OvlFunc_959_2009e2c(void)
{
    unsigned int *p;
    unsigned char *b;

    __MapActor_SetAnim(0, 1);
    __PlaySound(0x71);
    __MapActor_Emote(0xb, 0x100, 0x3c);
    OvlFunc_959_2009be4(0xb);
    p = *(unsigned int **)iwram_3001ebc;
    *(unsigned int *)((char *)p + 0x1c0) = 0x200;
    b = (unsigned char *)&gState;
    b += 0x22b;
    *b = 3;
    __StartMapBattle(0x62, 2);
    {
        unsigned short t2 = 0xb;
        do { t2 = (unsigned short) t2; } while (0);
        __MapActor_SetPos(t2, 0, 0);
    }
    __CutsceneEnd();
    __SetFlag(0x949);
}

INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_2009e94.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200a06c.s");

extern int iwram_3001ebc__a6 __asm__("iwram_3001ebc");

void OvlFunc_959_200a0cc(void)
{
    unsigned int r3;
    unsigned int r2;
    unsigned short t;

    __MapActor_SetAnim(0, 1);
    __PlaySound(0x71);
    __MapActor_Emote(0x10, 0x100, 0x3c);
    OvlFunc_959_2009be4(0x10);

    r3 = (unsigned int)iwram_3001ebc__a6;
    r2 = 0xe0;
    r2 <<= 1;
    r3 += r2;
    r2 += 0x40;
    *(unsigned int *)r3 = r2;

    r3 = (unsigned int)&gState;
    r2 += 0x2b;
    r3 += r2;
    r2 = 3;
    *(unsigned char *)r3 = r2;

    t = 0x62;
    do { t = (unsigned short)t; } while (0);
    __StartMapBattle(t, 2);

    t = 0x10;
    do { t = (unsigned short)t; } while (0);
    __MapActor_SetPos(t, 0, 0);
    __CutsceneEnd();
    __SetFlag(0x94b);
}

INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200a134.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200a1c4.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200a26c.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200a2a0.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200a2d4.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200a308.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200a38c.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200a410.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200a468.s");

void OvlFunc_959_200a4c0(void)
{
  int a1 = 0;
  int a2 = 0;
  int new_var;
 do { __SetFlag(0x944); __ClearFlag(0x217); } while (0);
  new_var = a2;
  __MapActor_SetPos(8, a1, new_var);
}

extern void OvlFunc_959_200a2d4(void);

void OvlFunc_959_200a4e4(void)
{
  int r4;
 do { __SetFlag(0x945); OvlFunc_959_200a2d4(); } while (0);
  r4 = 9;
  __MapActor_SetPos(r4, 0, 0);
}

void OvlFunc_959_200a504(void)
{
  int a;
 do { a = 0x86; if (1) { __SetFlag(0x946); } __ClearFlag(a << 2); a = 0xa; } while (0);
  __MapActor_SetPos(a, 0, 0);
}

void OvlFunc_959_200a528(void) {}

INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200a52c.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200a5f8.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200a69c.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200a718.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200a7b0.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200b054.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200c638.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200c704.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200c794.s");

extern int __GetFlag(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);

void OvlFunc_959_200c928(void) {
    if (__GetFlag(0x941)) {
        __MessageID(0x2568);
        __ActorMessage(0x19, 0);
    } else {
        __MessageID(0x2458);
        __ActorMessage(0x19, 0);
    }
}

void OvlFunc_959_200c964(void) {
    if (__GetFlag(0x941)) {
        __MessageID(0x2569);
        __ActorMessage(0x18, 0);
    } else {
        __MessageID(0x244e);
        __ActorMessage(0x18, 0);
    }
}

INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200c9a0.s");

extern void __Func_80955b0(int a, int b, int c);
extern void __SetFlag(int a);

void OvlFunc_959_200cb68(void) {
    __Func_80955b0(0x1a, 1, 5);
    __SetFlag(0x94e);
}

void OvlFunc_959_200cb84(void)
{
  int a;
  __Func_80925cc(0xe, 2);
  __MessageID(0x2441);
  a = 0xe;
 do { } while (0);
  __ActorMessage(a, 0);
}

#include "message.h"
extern void __Func_80925cc(int, int);

void OvlFunc_959_200cba4(void) {
    __Func_80925cc(0xd, 2);
    __MessageID(MSG_2440);
    __ActorMessage(0xd, 0);
}

void OvlFunc_959_200cbc4(void)
{
  int a;
  int b;
  __Func_80925cc(0xc, 2);
  __MessageID(0x243f);
  a = 0xc;
 do { b = 0; } while (0);
  __ActorMessage(a, b);
}

void OvlFunc_959_200cbe4(void)
{
    __MessageID(0x2459);
    __Func_8093054(0x12, 0);
}

INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200cbfc.s");

extern void __Func_8097608(void);
extern void OvlFunc_959_200cbfc(void);
extern unsigned int iwram_3001ebc__a7 __asm__("iwram_3001ebc");

void OvlFunc_959_200cd0c(void) {
    int x;
    x = __GetFlag(0x226);
    if (x) {
        __MessageID(0x2435);
        __ActorMessage(0x14, 0);
    } else {
        *(unsigned short *)(iwram_3001ebc__a7 + (0xbf << 1)) = x;
        __Func_8097608();
        OvlFunc_959_200cbfc();
    }
}

void OvlFunc_959_200cd4c(void) {}

INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200cd50.s");


void OvlFunc_959_200cd88(void) {
    __MessageID(0x256d);
    __ActorMessage(0xd, 0);
}

INCLUDE_ASM("asm/maps/lunpa_fortress/LunpaFortress_MapInit.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200cf60.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200d0e4.s");
INCLUDE_ASM("asm/maps/lunpa_fortress/OvlFunc_959_200d324.s");

extern void OvlFunc_959_2008ee0(int);

void OvlFunc_959_200d470(void) {
    if (__GetFlag(0x35a)) {
        OvlFunc_959_2008ee0(0);
    }
    if (__GetFlag(0x35b)) {
        OvlFunc_959_2008ee0(1);
    }
    if (__GetFlag(0xd7 << 2)) {
        OvlFunc_959_2008ee0(2);
    }
}


void OvlFunc_959_200d4b0(void) {
    if (__GetFlag(0xd6 << 2)) {
        OvlFunc_959_2008e30(0);
    }
    if (__GetFlag(0x359)) {
        OvlFunc_959_2008e30(1);
    }
}

extern void OvlFunc_959_2008d54(int index);

void OvlFunc_959_200d4dc(void)
{
    if (__GetFlag(0x355))
        OvlFunc_959_2008d54(0);
    if (__GetFlag(0x356))
        OvlFunc_959_2008d54(1);
    if (__GetFlag(0x357))
        OvlFunc_959_2008d54(2);
}

extern void OvlFunc_959_2008c90(int);

void OvlFunc_959_200d520(void) {
    if (__GetFlag(0xd4 << 2)) {
        OvlFunc_959_2008c90(0);
    }
    if (__GetFlag(0x351)) {
        OvlFunc_959_2008c90(1);
    }
    if (__GetFlag(0x352)) {
        OvlFunc_959_2008c90(2);
    }
    if (__GetFlag(0x353)) {
        OvlFunc_959_2008c90(3);
    }
    if (__GetFlag(0xd5 << 2)) {
        OvlFunc_959_2008c90(4);
    }
}

INCLUDE_ASM("asm/maps/lunpa_fortress/ovl_9dc_c_c_c_c_c_c.s");
