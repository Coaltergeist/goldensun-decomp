// fakematch
/* rom_780898 (overlay file 883): consolidated TU — vale_river map overlay. */

#include "nonmatching.h"

/* Cluster OvlFunc_883_2008030..OvlFunc_883_2008030 extracted from goldensun/asm/overlays/rom_799abc/ovl_30_a_a_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_799abc/ovl_30_a_a_a_a.o and asm/overlays/rom_799abc/ovl_30_a_a_a_c.o in
 * goldensun/overlays/rom_799abc/overlay.ld.
 */
extern int Func_8000948(int);

int OvlFunc_883_2008030(int *a, int *b)
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

INCLUDE_ASM("asm/maps/vale_river/ovl_30_a_a_a_c.s");

extern unsigned int L6190[] __asm__(".Lm883_6190");
extern int L61d0[] __asm__(".Lm883_61d0");
extern void *OvlFunc_883_200806c(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_883_20082a8(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L6190[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_883_200806c(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L61d0;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L6190[idx];
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

INCLUDE_ASM("asm/maps/vale_river/ovl_30_a_a_c_a.s");

extern int L61e8[] __asm__(".Lm883_61e8");
extern void *OvlFunc_883_200834c(int *, void *, void *);

int OvlFunc_883_2008474(void *arg0)
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
    obj = OvlFunc_883_200834c(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = L61e8[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L61e8[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = L61e8[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L61e8[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L6190[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L6190[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (L61e8[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (L61e8[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L6190[dir] & 0xffff0000;
        cur[2] += L6190[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L6190[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern unsigned char iwram_3001e70[];
extern int L6190__a2[] __asm__(".Lm883_6190");
extern void OvlFunc_883_2008244(int, int, int, int, int, int);
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

void OvlFunc_883_2008608(struct Pk arg)
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
    t1 = L61e8[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L61e8[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L61e8[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L61e8[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (L61e8[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (L61e8[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_883_2008244(0, vb[0], vb[2], w, h, 0);
    __MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_883_20082a8;
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
    __MapActor_TravelBy(0, (short)(L6190__a2[dir] >> 16) / 2, (short)(L6190__a2[dir]) / 2);
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
    x1 += L61e8[arg.a << 2] << 16;
    x2 += L61e8[(arg.a << 2) + 1] << 16;
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
    OvlFunc_883_2008244(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_883_2008244(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (L61e8[arg.a << 2] << 16);
    u2 = ap[2] + (L61e8[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_883_2008244(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

INCLUDE_ASM("asm/maps/vale_river/ovl_30_a_a_c_c_c.s");

extern unsigned char gOvl_0200e708[];

unsigned int ValeRiver_GetEntrances(void) {
    return (unsigned int)gOvl_0200e708;
}

int ValeRiver_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200e870[];

void *ValeRiver_GetExits(void) {
    return (void *)gOvl_0200e870;
}

extern unsigned char L6e48[] __asm__(".Lm883_6e48");
extern unsigned char L6cc8[] __asm__(".Lm883_6cc8");
extern unsigned char L6ab8[] __asm__(".Lm883_6ab8");
extern unsigned char L68a8[] __asm__(".Lm883_68a8");
extern int gState;

unsigned char * ValeRiver_GetActors(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0x10) {
        return L6e48;
    }
    if (__GetFlag(0x87a) != 0) {
        return L6cc8;
    }
    if (__GetFlag(0x815) != 0) {
        return L6ab8;
    }
    return L68a8;
}

void OvlFunc_883_2008a44(void)
{
  int new_var;
  unsigned short new_var2;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __CutsceneStart();
  new_var = 0;
  new_var2 = 0x1a;
  __MapActor_SetPos(new_var2, new_var, (long) (new_var4 = new_var));
  __SetFlag(0xfd << 4);
  new_var6 = 0xb5;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_808f1c0(new_var5, 3);
  __Func_8091a58(0xb5, 0);
  __CutsceneEnd();
}

void OvlFunc_883_2008a74(void)
{
  int new_var;
  unsigned short new_var2;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __CutsceneStart();
  new_var = 0;
  new_var2 = 0x14;
  __MapActor_SetPos(new_var2, new_var, (long) (new_var4 = new_var));
  __SetFlag(0xfd << 4);
  new_var6 = 0xb5;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_808f1c0(new_var5, 3);
  __Func_8091a58(0xb5, 0);
  __CutsceneEnd();
}

extern int __GetFlag(int id);
extern unsigned char L7334[] __asm__(".Lm883_7334");
extern unsigned char L7100[] __asm__(".Lm883_7100");
extern unsigned char L6f38[] __asm__(".Lm883_6f38");

unsigned char *ValeRiver_GetEvents(void)
{
	if (__GetFlag(0x87a))
		return L7334;
	if (__GetFlag(0x815))
		return L7100;
	return L6f38;
}

extern void __CutsceneStart(void);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __MapActor_TurnToFaceActor(int, int, int);
extern void __Func_8093054(int, int);
extern void __CutsceneEnd(void);

void OvlFunc_883_2008adc(void) {
    __CutsceneStart();
    if (__GetFlag(0x815)) {
        __MessageID(0x11cc);
        __ActorMessage(0xa, 0);
    } else {
        __MessageID(0xf81);
        __MapActor_TurnToFaceActor(0xa, 0, 4);
        __Func_8093054(0xa, 0);
    }
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vale_river/ovl_30_c_c_a_c.s");


void OvlFunc_883_2008c60(void) {
    __CutsceneStart();
    if (__GetFlag(0x202)) {
        __MessageID(0xf68);
    } else {
        __MessageID(0xf69);
    }
    __ActorMessage(0x15, 0);
    __CutsceneEnd();
}

void OvlFunc_883_2008c9c(void) {
    __CutsceneStart();
    __MapActor_TurnToFaceActor(0, 0xa, 0x14);
    __MessageID(0x1c8d);
    __ActorMessage(0xa, 0);
    __SetFlag(0x81f);
    __CutsceneEnd();
}

void OvlFunc_883_2008cd0(void)
{
  unsigned int a;
  unsigned int b;
  unsigned int c;
  int d;
  int e;
  unsigned int f;
  unsigned int g;
  unsigned int h;
  unsigned int i;

  __CutsceneStart();

  a = 0xc0;
  __asm__ volatile ("" : "+r" (a));
  b = 0xc0;
  c = 0x80;
  b <<= 10;
  c <<= 9;
  a <<= 10;
  __Func_8012330(a, b, c);

  __WaitFrames(10);

  d = 1;
  __asm__ volatile ("" : "+r" (d));
  e = 1;
  e = -e;
  f = 0xe666;
  d = -d;
  __Func_8012330(d, e, f);

  __MessageID(0x1c9a);

  g = 0x11;
  __asm__ volatile ("" : "+r" (g));
  h = 0;
  i = 0x14;
  __ActorMessage_Wait(g, h, i);

  {
    register unsigned int p2 __asm__("r2") = 0x14;
    __asm__ volatile ("" : : "r" (p2));
    g = 0x11;
    __asm__ volatile ("" : "+r" (g));
    h = 0;
    __MapActor_Face(g, h, p2);
  }

  g = 0x11;
  __asm__ volatile ("" : "+r" (g));
  h = 0;
  __ActorMessage(g, h);

  __CutsceneEnd();
}

void OvlFunc_883_2008d2c(void) {
    __CutsceneStart();
    __Func_80925cc(0x13, 2);
    __CutsceneWait(0x14);
    __MapActor_Face(0x13, 0, 0x14);
    __MessageID(0x1c9d);
    __Func_8093054(0x13, 0);
    __SetFlag(0x307);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vale_river/ovl_30_c_c_c_a_a_a_a_c_c_a.s");

extern void OvlFunc_883_2008fec(void);

void OvlFunc_883_2008df0(void)
{
    if (__GetFlag(0x801) == 0) {
        OvlFunc_883_2008fec();
    } else {
        __PlaySound(0x7b);
        __Func_8091e9c(1);
    }
}

extern void __PlaySound(int);
extern void __Func_8091e9c(int);

void OvlFunc_883_2008e18(void) {
    __PlaySound(0x7b);
    __Func_8091e9c(3);
}


void OvlFunc_883_2008e2c(void) {
    __PlaySound(0x7b);
    __Func_8091e9c(4);
}


void OvlFunc_883_2008e40(void) {
    __PlaySound(0x7b);
    __Func_8091e9c(2);
}

INCLUDE_ASM("asm/maps/vale_river/ovl_30_c_c_c_a_a_a_c_c_c_a_a.s");

extern unsigned char L755a[] __asm__(".Lm883_755a");

void OvlFunc_883_2008fbc(void)
{
	__PlaySound(0x9e);
	{
		register unsigned char *rp __asm__("r0") = L755a;
		__asm__ volatile ("" : : "r" (rp));
		__Func_8010560(rp, 0x23, 0x4a);
	}
	{
		register unsigned int rq __asm__("r0") = 0;
		register unsigned int r1v __asm__("r1") = 0x66;
		__asm__ volatile ("" : : "r" (rq), "r" (r1v));
		__MapActor_TravelToAnim(rq, r1v, 0x4b6);
	}
	__Func_8091e9c(0xa);
}

INCLUDE_ASM("asm/maps/vale_river/ovl_30_c_c_c_a_a_a_c_c_c_a_c.s");

extern unsigned char L763c[] __asm__(".Lm883_763c");
extern unsigned char L76cc[] __asm__(".Lm883_76cc");
extern void OvlFunc_883_2009490(unsigned int, unsigned int);

void OvlFunc_883_2009454(void) {
    unsigned int r5;

    r5 = __MapActor_GetActor(0x16);
    if (__GetFlag(0x823) != 0) {
        short v;
        v = *(short *)((char *)r5 + 0x64);
        if (v == 1) {
            OvlFunc_883_2009490((unsigned int)L763c, (unsigned int)L76cc);
        }
    }
}

INCLUDE_ASM("asm/maps/vale_river/ovl_30_c_c_c_a_a_a_c_c_c_c_a.s");

extern unsigned char L7748[] __asm__(".Lm883_7748");
extern unsigned char L77c4[] __asm__(".Lm883_77c4");

void OvlFunc_883_2009554(void) {
    unsigned int r5;

    r5 = __MapActor_GetActor(0x16);
    if (__GetFlag(0x823) != 0) {
        if (*(short *)((char *)r5 + 0x64) == 2) {
            OvlFunc_883_2009490(L7748, L77c4);
        }
    }
}


void OvlFunc_883_2009590(void) {
    unsigned int r5;
    unsigned int v0;
    short v1;

    r5 = __MapActor_GetActor(0x16);
    v0 = __GetFlag(0x823);
    if (v0 != 0) {
        v1 = *(short *)((char *)r5 + 0x64);
        if (v1 == 1) {
            OvlFunc_883_2009490((unsigned int)L7748, (unsigned int)L76cc);
        } else if (v1 == 2) {
            OvlFunc_883_2009490((unsigned int)L7748, (unsigned int)L77c4);
        }
    }
}

INCLUDE_ASM("asm/maps/vale_river/ovl_30_c_c_c_a_a_a_c_c_c_c_c_c.s");

extern void __Func_8096fb0(int a, int b);

void OvlFunc_883_200d594(void) {
    __Func_8096fb0(0x8c, 0);
}

extern void __Func_8097194(void);

void OvlFunc_883_200d5a4(void) {
    __Func_8097194();
}


void OvlFunc_883_200d5b0(void) {
    __MapActor_GetActor(1);
    OvlFunc_883_200dc5c();
}


void OvlFunc_883_200d5c0(void) {
    __MapActor_GetActor(0);
    OvlFunc_883_200dc5c();
}


void OvlFunc_883_200d5d0(void) {
    __MapActor_GetActor(9);
    OvlFunc_883_200dc98();
}


void OvlFunc_883_200d5e0(void) {
    __MapActor_GetActor(0x17);
    OvlFunc_883_200dc98();
}


void OvlFunc_883_200d5f0(void) {
    __MapActor_GetActor(0x18);
    OvlFunc_883_200dc98();
}


void OvlFunc_883_200d600(void) {
    __MapActor_GetActor(0x19);
    OvlFunc_883_200dc98();
}

/* Cluster OvlFunc_883_200d610..OvlFunc_883_200d610 extracted from goldensun/asm/overlays/rom_799abc/ovl_30_a_a_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_799abc/ovl_30_a_a_a_a.o and asm/overlays/rom_799abc/ovl_30_a_a_a_c.o in
 * goldensun/overlays/rom_799abc/overlay.ld.
 */

int OvlFunc_883_200d610(int *a, int *b)
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

INCLUDE_ASM("asm/maps/vale_river/ovl_30_c_c_c_a_c_c_c_c_c_c_c_c.s");

extern void OvlFunc_883_200d64c(unsigned char *arg, int a, int b, int c);

unsigned int OvlFunc_883_200d72c(unsigned char *arg0) {
    int r1;
    int r2;

    r1 = __MapActor_GetActor(0);
    r2 = *(int *)((char *)arg0 + 0x38);
    if (r2 == (0x80 << 24)) {
        if (*(int *)((char *)arg0 + 0x40) == r2) {
            return 0;
        }
    }
    OvlFunc_883_200d64c(arg0, r1, 0x12, 0);
    return 0;
}

INCLUDE_ASM("asm/maps/vale_river/ovl_30_c_c_c_c_a.s");

extern void __vec3_translate(unsigned int a, unsigned int b, unsigned int *c);

void OvlFunc_883_200d8f0(unsigned int *arg0, unsigned int arg1, unsigned int arg2) {
    unsigned int v[3];

    if (arg0 != (unsigned int *)0) {
        v[0] = arg0[2];
        v[1] = arg0[3];
        v[2] = arg0[4];
        __vec3_translate(arg1, arg2, v);
        __Actor_TravelTo((unsigned int)arg0, v[0], v[1], v[2]);
    }
}

INCLUDE_ASM("asm/maps/vale_river/ovl_30_c_c_c_c_c_a_a.s");

extern unsigned int iwram_3001e40;

void OvlFunc_883_200da08(void) {
    if ((iwram_3001e40 & 0xf) == 0)
        __PlaySound(0x83);
}

void OvlFunc_883_200da24(void)
{
  __CutsceneStart();
 do { { int a = 0xee4; int b = 1; __Func_801776c(a, b); } } while (0);
  __CutsceneEnd();
}

void OvlFunc_883_200da40(void)
{
    int flag106;
    int f;

    f = 0x241;
    __asm__ ("" : "+r" (f));
    if (__GetFlag(f) != 0) {
        flag106 = __GetFlag(0x106);
        if (flag106 == 0) {
            ((unsigned char *)__MapActor_GetActor(0x16))[0x5b] = flag106;
            f = 0x241;
            __asm__ ("" : "+r" (f));
            __ClearFlag(f);
        }
    } else {
        if (__GetFlag(0x106) != 0) {
            ((unsigned char *)__MapActor_GetActor(0x16))[0x5b] = 1;
            f = 0x241;
            __asm__ ("" : "+r" (f));
            __SetFlag(f);
        }
    }
}

INCLUDE_ASM("asm/maps/vale_river/ovl_30_c_c_c_c_c_a_c_c_a_c.s");

int OvlFunc_883_200dae0(int *actor)
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

INCLUDE_ASM("asm/maps/vale_river/ovl_30_c_c_c_c_c_a_c_c_c.s");

extern void __Actor_SetColorswap(unsigned int arg0, unsigned int arg1);
extern void OvlFunc_883_200dd68(unsigned int arg0);

void OvlFunc_883_200dc20(unsigned int arg0)
{
    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        OvlFunc_883_200dd68(arg0);
    }
}

extern volatile unsigned int iwram_3001e40__a2 __asm__("iwram_3001e40");
extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);

void OvlFunc_883_200dc5c(unsigned int arg0)
{
    if (iwram_3001e40__a2 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40__a2 >> 1, 6));
    }
    if ((iwram_3001e40__a2 & 0xf) == 0) {
        OvlFunc_883_200dd68(arg0);
    }
}

/* Cluster OvlFunc_883_200dc98..OvlFunc_883_200dc98 extracted from goldensun/asm/overlays/rom_787e04/ovl_30_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_787e04/ovl_30_c_a.o and asm/overlays/rom_787e04/ovl_30_c_c.o in
 * goldensun/overlays/rom_787e04/overlay.ld.
 */
extern volatile unsigned int iwram_3001e40__a3 __asm__("iwram_3001e40");

void OvlFunc_883_200dc98(int arg0)
{
    if (iwram_3001e40__a3 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40__a3 >> 1, 6));
    }
}

INCLUDE_ASM("asm/maps/vale_river/ovl_30_c_c_c_c_c_c_c.s");
