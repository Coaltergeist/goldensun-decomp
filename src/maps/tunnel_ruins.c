/* rom_7ed0a0 (overlay file 964): consolidated TU — tunnel_ruins map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/tunnel_ruins/exports.s");

/* auto void-veneer protos (add_void_protos.py) */
extern void __Actor_SetAnim();
extern void __Actor_WaitMovement();
extern void __CutsceneEnd();
extern void __CutsceneStart();
extern void __CutsceneWait();
extern void __Func_8092950();
extern void __MapActor_PlayPendingSound();
extern void __PlaySound();




extern int OvlFunc_964_20082a8();
extern void OvlFunc_964_20099bc();
extern void OvlFunc_964_2009f70();

extern int Func_8000948(int);

int OvlFunc_964_2008030(int *a, int *b)
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

INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_200806c.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_20080c4.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2008244.s");

extern unsigned int L31f0[] __asm__(".Lm964_31f0");
extern int L3230[] __asm__(".Lm964_3230");
extern void *OvlFunc_964_200806c(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_964_20082a8(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L31f0[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_964_200806c(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L3230;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L31f0[idx];
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

INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_200834c.s");

extern int L3248[] __asm__(".Lm964_3248");
extern void *OvlFunc_964_200834c(int *, void *, void *);

int OvlFunc_964_2008474(void *arg0)
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
    obj = OvlFunc_964_200834c(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = L3248[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L3248[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = L3248[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L3248[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L31f0[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L31f0[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (L3248[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (L3248[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L31f0[dir] & 0xffff0000;
        cur[2] += L31f0[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L31f0[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern unsigned char iwram_3001e70[];
extern int L31f0__a2[] __asm__(".Lm964_31f0");
extern void OvlFunc_964_2008244(int, int, int, int, int, int);
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

void OvlFunc_964_2008608(struct Pk arg)
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
    t1 = L3248[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L3248[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L3248[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L3248[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (L3248[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (L3248[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_964_2008244(0, vb[0], vb[2], w, h, 0);
    __MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_964_20082a8;
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
    __MapActor_TravelBy(0, (short)(L31f0__a2[dir] >> 16) / 2, (short)(L31f0__a2[dir]) / 2);
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
    x1 += L3248[arg.a << 2] << 16;
    x2 += L3248[(arg.a << 2) + 1] << 16;
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
    OvlFunc_964_2008244(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_964_2008244(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (L3248[arg.a << 2] << 16);
    u2 = ap[2] + (L3248[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_964_2008244(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_20088c0.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_20089dc.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_20089f4.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2008a4c.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2008ab0.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2008ae8.s");

extern void __Actor_SetSpriteFlags();

unsigned int OvlFunc_964_2008cc0(void) {
    int x;
    __Actor_SetSpriteFlags(x, 0);
    return 0;
}

INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2008cd0.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2008dc8.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2008df4.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2008e20.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2008ec8.s");

extern void __WaitFrames(unsigned int a);

void OvlFunc_964_2008f10(unsigned int arg0, unsigned int arg1)
{
  int new_var;
  int *r6;
  int *r0p;
  int tmp;
  r6 = (int *) __MapActor_GetActor(arg0);
  r0p = (int *) __MapActor_GetActor(arg1);
  if (r6[4] <= r0p[4])
  {
    ;
    {
      int t2 = r6[2];
      r6[2] = r0p[2];
      r0p[2] = t2;
    }
    tmp = r0p[3];
    {
      int t2 = r6[3];
      r6[3] = tmp;
      r0p[3] = t2;
    }
    new_var = r0p[4];
    tmp = new_var;
    {
      int t2 = r6[4];
      r6[4] = tmp;
      r0p[4] = t2;
    }
    __WaitFrames(1);
  }
}

INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2008f4c.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2008fe8.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2009038.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2009068.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_20090c4.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_20091e0.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/TunnelRuins_GetEntrances.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/TunnelRuins_GetSpecialExits.s");

extern unsigned char gOvl_0200b85c[];

void *TunnelRuins_GetExits(void) {
    return (void *)gOvl_0200b85c;
}

INCLUDE_ASM("asm/maps/tunnel_ruins/TunnelRuins_GetActors.s");

extern void OvlFunc_964_20080c4(void);
extern void OvlFunc_964_200a3a0(void);

void OvlFunc_964_2009318(void)
{
  __CutsceneStart();
  {
    unsigned int t1 = 9;
    unsigned int t2 = 0x26;
    __Func_8010704(0x49, 0x26, 5, 5, t1, t2);
  }
  OvlFunc_964_20080c4();
  OvlFunc_964_200a3a0();
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2009348.s");

extern void OvlFunc_964_200a410(void);

void OvlFunc_964_2009374(void)
{
  __CutsceneStart();
  {
    unsigned int t1 = 0x1d;
    unsigned int t2 = 0x1e;
    __Func_8010704(0x5d, 0x1e, 6, 5, t1, t2);
  }
  OvlFunc_964_20080c4();
  OvlFunc_964_200a410();
  __CutsceneEnd();
}

extern void __Func_8092708(int a, int b, int c);

void OvlFunc_964_20093a4(void) {
    __Func_8092708(0, 6, 0);
}

INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_20093b4.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_20093e0.s");

extern int OvlFunc_964_2008cd0(unsigned int *);
extern void OvlFunc_964_20093e0(void);

void OvlFunc_964_2009424(void) {
    unsigned int args[3];
    unsigned char *base;

    base = __MapActor_GetActor(0);
    args[0] = *(unsigned int *)(base + 8);
    args[1] = *(unsigned int *)(base + 0xc);
    args[2] = *(unsigned int *)(base + 0x10) + 0x200000;
    if (OvlFunc_964_2008cd0(args) != 0) {
        OvlFunc_964_20093e0();
    }
}

INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2009458.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_20094ac.s");

extern void __SetFlag(int);

void OvlFunc_964_2009500(void) {
    __SetFlag(0x97 << 4);
}

extern void OvlFunc_964_2009348(void);

void OvlFunc_964_2009510(void)
{
    int *r0;
    r0 = __MapActor_GetActor(0);
    if ((*(int *)((char *)r0 + 8) >> 20) != 0x20 ||
        (*(int *)((char *)r0 + 0x10) >> 20) != 0x32)
        OvlFunc_964_2009348();
}

extern void OvlFunc_964_2008df4(void);

void OvlFunc_964_2009530(void)
{
    int *r0;
    r0 = __MapActor_GetActor(0);
    if ((*(int *)((char *)r0 + 8) >> 20) != 0x1e ||
        (*(int *)((char *)r0 + 0x10) >> 20) != 0x34)
        OvlFunc_964_2008df4();
}

INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2009550.s");

extern void OvlFunc_964_2009550(void);

void OvlFunc_964_20096f4(void) {
    __CutsceneStart();
    OvlFunc_964_20080c4();
    __CutsceneEnd();
    OvlFunc_964_2009550();
}

INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_200970c.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2009744.s");

extern void OvlFunc_964_2009744(void);

void OvlFunc_964_20098f8(void) {
    __CutsceneStart();
    OvlFunc_964_20080c4();
    __CutsceneEnd();
    OvlFunc_964_2009744();
}

extern unsigned char gScript_964__0200b3b8[];
extern void __MapActor_SetBehavior(int a, unsigned char *b);

void OvlFunc_964_2009910(void) {
    __MapActor_SetBehavior(0x13, gScript_964__0200b3b8);
}


void OvlFunc_964_2009924(void) {
    __SetFlag(0x202);
    OvlFunc_964_2009744();
}

void OvlFunc_964_2009938(void)
{
  unsigned char *p;
  unsigned long new_var2;
  unsigned long long new_var;
  unsigned long new_var3;
  unsigned long new_var4;
  new_var = 0x15;
 do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __MapActor_SetAnim(new_var2, 1);
  new_var4 = 0x15;
 do { new_var4 = (unsigned short) new_var4; } while (0);
  new_var3 = new_var4;
  __Func_8092950(new_var3, 0);
  __MapActor_SetAnim(0x15, 2);
  p = __MapActor_GetActor(0x15);
  p[0x23] &= 0xfd;
  __SetFlag(0x201);
}

extern void __CutsceneStart(void);
extern int __GetFlag(int id);
extern void __Func_801776c(int id, int b);
extern void __CutsceneEnd(void);

void OvlFunc_964_2009970(void) {
    __CutsceneStart();
    __MapActor_SetAnim(0, 1);
    if (__GetFlag(0x982) != 0 || __GetFlag(0x983) != 0) {
        __Func_801776c(0x268a, 1);
    } else {
        __Func_801776c(0x2689, 1);
    }
    __CutsceneEnd();
}


void OvlFunc_964_20099bc(void)
{
	__CutsceneStart();
	__CutsceneEnd();
}


void OvlFunc_964_20099cc(void) {
    __CutsceneStart();
    OvlFunc_964_20080c4();
    __CutsceneEnd();
    OvlFunc_964_20099bc();
}

typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_964__0200b3b8__a1[13] __asm__("gScript_964__0200b3b8");
extern void *OvlFunc_964_2008fe8;

void OvlFunc_964_20099e4(void)
{
    void *r4;
    __MapActor_SetBehavior(8, gScript_964__0200b3b8__a1);
    __SetFlag(0x203);
    r4 = __MapActor_GetActor(9);
    *(void **)((char *)r4 + 0x6c) = &OvlFunc_964_2008fe8;
}

INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2009a10.s");


unsigned int OvlFunc_964_2009a98(unsigned int arg0) {
    unsigned int r5;
    unsigned int r3;
    unsigned int r2;
    unsigned int r0;

    r5 = arg0;
    r3 = r5;
    r3 += 0x64;
    r2 = 0;
    r0 = __MapActor_GetActor(*(short *)((char *)r3 + r2));
    r2 = 0x80;
    r3 = *(unsigned int *)((char *)r0 + 0xc);
    r2 <<= 13;
    r3 += r2;
    *(unsigned int *)((char *)r5 + 0xc) = r3;
    return 0;
}

INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2009abc.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2009c2c.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2009d04.s");


void OvlFunc_964_2009f5c(void) {
    __CutsceneStart();
    OvlFunc_964_20080c4();
    __CutsceneEnd();
}

extern void __ClearFlag(int);
extern void OvlFunc_964_200a52c(void);

void OvlFunc_964_2009f70(void) {
    void *p;
    __CutsceneStart();
    p = __MapActor_GetActor(0x11);
    if ((*(int *)((char *)p + 8) >> 20) == 0x2d) {
        __SetFlag(0x974);
    } else {
        __ClearFlag(0x974);
    }
    p = __MapActor_GetActor(0x12);
    if ((*(int *)((char *)p + 8) >> 20) == 0x2e) {
        __SetFlag(0x975);
    } else {
        __ClearFlag(0x975);
    }
    OvlFunc_964_200a52c();
    __CutsceneEnd();
}


void OvlFunc_964_2009fc4(void) {
    __CutsceneStart();
    OvlFunc_964_20080c4();
    OvlFunc_964_2009f70();
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_2009fdc.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_200a040.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_200a0a4.s");

extern void OvlFunc_964_200a0a4(void);

void OvlFunc_964_200a300(void)
{
  __CutsceneStart();
  {
    unsigned int t1 = 0x13;
    unsigned int t2 = 0x2d;
    __Func_8010704(0x53, 0x2d, 0xb, 8, t1, t2);
  }
  OvlFunc_964_20080c4();
  OvlFunc_964_200a0a4();
  __CutsceneEnd();
}

void OvlFunc_964_200a330(void)
{
	__CutsceneStart();
	{
		unsigned int rq = 0;
		__MapActor_SetAnim(rq, 1);
	}
	{
		unsigned int rm = 0x268b;
		__Func_801776c(rm, 1);
	}
	__CutsceneEnd();
}

void OvlFunc_964_200a354(void)
{
  int new_var2;
  int r4;
  int new_var;
  __CutsceneStart();
 do { new_var2 = 0x953; } while (0);
  r4 = new_var2;
  new_var = r4;
  __Func_801776c(new_var, 1);
  __CutsceneEnd();
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_ac[];
extern unsigned char Lm964_3c0c[] __asm__(".Lm964_3c0c");
extern unsigned char Lm964_3ef4[] __asm__(".Lm964_3ef4");

int TunnelRuins_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_ac) return (int)Lm964_3c0c;
    return (int)Lm964_3ef4;
}
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_200a3a0.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_200a410.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_200a480.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/OvlFunc_964_200a52c.s");
INCLUDE_ASM("asm/maps/tunnel_ruins/TunnelRuins_MapInit.s");

INCLUDE_ASM("asm/maps/tunnel_ruins/imports.s");
