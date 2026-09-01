/* rom_7d30e0 (overlay file 948): consolidated TU — crossbone_isle_dungeon_4 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/exports.s");

extern int OvlFunc_948_20082a8();
extern void OvlFunc_948_2009c28();
extern void OvlFunc_948_2009d64();
extern void OvlFunc_948_2009e54();
extern void OvlFunc_948_2009e74();

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

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_200806c.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_20080c4.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2008244.s");

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

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_200834c.s");

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
    __MapActor_SetSpeed(0, sp1, sp2);
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

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_20088c0.s");

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_948_20089dc(void) {
    __Func_80955b0(15, 0, 6);
}

void OvlFunc_948_20089ec(void) {}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/CrossboneIsleDungeon4_GetEntrances.s");

int CrossboneIsleDungeon4_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200a970[];

unsigned int CrossboneIsleDungeon4_GetExits(void) {
    return (unsigned int)gOvl_0200a970;
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/CrossboneIsleDungeon4_GetActors.s");

void OvlFunc_948_2008aa4(void) {}

int OvlFunc_948_2008aa8(int arg0) {
    int r5, r2, r3;
    r5 = arg0;
    r2 = __MapActor_GetActor(0);
    r3 = *(int *)((char *)r5 + 0x10);
    *(short *)((char *)r5 + 6) = __atan2(*(int *)((char *)r2 + 0x10) - r3, *(int *)((char *)r2 + 8) - *(int *)((char *)r5 + 8));
    return 0;
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2008ad0.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2008b68.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2008ccc.s");

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

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2008ec8.s");
extern unsigned char _EVENT_75[], _EVENT_76[], _EVENT_78[];
extern unsigned char Lm948_2bb4[] __asm__(".Lm948_2bb4");
extern unsigned char Lm948_2cb0[] __asm__(".Lm948_2cb0");
extern unsigned char gScript_953__0200adac[];
extern unsigned char Lm948_2ba8[] __asm__(".Lm948_2ba8");

int CrossboneIsleDungeon4_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_75) return (int)Lm948_2bb4;
    if (ev == (int)_EVENT_76) return (int)Lm948_2cb0;
    if (ev == (int)_EVENT_78) return (int)gScript_953__0200adac;
    return (int)Lm948_2ba8;
}

extern void __Func_8093c00(void);

void OvlFunc_948_2008f34(void) {
    __Func_8093c00();
}

void __PlaySound(int);
void __Func_8012330(int, int, int);
void __Func_80105d4(int, int, int, int, int, int);
void __WaitFrames(int);
static inline void Func_8012330_pos(int x, int y, int z) {
    __Func_8012330(x << 10, y << 10, z << 9);
}

static inline void Func_8012330_neg(int x, int y, int z) {
    __Func_8012330(-x, -y, z);
}

void OvlFunc_948_2008f40(unsigned int param_1)
{
    int base;
    int var1;
    int var2;

    base = (param_1 & 0xff) * 4;
    var2 = base + 0x4d;
    var1 = base + 0xd;
    if ((param_1 & 0x100) != 0) {
        __PlaySound(0x9d);
        Func_8012330_pos(0x80, 0x80, 0x80);
        Func_8012330_neg(1, 1, 0xe666);
        __Func_80105d4(0x4f, 0x1d, 1, 3, var2, 0x28);
        __WaitFrames(0x28);
    }
    __Func_80105d4(0x50, 0x1d, 1, 3, var2, 0x28);
    __Func_8010704(var1, 0x28, 1, 1, var1, 0x29);
    __Func_8010704(var1, 0x28, 1, 1, var1, 0x2a);
}
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2008fdc.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2009070.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_20090b8.s");

extern void OvlFunc_948_20090b8(int);

void OvlFunc_948_2009108(void) {
    OvlFunc_948_20090b8(0);
}


void OvlFunc_948_2009114(void) {
    OvlFunc_948_20090b8(1);
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2009120.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_200915c.s");

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

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_20091d8.s");

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

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2009308.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_200938c.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_200941c.s");
void __CutsceneStart(void);
void __MapActor_TravelTo(int, int, int);
void __CutsceneWait(int);
void __CutsceneEnd(void);
void __ClearFlag(int);

void OvlFunc_948_200949c(void)
{
    int sp1 = 0x1b333;
    int sp2 = 0xd999;
    int dest_z = 0x108;
    int flag = 0x220;
    void *actor;

    do { } while (sp1 == 0);

    __CutsceneStart();
    __MapActor_SetSpeed(0, sp1, sp2);
    __MapActor_SetSpeed(9, sp1, sp2);
    __PlaySound(0xbc);
    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        __MapActor_TravelTo(9, *(short *)((char *)actor + 10), *(short *)((char *)actor + 18));
    }
    __MapActor_WaitMovement(9);
    __MapActor_TravelBy(0, 0, 0x18);
    __PlaySound(0xbc);
    __CutsceneWait(4);
    __MapActor_TravelBy(9, 0, 0x10);
    __MapActor_WaitMovement(0);
    __MapActor_TravelTo(9, 0xa8, dest_z);
    __MapActor_WaitMovement(9);
    __CutsceneEnd();
    __ClearFlag(flag);
}
extern int Lm948_2f74[] __asm__(".Lm948_2f74");

void OvlFunc_948_200952c(int arg0)
{
    void *actor;
    int x;
    int z;
    int actorId;
    unsigned char *gs;

    actor = (void *)__MapActor_GetActor(0);
    x = *(int *)((char *)actor + 8) / 0x100000;
    z = *(int *)((char *)actor + 0x10) / 0x100000;

    gs = (unsigned char *)&gState;
    gs += 0x24a;

    actorId = arg0 + 10;
    if (*(short *)gs != actorId && x != Lm948_2f74[arg0]) {
        __MapActor_SetSpeed(actorId, 0x48000, 0x24000);
        __PlaySound(0xbc);
        __MapActor_TravelTo(actorId, (x << 4) + 8, 0x168);
        Lm948_2f74[arg0] = x;
        if (z <= 0x16) {
            __MapActor_TravelBy(0, 0, 8);
        }
        __MapActor_WaitMovement(0);
    }
}

extern void OvlFunc_948_200952c(int arg0);

void OvlFunc_948_20095cc(void) {
    OvlFunc_948_200952c(0);
}


void OvlFunc_948_20095d8(void) {
    OvlFunc_948_200952c(1);
}


void OvlFunc_948_20095e4(void) {
    OvlFunc_948_200952c(2);
}

void OvlFunc_948_20095f0(void)
{
    unsigned int r3;
    unsigned int r2;
    short val;
    void *actor;
    int spd1 = 0x1b333, spd2 = 0xd999;

    do {} while (spd1 == 0);

    r3 = (unsigned int)&gState;
    r2 = 0x24a;
    r3 += r2;
    r2 = 0;
    val = *(short *)((char *)r3 + r2);

    if (val != 10) {
        __CutsceneStart();
        __MapActor_SetSpeed(0, spd1, spd2);
        __MapActor_SetSpeed(10, spd1, spd2);
        __PlaySound(0xbc);
        actor = __MapActor_GetActor(0);
        if (actor != 0) {
            __MapActor_TravelTo(10, *(short *)((char *)actor + 10), *(short *)((char *)actor + 18));
        }
        __MapActor_WaitMovement(10);
        __MapActor_TravelBy(0, 0, 0x18);
        __CutsceneWait(4);
        __PlaySound(0xbc);
        __MapActor_TravelBy(10, 0, 0x10);
        __MapActor_WaitMovement(0);
        __MapActor_TravelTo(10, 0x84 << 1, 0xb4 << 1);
        __MapActor_WaitMovement(10);
        __CutsceneWait(10);
        __CutsceneEnd();
    }
}
void OvlFunc_948_2009694(void)
{
    unsigned char *gs;
    char *actor;
    int x0;
    int x11;
    int spd1 = 0x1b333;
    int spd2 = 0xd999;
    int neg8 = -8;

    while (spd1 == 0) {}

    gs = (unsigned char *)&gState;
    gs += 0x24a;
    if (*(short *)gs == 11) {
        return;
    }

    __CutsceneStart();
    __MapActor_SetSpeed(0, spd1, spd2);
    __MapActor_SetSpeed(11, spd1, spd2);
    __PlaySound(0xbc);

    x0 = *(int *)((char *)__MapActor_GetActor(0) + 8) / 0x100000;
    x11 = *(int *)((char *)__MapActor_GetActor(11) + 8) / 0x100000;
    if (x0 > x11) {
        __MapActor_TravelBy(11, 8, 0);
    }

    x0 = *(int *)((char *)__MapActor_GetActor(0) + 8) / 0x100000;
    x11 = *(int *)((char *)__MapActor_GetActor(11) + 8) / 0x100000;
    if (x0 < x11) {
        __MapActor_TravelBy(11, neg8, 0);
    }

    __MapActor_WaitMovement(11);

    actor = (char *)__MapActor_GetActor(0);
    if (actor != 0) {
        __MapActor_TravelTo(11, *(short *)(actor + 10), *(short *)(actor + 18));
    }

    __MapActor_WaitMovement(11);
    __MapActor_TravelBy(0, 0, 0x18);
    __CutsceneWait(4);
    __PlaySound(0xbc);
    __MapActor_TravelBy(11, 0, 0x10);
    __MapActor_WaitMovement(0);
    __MapActor_TravelTo(11, 0x158, 0x168);
    __MapActor_WaitMovement(11);
    __CutsceneWait(10);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_20097ac.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2009838.s");

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

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_20098e0.s");

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

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_20099e8.s");

void OvlFunc_948_2009a48(void) {
    void *r0;
    __Func_8010704(0x3a, 0x29, 1, 1, 0x2a, 0x2a);
    r0 = __MapActor_GetActor(8);
    *(unsigned char *)((char *)r0 + 0x23) = 2;
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2009a70.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2009a9c.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2009ac8.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2009b60.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2009bc4.s");

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

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2009c6c.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2009ca0.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2009ccc.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2009cf8.s");

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

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2009da0.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2009df8.s");

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

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2009edc.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/CrossboneIsleDungeon4_MapInit.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_2009fd8.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_200a0c4.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_200a188.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_200a290.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/OvlFunc_948_200a334.s");

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_4/imports.s");
