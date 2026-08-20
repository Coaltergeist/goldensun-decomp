// fakematch
/* rom_7ced6c (overlay file 946): consolidated TU — crossbone_isle map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/crossbone_isle/exports.s");

extern int OvlFunc_946_20082a8();
extern void OvlFunc_946_2009904();

extern int Func_8000948(int);

int OvlFunc_946_2008030(int *a, int *b)
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

INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200806c.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_20080c4.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2008244.s");

extern unsigned int L315c[] __asm__(".Lm946_315c");
extern int L319c[] __asm__(".Lm946_319c");
extern void *OvlFunc_946_200806c(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_946_20082a8(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L315c[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_946_200806c(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L319c;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L315c[idx];
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

INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200834c.s");

extern int L31b4[] __asm__(".Lm946_31b4");
extern void *OvlFunc_946_200834c(int *, void *, void *);

int OvlFunc_946_2008474(void *arg0)
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
    obj = OvlFunc_946_200834c(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = L31b4[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L31b4[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = L31b4[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L31b4[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L315c[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L315c[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (L31b4[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (L31b4[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L315c[dir] & 0xffff0000;
        cur[2] += L315c[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L315c[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern unsigned char iwram_3001e70[];
extern int L315c__a2[] __asm__(".Lm946_315c");
extern void OvlFunc_946_2008244(int, int, int, int, int, int);
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

void OvlFunc_946_2008608(struct Pk arg)
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
    t1 = L31b4[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L31b4[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L31b4[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L31b4[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (L31b4[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (L31b4[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_946_2008244(0, vb[0], vb[2], w, h, 0);
    __MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_946_20082a8;
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
    __MapActor_TravelBy(0, (short)(L315c__a2[dir] >> 16) / 2, (short)(L315c__a2[dir]) / 2);
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
    x1 += L31b4[arg.a << 2] << 16;
    x2 += L31b4[(arg.a << 2) + 1] << 16;
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
    OvlFunc_946_2008244(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_946_2008244(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (L31b4[arg.a << 2] << 16);
    u2 = ap[2] + (L31b4[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_946_2008244(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_20088c0.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_20089dc.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_20089f4.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2008a4c.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2008ab0.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2008ae8.s");

void OvlFunc_946_2008cc0(void) {}

INCLUDE_ASM("asm/maps/crossbone_isle/CrossboneIsle_GetEntrances.s");

unsigned int CrossboneIsle_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200b508[];

void *CrossboneIsle_GetExits(void) {
    return (void *)gOvl_0200b508;
}

INCLUDE_ASM("asm/maps/crossbone_isle/CrossboneIsle_GetActors.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2008da4.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2008e00.s");

typedef struct
{
unsigned char _bytes[704];
} GlobalState;
extern GlobalState gState;

void OvlFunc_946_2008e88(void)
{
  unsigned char *new_var2;
  unsigned char *new_var;
  int idx;
  __CutsceneStart();
 new_var2 = (unsigned char *) (&gState); do { idx = *((short *) (((char *) (&gState)) + (0xe0 * 2))); __Func_8091f90(idx, 5); new_var = new_var2 + 0x22b; *new_var = 3; } while (0);
  __StartMapBattle(0x54, 5);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/crossbone_isle/CrossboneIsle_GetEvents.s");

void OvlFunc_946_2008f3c(void)
{
  int new_var;
  unsigned short new_var2;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __CutsceneStart();
  new_var = 0;
  new_var2 = 8;
  __MapActor_SetPos(new_var2, new_var, (long) (new_var4 = new_var));
  __SetFlag(0xfd7);
  new_var6 = 0xb5;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_808f1c0(new_var5, 3);
  __Func_8091a58(0xb5, 0);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/crossbone_isle/CrossboneIsle_MapInit.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2009214.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_20092b4.s");

extern void OvlFunc_946_20080c4(void);
extern void OvlFunc_946_20092b4(void);

void OvlFunc_946_2009374(void) {
    __CutsceneStart();
    OvlFunc_946_20080c4();
    __CutsceneEnd();
    OvlFunc_946_20092b4();
}

extern unsigned int gOvl_0200b2bc;

void OvlFunc_946_200938c(void) {
    __Func_8010560(&gOvl_0200b2bc, 0x25, 7);
    __PlaySound(0xb7);
    __Func_8091e9c(4);
}

INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_20093ac.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2009494.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2009508.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2009548.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200958c.s");

struct Actor {
unsigned char pad[0x59];
unsigned char unk59;
};

void OvlFunc_946_20095d0(unsigned int param_1) {
    struct Actor *actor;
    unsigned int w;
    unsigned int z;

    actor = __MapActor_GetActor(0xe);
    if (actor != 0) {
        actor->unk59 = 0;
    }
    actor = __MapActor_GetActor(param_1);
    __Actor_SetSpriteFlags(actor, 0);

    w = 0x90;
    z = 0xa0;
    {
        register unsigned int rq __asm__("r0") = 0;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 16;
        __asm__ volatile ("" : "+r" (w));
        z <<= 17;
        __Func_8012078(rq, w, z, 0xfd);
    }

    w = 0xbc;
    z = 0xa0;
    {
        register unsigned int rq __asm__("r0") = 0;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 18;
        __asm__ volatile ("" : "+r" (w));
        z <<= 17;
        __Func_8012078(rq, w, z, 0xfd);
    }

    __SetFlag(0x243);
}

INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2009624.s");

extern void __SetFlag(int);

void OvlFunc_946_200964c(void) {
    __SetFlag(0x8c5);
}


void OvlFunc_946_200965c(void) {
    __SetFlag(0x8c6);
}


void OvlFunc_946_200966c(void) {
    __SetFlag(0x8c7);
}

INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200967c.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2009740.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2009774.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200985c.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_20098b0.s");

void OvlFunc_946_2009904(unsigned int arg0)
{
    unsigned int r5;

    r5 = arg0;
    __MapActor_SetAnim(r5, 1);
    __MapActor_SetAnim(r5, 2);
}

extern void OvlFunc_946_200985c(unsigned int, unsigned int, unsigned int, unsigned int);
extern void OvlFunc_946_20098b0(unsigned int, unsigned int, unsigned int, unsigned int);

void OvlFunc_946_200991c(void)
{
    OvlFunc_946_200985c(8, 0x11, 0x1e, 0x15);
    OvlFunc_946_200985c(0xa, 0x11, 0x1f, 0x16);
    OvlFunc_946_20098b0(0xb, 0x14, 0x1e, 0x17);
    OvlFunc_946_20098b0(0xc, 0x15, 0x1e, 0x18);
    OvlFunc_946_20098b0(0xd, 0x16, 0x1e, 0x19);
    OvlFunc_946_20098b0(0xf, 0x17, 0x1e, 0x1a);
    OvlFunc_946_200985c(0x11, 0, 0x1e, 0x1f);
    OvlFunc_946_200985c(0x12, 0, 0x1f, 0x20);
    OvlFunc_946_200985c(9, 0, 0x20, 0x21);
    OvlFunc_946_20098b0(0x13, 4, 0x1e, 0x22);
    OvlFunc_946_20098b0(0xe, 5, 0x1e, 0x23);
    OvlFunc_946_20098b0(0x10, 6, 0x1e, 0x24);
}


void OvlFunc_946_20099b4(void) {
    OvlFunc_946_2009904(8);
}


void OvlFunc_946_20099c0(void) {
    OvlFunc_946_2009904(10);
}


void OvlFunc_946_20099cc(void) {
    OvlFunc_946_2009904(11);
}


void OvlFunc_946_20099d8(void) {
    OvlFunc_946_2009904(12);
}


void OvlFunc_946_20099e4(void) {
    OvlFunc_946_2009904(0xd);
}


void OvlFunc_946_20099f0(void) {
    OvlFunc_946_2009904(0xf);
}


void OvlFunc_946_20099fc(void) {
    OvlFunc_946_2009904(0x11);
}


void OvlFunc_946_2009a08(void) {
    OvlFunc_946_2009904(0x12);
}


void OvlFunc_946_2009a14(void) {
    OvlFunc_946_2009904(9);
}


void OvlFunc_946_2009a20(void) {
    OvlFunc_946_2009904(0x13);
}


void OvlFunc_946_2009a2c(void) {
    OvlFunc_946_2009904(14);
}


void OvlFunc_946_2009a38(void) {
    OvlFunc_946_2009904(0x10);
}

INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2009a44.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2009b14.s");

extern int OvlFunc_946_2009a44(void *, unsigned int *);

int OvlFunc_946_2009b40(void) {
    unsigned int buf[3];
    unsigned int *r0;
    unsigned int r3;
    unsigned int r2;
    r0 = __MapActor_GetActor(0);
    r3 = *(unsigned int *)((char *)r0 + 8);
    buf[0] = r3;
    r3 = *(unsigned int *)((char *)r0 + 0xc);
    buf[1] = r3;
    r2 = 0x80;
    r3 = *(unsigned int *)((char *)r0 + 0x10);
    r2 <<= 14;
    r3 += r2;
    buf[2] = r3;
    return OvlFunc_946_2009a44(r0, buf);
}

INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2009b68.s");


int OvlFunc_946_2009b94(void) {
    unsigned int buf[3];
    unsigned int *r0;
    unsigned int r3;
    unsigned int r2;
    r0 = __MapActor_GetActor(0);
    r2 = 0x80;
    r3 = *(unsigned int *)((char *)r0 + 8);
    r2 <<= 14;
    r3 += r2;
    buf[0] = r3;
    r3 = *(unsigned int *)((char *)r0 + 0xc);
    buf[1] = r3;
    r3 = *(unsigned int *)((char *)r0 + 0x10);
    buf[2] = r3;
    return OvlFunc_946_2009a44(r0, buf);
}

INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2009bbc.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2009c84.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2009d2c.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2009de0.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2009e5c.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2009ef4.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_2009f78.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200a004.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200a080.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200a16c.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200a200.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200a2c8.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200a3c4.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200a450.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200a4c8.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200a5f0.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200a700.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200a848.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200a984.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200aa98.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200ab80.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200ac4c.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200ad0c.s");
INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200add0.s");

int OvlFunc_946_200ae70(int *actor)
{
  short *r7;
  int r5;
  int t;
  unsigned int a;
  unsigned int b;
  r7 = *((short **) (((char *) actor) + 0x50));
  r5 = __sin(*((int *) (((char *) actor) + 0x30))) << 1;
  if (r5 > 0)
  {
    r5 = -r5;
  }
  ;
  *((int *) (((char *) actor) + 8)) = (*((int *) (((char *) actor) + 0x38))) + (__cos(*((int *) (((char *) actor) + 0x30))) << 1);
  *((int *) (((char *) actor) + 0xc)) = (*((int *) (((char *) actor) + 0x3c))) + r5;
  t = __cos((*((int *) (((char *) actor) + 0x30))) + 0x8000);
  if (t < 0)
  {
    t = t + 7;
  }
  r7[15] = t >> 3;
  a = __Random();
  b = __Random();
  *((int *) (((char *) actor) + 0x30)) = ((*((int *) (((char *) actor) + 0x30))) + (((a << 9) >> 16) + ((b << 9) >> 16))) + 0x400;
  return 0;
}

INCLUDE_ASM("asm/maps/crossbone_isle/OvlFunc_946_200aed8.s");

INCLUDE_ASM("asm/maps/crossbone_isle/imports.s");
