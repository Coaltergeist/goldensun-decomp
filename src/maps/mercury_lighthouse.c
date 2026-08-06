// fakematch
/* rom_7ac2d8 (overlay file 924): consolidated TU — mercury_lighthouse map overlay. */

#include "nonmatching.h"

/* auto void-veneer protos (add_void_protos.py) */
extern void __ActorMessage_Wait();
extern void __Actor_SetAnim();
extern void __Actor_SetScript();
extern void __Actor_WaitMovement();
extern void __ClearFlag();
extern void __CutsceneEnd();
extern void __CutsceneStart();
extern void __CutsceneWait();
extern void __Func_801776c();
extern void __Func_8019908();
extern void __Func_808f1c0();
extern void __MapActor_DoAnim();
extern void __MapActor_PlayPendingSound();
extern void __MessageID();
extern void __PlaySound();
extern void __SetFlag();




extern int OvlFunc_924_200858c();
extern void OvlFunc_924_200d578();
extern void OvlFunc_924_200a2c4();

/* Cluster OvlFunc_924_2008314..OvlFunc_924_2008314 extracted from goldensun/asm/overlays/rom_799abc/ovl_30_a_a_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_799abc/ovl_30_a_a_a_a.o and asm/overlays/rom_799abc/ovl_30_a_a_a_c.o in
 * goldensun/overlays/rom_799abc/overlay.ld.
 */
extern int Func_8000948(int);

int OvlFunc_924_2008314(int *a, int *b)
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

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_314_a_c_a.s");

extern unsigned int L5d50[] __asm__(".Lm924_5d50");
extern int L5d90[] __asm__(".Lm924_5d90");
extern void *OvlFunc_924_2008350(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_924_200858c(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L5d50[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_924_2008350(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L5d90;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L5d50[idx];
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

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_314_a_c_c_a.s");

extern int L5da8[] __asm__(".Lm924_5da8");
extern void *OvlFunc_924_2008630(int *, void *, void *);

int OvlFunc_924_2008758(void *arg0)
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
    obj = OvlFunc_924_2008630(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = L5da8[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L5da8[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = L5da8[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L5da8[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L5d50[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L5d50[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (L5da8[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (L5da8[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L5d50[dir] & 0xffff0000;
        cur[2] += L5d50[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L5d50[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern unsigned char iwram_3001e70[];
extern int L5d50__a2[] __asm__(".Lm924_5d50");
extern void OvlFunc_924_2008528(int, int, int, int, int, int);
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

void OvlFunc_924_20088ec(struct Pk arg)
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
    t1 = L5da8[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L5da8[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L5da8[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L5da8[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (L5da8[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (L5da8[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_924_2008528(0, vb[0], vb[2], w, h, 0);
    __MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_924_200858c;
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
    __MapActor_TravelBy(0, (short)(L5d50__a2[dir] >> 16) / 2, (short)(L5d50__a2[dir]) / 2);
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
    x1 += L5da8[arg.a << 2] << 16;
    x2 += L5da8[(arg.a << 2) + 1] << 16;
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
    OvlFunc_924_2008528(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_924_2008528(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (L5da8[arg.a << 2] << 16);
    u2 = ap[2] + (L5da8[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_924_2008528(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_314_a_c_c_c_c.s");

extern void __Func_8091f14(int a, int b);

void OvlFunc_924_2008cc0(void) {
    __Func_8091f14(12, 21);
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_314_c.s");

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_d58_a.s");

/* OvlFunc_924_2008dfc  [asm/overlays/rom_7ac2d8/ovl_d58.s]
 * Zero 7 palette u16s walking down from 0x50000de. ROM has a POOLED zero
 * (ldr r1,=0) and the early branch-over-pool; same artifact family as
 * Func_80b09fc. Byte-identical twin: OvlFunc_923_2008e3c (keep in sync).
 */

void OvlFunc_924_2008dfc(void)
{
    unsigned int i = 0;
    unsigned int j = 0;

    do {
        i++;
        *(unsigned short *)(0x50000de - j * 2) = 0;
        j++;
    } while (i <= 6);
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_d58_c.s");

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_e20_a.s");

int MercuryLighthouse_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gScript_883__0200e614[];

void *MercuryLighthouse_GetExits(void) {
    return (void *)gScript_883__0200e614;
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_e20_c_c_a.s");

extern void OvlFunc_924_200d900(void);

void OvlFunc_924_2008ee4(void) {
    OvlFunc_924_200d900();
}


void OvlFunc_924_2008ef0(void) {
    OvlFunc_924_200d578();
}

extern void OvlFunc_924_200d5c0(void);

void OvlFunc_924_2008efc(void) {
    OvlFunc_924_200d5c0();
}

extern void OvlFunc_924_200d458(void);

void OvlFunc_924_2008f08(void) {
    OvlFunc_924_200d458();
}

void OvlFunc_924_2008f14(void)
{
  int r4;
 do { __CutsceneStart(); r4 = 0x1637; } while (0);
  __Func_801776c(r4, 1);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_e20_c_c_c_c_c_c_c.s");

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_f84_a_a.s");

extern int *iwram_3001ebc;
extern int OvlFunc_924_2008f84(int);

void OvlFunc_924_2009060(void) {
    int *r3;
    short r0;

    r3 = (int *)((char *)iwram_3001ebc + (0xb6 << 1));
    r0 = *(short *)r3;
    OvlFunc_924_2008f84(r0 - 0x32);
}

extern int iwram_3001ebc__a1 __asm__("iwram_3001ebc");

void OvlFunc_924_2009080(void) {
    int *r3;
    short r0;

    r3 = (int *)iwram_3001ebc__a1;
    r0 = *(short *)((char *)r3 + 0x16c);
    OvlFunc_924_2008f84(r0 - 0x32);
}

extern unsigned int iwram_3001ebc__a2 __asm__("iwram_3001ebc");

void OvlFunc_924_20090a0(void) {
    unsigned int r3;
    short val;

    r3 = iwram_3001ebc__a2;
    r3 += 0xb6 << 1;
    val = *(short *)r3;
    OvlFunc_924_2008f84(val - 0x32);
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_f84_a_c_c_c_a.s");

extern void OvlFunc_924_20083a8(void);
extern void OvlFunc_924_2009420(void);

void OvlFunc_924_2009408(void) {
    __CutsceneStart();
    OvlFunc_924_20083a8();
    __CutsceneEnd();
    OvlFunc_924_2009420();
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_f84_a_c_c_c_c.s");

extern void OvlFunc_924_200bb24(unsigned int a, int b, int c);

void OvlFunc_924_2009790(void) {
    OvlFunc_924_200bb24(0x2b20000, 0, 0x92 << 18);
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_f84_c_a.s");

extern void OvlFunc_924_2009bf0(void);

void OvlFunc_924_2009bd8(void) {
    __CutsceneStart();
    OvlFunc_924_20083a8();
    __CutsceneEnd();
    OvlFunc_924_2009bf0();
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_f84_c_c.s");

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_1db4.s");

#include "task.h"
#include "actor.h"

extern u32 __Random(); // Random()

void OvlFunc_924_200a2c4(void) {
    struct Actor* actor = __MapActor_GetActor(9);
    OvlFunc_924_200bb24(actor->pos.x, actor->pos.y + (((__Random() * 4) >> 0x10) << 0x10), actor->pos.z);
}

s32 OvlFunc_924_200a2ec(void) {
    u32 prio = 0xC80;
    __StartTask(OvlFunc_924_200a2c4, prio);
    return 0;
}

unsigned int OvlFunc_924_200a304(void) {
    __StopTask((void *)OvlFunc_924_200a2c4);
    return 0;
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_22c4_c_a.s");

extern void OvlFunc_924_200a51c(void);

void OvlFunc_924_200a504(void) {
    __CutsceneStart();
    OvlFunc_924_20083a8();
    OvlFunc_924_200a51c();
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_22c4_c_c_a.s");

void OvlFunc_924_200a600(void)
{
  int new_var2;
  int val;
  int new_var;
  int actor;
  __CutsceneStart();
  actor = (int) __MapActor_GetActor(20);
  val = *((int *) (actor + 8));
  if (val <= (0 - 1))
  {
    val += 0xfffff;
  }
  val >>= 20;
  if (val == 28)
  {
    __SetFlag(0xd2 << 2);
    new_var = 0x1f;
    new_var2 = 20;
    __Func_8010704(0x1d, new_var2, 1, 1, new_var, new_var2);
  }
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_22c4_c_c_c_a.s");

void OvlFunc_924_200a814(void)
{
  __CutsceneStart();
  __MapActor_DoAnim(3, 4);
  __CutsceneWait(0x14);
  __MessageID(0x157d);
 do { } while (0);
  __ActorMessage_Wait(3, 0, 0x14);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_22c4_c_c_c_c.s");

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_2dcc.s");

void OvlFunc_924_200b5b8(void)
{
    __CutsceneStart();
    {
        unsigned int rq = 0;
        __MapActor_SetAnim(rq, 1);
    }
    {
        unsigned int rm = 0x1576;
        __Func_801776c(rm, 1);
    }
    __CutsceneEnd();
}

void OvlFunc_924_200b5dc(void)
{
	__CutsceneStart();
	{
		unsigned int rq = 0;
		__MapActor_SetAnim(rq, 1);
	}
	{
		unsigned int rm = 0x953;
		__Func_801776c(rm, 1);
	}
	__CutsceneEnd();
}

extern unsigned char *iwram_3001ebc__a3 __asm__("iwram_3001ebc");

void OvlFunc_924_200b600(void) {
    int r0;
    unsigned char *b;
    unsigned short *addr;
    unsigned short v;

    __CutsceneStart();
    __MapActor_SetAnim(0, 1);
    r0 = __GetFlag(0x881);
    if (r0 == 0) {
        __Func_801776c(0x1636, 1);
    } else {
        __Func_801776c(0x1635, 1);
    }
    r0 = __CheckPartyItem(0xb9);
    if (r0 != -1) {
        b = iwram_3001ebc__a3;
        addr = (unsigned short *)(b + (0xb9 << 1));
        v = 1;
        *addr = v;
    }
    __CutsceneEnd();
}

extern void OvlFunc_924_200cf90(int, int);

void OvlFunc_924_200b660(void)
{
    unsigned long long tull;
    unsigned long v1;
    unsigned short t2;
    int i;

    __CutsceneStart();
    __PlaySound(0x53);

    tull = 0xb8;
    do { tull = (unsigned long) tull; } while (0);
    v1 = tull;
    __Func_808f1c0((int) v1, 3);

    OvlFunc_924_200cf90(0xb9, 0xb8);
    i = __CheckPartyItem(0xb8);
    __Func_8019908(i, 1);

    t2 = 0xb8;
    do { t2 = (unsigned short) t2; } while (0);
    __Func_8019908(t2, 2);

    __Func_801776c(0x1638, 1);
    __SetFlag(0x200);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_35b8_a_a_c.s");

unsigned int OvlFunc_924_200d1f0(unsigned int arg0)
{
    unsigned short *p;
    int v;

    p = (unsigned short *)((char *)arg0 + 0x64);
    *p = *p + 1;
    v = (short)*p;
    if (v > 0x10)
        return 0;
    *(unsigned int *)((char *)arg0 + 0x18) = (v * 3) << 10;
    *(unsigned int *)((char *)arg0 + 0x1c) = (v * 3) << 10;
    return 1;
}
unsigned int OvlFunc_924_200d218(unsigned int arg0)
{
    short *p;
    int v;

    p = (short *)(arg0 + 0x64);
    *p = *p + 1;
    if ((int)((*p) << 16) >> 16 > 0x10)
        return 0;
    v = (((int)((*p) << 16) >> 16) << 11) + (0x80 << 9);
    *(unsigned int *)(arg0 + 0x18) = v;
    *(unsigned int *)(arg0 + 0x1c) = v;
    return 1;
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_35b8_a_c_a.s");

extern unsigned int iwram_3001edc;
extern unsigned int gScript_924__0200de2c;

void OvlFunc_924_200d578(void)
{
    unsigned int r6;
    unsigned int r5;

    r6 = *(unsigned int *)*(unsigned int *)&iwram_3001edc;
    if (*(unsigned int *)r6 != 0) {
        *(unsigned int *)r6 = 0;
        __ClearFlag(0x161);
        r5 = *(unsigned int *)((char *)r6 + 0x14);
        if (r5 != 0) {
            unsigned short v = 0;
            *(unsigned short *)((char *)r5 + 0x64) = v;
            __Actor_SetScript(r5, &gScript_924__0200de2c);
            __Actor_SetAnim(r5, 7);
            *(unsigned int *)((char *)r6 + 0x14) = 0;
        }
    }
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_35b8_a_c_c.s");

extern void *__galloc_ewram(int a, int b);
extern void __DeleteActor(void *p);

void OvlFunc_924_200d948(void) {
    unsigned char *p;
    unsigned char *q;
    void *v;

    p = (unsigned char *)__galloc_ewram(0x23, 4);
    if (p == (unsigned char *)0)
        return;
    q = *(unsigned char **)p;
    v = *(void **)(q + 0x14);
    if (v == (void *)0)
        return;
    __DeleteActor(v);
    *(void **)(q + 0x14) = (void *)0;
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_35b8_c.s");
