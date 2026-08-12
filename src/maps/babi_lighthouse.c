// fakematch
/* rom_7ef4f4 (overlay file 965): consolidated TU — babi_lighthouse map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/babi_lighthouse/exports.s");

/* auto void-veneer protos (add_void_protos.py) */
extern void __Actor_SetAnim();
extern void __Actor_WaitMovement();
extern void __CutsceneEnd();
extern void __CutsceneStart();
extern void __CutsceneWait();
extern void __Func_801776c();
extern void __Func_8091e9c();
extern void __Func_8093e28();
extern void __MapActor_PlayPendingSound();
extern void __PlaySound();
extern void __WaitFrames();




extern int OvlFunc_965_20082a8();
extern void OvlFunc_965_20090f4();

extern int Func_8000948(int);

int OvlFunc_965_2008030(int *a, int *b)
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

INCLUDE_ASM("asm/maps/babi_lighthouse/ovl_30_a_a_a_c_a.s");

extern unsigned int L2fd4[] __asm__(".Lm965_2fd4");
extern int gOvl_0200b014[];
extern void *OvlFunc_965_200806c(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_965_20082a8(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L2fd4[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_965_200806c(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = gOvl_0200b014;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L2fd4[idx];
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

INCLUDE_ASM("asm/maps/babi_lighthouse/ovl_30_a_a_a_c_c_a.s");

extern int L302c[] __asm__(".Lm965_302c");
extern void *OvlFunc_965_200834c(int *, void *, void *);

int OvlFunc_965_2008474(void *arg0)
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
    obj = OvlFunc_965_200834c(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = L302c[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L302c[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = L302c[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L302c[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L2fd4[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L2fd4[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (L302c[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (L302c[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L2fd4[dir] & 0xffff0000;
        cur[2] += L2fd4[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L2fd4[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern unsigned char iwram_3001e70[];
extern int L2fd4__a2[] __asm__(".Lm965_2fd4");
extern void OvlFunc_965_2008244(int, int, int, int, int, int);
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

void OvlFunc_965_2008608(struct Pk arg)
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
    t1 = L302c[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L302c[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L302c[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L302c[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (L302c[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (L302c[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_965_2008244(0, vb[0], vb[2], w, h, 0);
    __MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_965_20082a8;
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
    __MapActor_TravelBy(0, (short)(L2fd4__a2[dir] >> 16) / 2, (short)(L2fd4__a2[dir]) / 2);
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
    x1 += L302c[arg.a << 2] << 16;
    x2 += L302c[(arg.a << 2) + 1] << 16;
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
    OvlFunc_965_2008244(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_965_2008244(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (L302c[arg.a << 2] << 16);
    u2 = ap[2] + (L302c[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_965_2008244(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

INCLUDE_ASM("asm/maps/babi_lighthouse/ovl_30_a_a_a_c_c_c_c.s");

extern void __Func_8091f14(int a, int b);

void OvlFunc_965_2008cc0(void) {
    __Func_8091f14(8, 0x42);
}

void OvlFunc_965_2008cd0(unsigned int arg0)
{
    int r5;
    unsigned int r6;
    r6 = arg0;
    r5 = 0x3c;
    while (r5 != 0) {
        __WaitFrames(1);
        if (*(unsigned int *)((char *)r6 + 0x28) == 0)
            break;
        r5--;
    }
}

INCLUDE_ASM("asm/maps/babi_lighthouse/ovl_30_a_a_c_c.s");

extern unsigned char gOvl_0200b5f8[];

unsigned int BabiLighthouse_GetExits(void) {
    return (unsigned int)gOvl_0200b5f8;
}

INCLUDE_ASM("asm/maps/babi_lighthouse/ovl_30_a_c_a.s");

extern void OvlFunc_965_20080c4(void);
extern void OvlFunc_965_2009030(void);

void OvlFunc_965_20090f4(void) {
    __CutsceneStart();
    OvlFunc_965_20080c4();
    OvlFunc_965_2009030();
    __CutsceneEnd();
}


void OvlFunc_965_200910c(void) {
    int *r5;
    int *r0v;
    int r3;

    r5 = (int *)__MapActor_GetActor(9);
    r0v = (int *)__MapActor_GetActor(0);
    r3 = *(int *)((char *)r0v + 8);
    if ((r3 >> 20) < 0xd) {
        r5 = (int *)__MapActor_GetActor(8);
        r3 = *(int *)((char *)r5 + 8);
        if ((r3 >> 20) == 6) goto CONT;
        goto LAB;
    } else {
        r3 = *(int *)((char *)r5 + 8);
        if ((r3 >> 20) != 0x12) goto LAB;
    }
CONT:
    r3 = *(int *)((char *)r5 + 0x10);
    if ((r3 >> 20) == 0x14) {
        OvlFunc_965_20090f4();
        return;
    }
LAB:
    __Func_8093e28();
}

INCLUDE_ASM("asm/maps/babi_lighthouse/ovl_30_a_c_c_a_c.s");

extern void OvlFunc_965_2009158(void);

void OvlFunc_965_2009184(void)
{
    __CutsceneStart();
    OvlFunc_965_2009158();
    __Func_8091e9c(0xb);
    __CutsceneEnd();
}

extern void OvlFunc_965_20089f4(unsigned int, unsigned int, unsigned int, unsigned int);

void OvlFunc_965_200919c(void) {
    __CutsceneStart();
    OvlFunc_965_20089f4(0xe8 << 17, 0, 0x91 << 17, 0xdf);
    OvlFunc_965_2009158();
    __Func_8091e9c(0xc);
    __CutsceneEnd();
}


extern unsigned int OvlFunc_965_20089f4__u(long, long, long, long) __asm__("OvlFunc_965_20089f4");

void OvlFunc_965_20091c4(void)
{
  __CutsceneStart();
  OvlFunc_965_20089f4__u(0x8f << 16, 0, 0x91 << 17, 0xdf);
  OvlFunc_965_20089f4__u(0xf2 << 15, 0, 0x8f << 17, 0xfd);
  OvlFunc_965_2009158();
  __Func_8091e9c(0xd);
  __CutsceneEnd();
}


void OvlFunc_965_20091fc(void)
{
	__CutsceneStart();
	OvlFunc_965_2009158();
	__Func_8091e9c(0xf);
	__CutsceneEnd();
}

void OvlFunc_965_2009214(void)
{
	__CutsceneStart();
	{
		unsigned int rq = 0;
		__MapActor_SetAnim(rq, 1);
	}
	{
		unsigned int rm = 0x2693;
		__Func_801776c(rm, 1);
	}
	__CutsceneEnd();
}

INCLUDE_ASM("asm/maps/babi_lighthouse/ovl_30_a_c_c_c_c_c_c.s");

extern unsigned int iwram_3001f30;

void OvlFunc_965_200a6a8(void) {
    unsigned int ptr;
    ptr = iwram_3001f30;
    *((unsigned char *)(ptr + 0x34)) = 1;
}

void OvlFunc_965_200a6b8(void)
{
  int actor;
  int field1;
  int field2;

  actor = (int) __MapActor_GetActor(12);
  field1 = *((int *) (actor + 8)) >> 20;
  if (field1 == 0x14)
  {
    field2 = *((int *) (actor + 16)) >> 20;
    if (field2 == 12)
    {
      *((char *) (actor + 0x55)) = 2;
      *((int *) (actor + 0x14)) = 0x300000;
      *((char *) (actor + 0x23)) = 2;
      __Func_8010704(0x26, 12, 1, 1, field1, field2);
    }
  }
}

INCLUDE_ASM("asm/maps/babi_lighthouse/ovl_30_c_a_c.s");

extern void __WaitFrames(int a);
extern void __SetFlag(int a);

void OvlFunc_965_200a7f4(void)
{
  short new_var;
  short new_var2;
  int new_var3;
  new_var2 = (short) 0x12;
  new_var = new_var2;
  new_var3 = 7;
  __Func_8010704(0x52, new_var3, 1, 2, new_var, new_var3);
  __WaitFrames(1);
  __SetFlag(0xc0 << 2);
}

INCLUDE_ASM("asm/maps/babi_lighthouse/ovl_30_c_c.s");

INCLUDE_ASM("asm/maps/babi_lighthouse/imports.s");
