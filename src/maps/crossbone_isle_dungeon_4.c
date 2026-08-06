// fakematch
/* rom_7d30e0 (overlay file 948): consolidated TU — crossbone_isle_dungeon_4 map overlay. */

#include "nonmatching.h"

extern int OvlFunc_948_20082a8();
extern void OvlFunc_948_2009c28();
extern void OvlFunc_948_2009d64();
extern void OvlFunc_948_2009e54();
extern void OvlFunc_948_2009e74();

/* Cluster OvlFunc_948_2008030..OvlFunc_948_2008030 extracted from goldensun/asm/overlays/rom_799abc/ovl_30_a_a_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_799abc/ovl_30_a_a_a_a.o and asm/overlays/rom_799abc/ovl_30_a_a_a_c.o in
 * goldensun/overlays/rom_799abc/overlay.ld.
 */
extern int Func_8000948(int);

int OvlFunc_948_2008030(int *a, int *b)
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

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/ovl_30_a_a_a_c_a.s");

extern unsigned int L2644[] __asm__(".Lm948_2644");
extern int L2684[] __asm__(".Lm948_2684");
extern void *OvlFunc_948_200806c(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_948_20082a8(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L2644[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_948_200806c(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L2684;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L2644[idx];
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

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/ovl_30_a_a_a_c_c_a.s");

extern int L269c[] __asm__(".Lm948_269c");
extern void *OvlFunc_948_200834c(int *, void *, void *);

int OvlFunc_948_2008474(void *arg0)
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
    obj = OvlFunc_948_200834c(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = L269c[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L269c[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = L269c[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L269c[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L2644[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L2644[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (L269c[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (L269c[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L2644[dir] & 0xffff0000;
        cur[2] += L2644[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L2644[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern unsigned char iwram_3001e70[];
extern int L2644__a2[] __asm__(".Lm948_2644");
extern void OvlFunc_948_2008244(int, int, int, int, int, int);
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

void OvlFunc_948_2008608(struct Pk arg)
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
    t1 = L269c[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L269c[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L269c[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L269c[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (L269c[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (L269c[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_948_2008244(0, vb[0], vb[2], w, h, 0);
    __MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_948_20082a8;
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
    __MapActor_TravelBy(0, (short)(L2644__a2[dir] >> 16) / 2, (short)(L2644__a2[dir]) / 2);
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
    x1 += L269c[arg.a << 2] << 16;
    x2 += L269c[(arg.a << 2) + 1] << 16;
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
    OvlFunc_948_2008244(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_948_2008244(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (L269c[arg.a << 2] << 16);
    u2 = ap[2] + (L269c[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_948_2008244(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/ovl_30_a_a_a_c_c_c_c.s");

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_948_20089dc(void) {
    __Func_80955b0(15, 0, 6);
}

void OvlFunc_948_20089ec(void) {}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/ovl_30_a_c.s");

int CrossboneIsleDungeon4_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200a970[];

unsigned int CrossboneIsleDungeon4_GetExits(void) {
    return (unsigned int)gOvl_0200a970;
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/ovl_30_c_a_c_a.s");

void OvlFunc_948_2008aa4(void) {}

int OvlFunc_948_2008aa8(int arg0) {
    int r5, r2, r3;
    r5 = arg0;
    r2 = __MapActor_GetActor(0);
    r3 = *(int *)((char *)r5 + 0x10);
    *(short *)((char *)r5 + 6) = __atan2(*(int *)((char *)r2 + 0x10) - r3, *(int *)((char *)r2 + 8) - *(int *)((char *)r5 + 8));
    return 0;
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/ovl_30_c_a_c_c_a_a_a_c_a.s");

typedef struct { unsigned char _bytes[704]; } GlobalState;
typedef struct { unsigned char _pad[0x30]; int speed; int accel; } ActorT;
extern unsigned char iwram_3001ebc[];
extern GlobalState gState;
extern unsigned char L2808[] __asm__(".Lm948_2808");

void OvlFunc_948_2008e50(void)
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
    if (__GetFlag(0x9ca) != 0) {
        gs = (unsigned char *)&gState;
        gs += 0x24a;
        if (*(short *)gs != 0xf) {
            p = base + (0xb6 << 1);
            r5 = *(short *)p;
            p1 = (ActorT *)__MapActor_GetActor(0xf);
            p2 = (ActorT *)__MapActor_GetActor(0);
            p1->speed = p2->speed;
            p1 = (ActorT *)__MapActor_GetActor(0xf);
            p2 = (ActorT *)__MapActor_GetActor(0);
            p1->accel = p2->speed;
            tbl = L2808;
            idx = (r5 - 0x1e) << 3;
            idx2 = idx + 4;
            __MapActor_TravelToAnim(0xf, *(int *)(tbl + idx), *(int *)(tbl + idx2));
        }
    }
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/ovl_30_c_a_c_c_a_a_a_c_c.s");

extern void __Func_8093c00(void);

void OvlFunc_948_2008f34(void) {
    __Func_8093c00();
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/ovl_30_c_a_c_c_a_a_c_a.s");

extern void OvlFunc_948_20090b8(int);

void OvlFunc_948_2009108(void) {
    OvlFunc_948_20090b8(0);
}


void OvlFunc_948_2009114(void) {
    OvlFunc_948_20090b8(1);
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/ovl_30_c_a_c_c_a_a_c_c_c_a_a.s");

void OvlFunc_948_2009198(void)
{
  int new_var;
  int new_var6;
  int new_var4;
  int new_var3;
  int new_var5;
  unsigned char new_var2;
  new_var = 0xcc << 17;
  ;
  new_var5 = 0xc2 << 18;
  new_var6 = 0x19;
  new_var4 = 0x30;
  __Func_80105d4(new_var6, 0x2d, 1, 2, 0x19, new_var4);
  new_var3 = 0xeeb;
  if (__GetFlag(new_var3) == 0)
  {
    __MapActor_SetPos(0xc, new_var, new_var5);
  }
  __CutsceneWait(1);
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/ovl_30_c_a_c_c_a_a_c_c_c_a_c_a.s");

void OvlFunc_948_2009204(void)
{
  unsigned long new_var2;
  unsigned long long new_var;
  unsigned long new_var3;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  new_var = 0xf4;
 do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __Func_808f1c0(new_var2, 3);
  new_var4 = 0;
 do { new_var4 = (unsigned long) new_var4; } while (0);
  new_var3 = new_var4;
  __MapActor_SetAnim(new_var3, 1);
  __Func_8091a58(0xf4, 0);
  new_var6 = 8;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __MapActor_SetPos(new_var5, 0, 0);
  __SetFlag(0xee7);
}

void OvlFunc_948_2009238(void)
{
  unsigned long new_var2;
  unsigned long long new_var;
  unsigned long new_var3;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  new_var = 0xf4;
 do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __Func_808f1c0(new_var2, 3);
  new_var4 = 0;
 do { new_var4 = (unsigned long) new_var4; } while (0);
  new_var3 = new_var4;
  __MapActor_SetAnim(new_var3, 1);
  __Func_8091a58(0xf4, 0);
  new_var6 = 9;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __MapActor_SetPos(new_var5, 0, 0);
  __SetFlag(0xee8);
}

void OvlFunc_948_200926c(void)
{
  unsigned long new_var2;
  unsigned long long new_var;
  unsigned long new_var3;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  new_var = 0xf4;
 do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __Func_808f1c0(new_var2, 3);
  new_var4 = 0;
 do { new_var4 = (unsigned long) new_var4; } while (0);
  new_var3 = new_var4;
  __MapActor_SetAnim(new_var3, 1);
  __Func_8091a58(0xf4, 0);
  new_var6 = 0xa;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __MapActor_SetPos(new_var5, 0, 0);
  __SetFlag(0xee9);
}

void OvlFunc_948_20092a0(void)
{
  unsigned long new_var2;
  unsigned long long new_var;
  unsigned long new_var3;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  new_var = 0xf4;
 do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __Func_808f1c0(new_var2, 3);
  new_var4 = 0;
 do { new_var4 = (unsigned long) new_var4; } while (0);
  new_var3 = new_var4;
  __MapActor_SetAnim(new_var3, 1);
  __Func_8091a58(0xf4, 0);
  new_var6 = 0xb;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __MapActor_SetPos(new_var5, 0, 0);
  __SetFlag(0xeea);
}

void OvlFunc_948_20092d4(void)
{
  unsigned long new_var2;
  unsigned long long new_var;
  unsigned long new_var3;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  new_var = 0xf3;
 do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __Func_808f1c0(new_var2, 3);
  new_var4 = 0;
 do { new_var4 = (unsigned long) new_var4; } while (0);
  new_var3 = new_var4;
  __MapActor_SetAnim(new_var3, 1);
  __Func_8091a58(0xf3, 0);
  new_var6 = 0xc;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __MapActor_SetPos(new_var5, 0, 0);
  __SetFlag(0xeeb);
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/ovl_30_c_a_c_c_a_a_c_c_c_a_c_c_c_c_c_c.s");

extern void OvlFunc_948_200952c(int);

void OvlFunc_948_20095cc(void) {
    OvlFunc_948_200952c(0);
}


void OvlFunc_948_20095d8(void) {
    OvlFunc_948_200952c(1);
}


void OvlFunc_948_20095e4(void) {
    OvlFunc_948_200952c(2);
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/ovl_30_c_a_c_c_a_a_c_c_c_c_c_c.s");

/* OvlFunc_948_20098c0; REG_BLDALPHA (0x04000052) = 0xd00.
 * Value synthesized (0xd0<<4). Value var declared FIRST so it lands in r2 and
 * the address pointer in r3 (matching strh r2,[r3]). */

void OvlFunc_948_20098c0(void) {
    unsigned short v = 0xd00;
    volatile unsigned short *p = (volatile unsigned short *)0x04000052;
    *p = v;
}

#define REG_BLDALPHA (*(volatile unsigned short *)0x04000052)

void OvlFunc_948_20098d0(void) {
    unsigned short value = 0x607;
    REG_BLDALPHA = value;
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/ovl_30_c_a_c_c_c.s");

void OvlFunc_948_2009980(void) {}

struct Actor948
{
unsigned char pad1[0x23];
unsigned char f23;
unsigned char pad2[0x55 - 0x23 - 1];
unsigned char f55;
};

void OvlFunc_948_2009984(void)
{
  struct Actor948 *actor;
  struct Actor948 *actor2;
  int s1;
  int s2;

  actor = (struct Actor948 *) __MapActor_GetActor(0xd);
  s1 = 0x28;
  s2 = 0x37;
  __Func_8010704(0x28, 0x36, 1, 1, s1, s2);
  if (actor != 0)
  {
    actor2 = (struct Actor948 *) __MapActor_GetActor(0xd);
    actor2->f55 = 0;
    actor->f23 = 2;
  }
  __SetFlag(0x200);
}

extern void OvlFunc_948_2009b60(void);

void OvlFunc_948_20099cc(void)
{
    unsigned char *p;
    p = __MapActor_GetActor(0);
    if (*(unsigned short *)(p + 6) == 0) {
        __Func_8093c00();
    } else {
        OvlFunc_948_2009b60();
    }
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/ovl_30_c_c_a_a_c_a.s");

void OvlFunc_948_2009a48(void) {
    void *r0;
    __Func_8010704(0x3a, 0x29, 1, 1, 0x2a, 0x2a);
    r0 = __MapActor_GetActor(8);
    *(unsigned char *)((char *)r0 + 0x23) = 2;
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/ovl_30_c_c_a_a_c_c_a.s");

extern void OvlFunc_948_2009bc4(void);

void OvlFunc_948_2009c28(void)
{
    unsigned char *p;
    int a, b;

    p = (unsigned char *)__MapActor_GetActor(9);
    b = *(int *)(p + 8) / 0x100000;
    a = *(int *)(p + 0x10) / 0x100000;
    if (b == 0x2d && a == 0x2b)
        OvlFunc_948_2009bc4();
}

extern void OvlFunc_948_20080c4(void);

void OvlFunc_948_2009c5c(void)
{
	OvlFunc_948_20080c4();
	OvlFunc_948_2009c28();
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/ovl_30_c_c_a_c_a.s");

extern void OvlFunc_948_2009c6c(void);
extern void OvlFunc_948_2009cf8(void);

void OvlFunc_948_2009d64(void) {
    OvlFunc_948_2009c6c();
    OvlFunc_948_20080c4();
    OvlFunc_948_2009cf8();
}

extern void __Func_8092708(int, int, int);

void OvlFunc_948_2009d78(void) {
    unsigned char *p;
    p = __MapActor_GetActor(0);
    if (*(unsigned short *)(p + 6) == (0x80 << 7)) {
        __Func_8092708(0, 6, 0);
    } else {
        OvlFunc_948_2009d64();
    }
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/ovl_30_c_c_c_a.s");

extern void OvlFunc_948_2009df8(void);

void OvlFunc_948_2009e54(void) {
    OvlFunc_948_2009df8();
}

extern void OvlFunc_948_2009da0(void);

void OvlFunc_948_2009e60(void) {
    OvlFunc_948_2009da0();
    OvlFunc_948_20080c4();
    OvlFunc_948_2009e54();
}


void OvlFunc_948_2009e74(void) {
    OvlFunc_948_2009df8();
}


void OvlFunc_948_2009e80(void) {
    OvlFunc_948_2009da0();
    OvlFunc_948_20080c4();
    OvlFunc_948_2009e74();
}

void OvlFunc_948_2009e94(void) {
    unsigned int r5;
    unsigned int r0;
    unsigned int r3;
    unsigned int r2;

    r5 = __MapActor_GetActor(0xe);
    r0 = __MapActor_GetActor(9);
    r3 = 0x80;
    r3 <<= 14;
    *(unsigned int *)((char *)r5 + 0xc) = r3;
    r3 = *(unsigned int *)((char *)r0 + 8);
    *(unsigned int *)((char *)r5 + 8) = r3;
    r2 = 0x80;
    r3 = *(unsigned int *)((char *)r0 + 0x10);
    r2 <<= 9;
    r3 += r2;
    *(unsigned int *)((char *)r5 + 0x10) = r3;
}

void OvlFunc_948_2009ec0(void) {
    unsigned int r4;
    unsigned int r3;
    unsigned int r2;
    unsigned int r1;

    r4 = __MapActor_GetActor(9);
    r3 = 0x80;
    r2 = *(unsigned int *)((char *)r4 + 0x10);
    r3 <<= 9;
    r1 = *(unsigned int *)((char *)r4 + 8);
    r2 += r3;
    __Func_808edac(0x6b, r1, r2);
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/ovl_30_c_c_c_c_c_c_c_c.s");
