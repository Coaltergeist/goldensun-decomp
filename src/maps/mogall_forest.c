/* rom_7b4558 (overlay file 927): consolidated TU — mogall_forest map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/mogall_forest/exports.s");

extern void __CutsceneStart();
extern void __CutsceneEnd();
extern void __Func_801776c();

extern int OvlFunc_927_20082a8();

extern int Func_8000948(int);

int OvlFunc_927_2008030(int *a, int *b)
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

INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_200806c.s");
INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_20080c4.s");
INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_2008244.s");

extern unsigned int L2ef8[] __asm__(".Lm927_2ef8");
extern int L2f38[] __asm__(".Lm927_2f38");
extern void *OvlFunc_927_200806c(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_927_20082a8(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L2ef8[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_927_200806c(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L2f38;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L2ef8[idx];
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

INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_200834c.s");

extern int gScript_884__0200af50[];
extern void *OvlFunc_927_200834c(int *, void *, void *);

int OvlFunc_927_2008474(void *arg0)
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
    obj = OvlFunc_927_200834c(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = gScript_884__0200af50[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = gScript_884__0200af50[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = gScript_884__0200af50[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = gScript_884__0200af50[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L2ef8[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L2ef8[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (gScript_884__0200af50[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (gScript_884__0200af50[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L2ef8[dir] & 0xffff0000;
        cur[2] += L2ef8[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L2ef8[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern unsigned char iwram_3001e70[];
extern int L2ef8__a2[] __asm__(".Lm927_2ef8");
extern void OvlFunc_927_2008244(int, int, int, int, int, int);
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

void OvlFunc_927_2008608(struct Pk arg)
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
    t1 = gScript_884__0200af50[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = gScript_884__0200af50[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = gScript_884__0200af50[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = gScript_884__0200af50[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (gScript_884__0200af50[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (gScript_884__0200af50[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_927_2008244(0, vb[0], vb[2], w, h, 0);
    __MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_927_20082a8;
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
    __MapActor_TravelBy(0, (short)(L2ef8__a2[dir] >> 16) / 2, (short)(L2ef8__a2[dir]) / 2);
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
    x1 += gScript_884__0200af50[arg.a << 2] << 16;
    x2 += gScript_884__0200af50[(arg.a << 2) + 1] << 16;
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
    OvlFunc_927_2008244(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_927_2008244(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (gScript_884__0200af50[arg.a << 2] << 16);
    u2 = ap[2] + (gScript_884__0200af50[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_927_2008244(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_20088c0.s");
INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_20089dc.s");
INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_20089f4.s");
INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_2008a4c.s");
INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_2008ab0.s");
INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_2008ae8.s");

extern void __Func_8091f14(int a, int b);

void OvlFunc_927_2008cc0(void) {
    __Func_8091f14(0x12, 2);
}

INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_2008cd0.s");

extern void __Func_80929d8(int a, int b);

unsigned int OvlFunc_927_2008d6c(unsigned int arg0) {
    __Func_80929d8(arg0, *(short *)((char *)arg0 + 0x64));
    return 0;
}

extern void __Actor_SetSpriteFlags();

unsigned int OvlFunc_927_2008d80(void) {
    int dummy;
    __Actor_SetSpriteFlags(dummy, 0);
    return 0;
}

void __PlaySound(int);
void __Func_8092b08(int, int);
void __MapActor_SetPos(int, int, int);
#include "actor.h"

extern void __MapActor_TravelToWait(int, int, int);
static inline void MapActor_SetSpeed(int actor, int speed, int accel) {
    __MapActor_SetSpeed(actor, speed << 10, accel << 9);
}

void OvlFunc_927_2008d90(int arg0, int arg1, int arg2, int arg3) {
    struct Actor *actor;

    actor = __MapActor_GetActor(arg0);
    __Func_8092b08(arg0, 1);
    MapActor_SetSpeed(arg0, 0xc0, 0xc0);
    __PlaySound(0x98);
    actor->motion.y = arg3;
    actor->gravity = 0x8000;
    actor->bounce = 0;
    __Actor_SetSpriteFlags(actor, 0);
    __MapActor_TravelToWait(arg0, arg1, arg2);
    arg1 <<= 16;
    arg2 <<= 16;
    __MapActor_SetPos(arg0, arg1, arg2);
    __Actor_SetSpriteFlags(actor, 1);
    actor->gravity = 0x10000;
}
INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_2008e18.s");

extern void OvlFunc_927_2008e18(unsigned int arg0);

void OvlFunc_927_2008ea8(unsigned int arg0, unsigned int arg1)
{
  int new_var2;
  long new_var;
  new_var = 0x20000;
  new_var2 = 0x4000;
 do { __Func_80933d4(new_var, new_var2); __Func_8093500(arg0, 1); __Func_8093530(); } while (0);
  __CutsceneWait(0x1e);
  OvlFunc_927_2008e18(arg0);
  __Func_8092950(arg0, arg1);
}

INCLUDE_ASM("asm/maps/mogall_forest/MogallForest_GetEntrances.s");

unsigned int MogallForest_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200b5bc[];

void *MogallForest_GetExits(void) {
    return (void *)gOvl_0200b5bc;
}

INCLUDE_ASM("asm/maps/mogall_forest/MogallForest_GetActors.s");
void __SetFlag(int);
void __CutsceneWait(int);
void OvlFunc_927_2008f94(void)
{
    int sp1 = 0x4000;
    int sp2 = 0x8000;
    int id = 9;
    int s1;
    int s2;
    struct Pk pk;

    do { } while (sp1 == 0);

    __CutsceneStart();
    if (OvlFunc_927_2008474(&pk)) {
        OvlFunc_927_2008608(pk);
        if (pk.b == 9 && (pk.z >> 20) == 0x1a) {
            __SetFlag(0x310);
            __MapActor_SetAnim(id, 3);
            __MapActor_SetSpeed(id, sp1, sp2);
            __MapActor_TravelBy(id, 0, -0x10);
            __CutsceneWait(0x2d);
            __MapActor_SetAnim(id, 8);
            __PlaySound(0xf0);
            __Func_8092b08(id, 1);
            *((char *)__MapActor_GetActor(id) + 0x23) = 2;
            s2 = 0x19;
            s1 = 0x1f;
            __Func_8010704(0x26, 0x1b, 4, 2, s1, s2);
        }
    }
    __CutsceneEnd();
}

extern void *OvlFunc_927_2008cd0(unsigned int *arr);

void OvlFunc_927_200903c(void)
{
    unsigned char *p = (unsigned char *)__MapActor_GetActor(0);
    unsigned int arr[3];

    arr[0] = (*(unsigned int *)(p + 8) & 0xfff00000) + (0x80 << 12);
    arr[1] = *(unsigned int *)(p + 0xc);
    arr[2] = (*(unsigned int *)(p + 0x10) & 0xfff00000) + 0xffe80000;
    OvlFunc_927_2008cd0(arr);
}

INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_2009078.s");

void OvlFunc_927_200912c(void)
{
	__CutsceneStart();
	{
		unsigned int rq = 0;
		__MapActor_SetAnim(rq, 1);
	}
	{
		unsigned int rm = 0x17e6;
		__Func_801776c(rm, 1);
	}
	__CutsceneEnd();
}

#include "actor.h"

extern void OvlFunc_927_2008d90(int arg0, int arg1, int arg2, int arg3);
void OvlFunc_927_2008ae8(int, int, int, int, int, int, int, int);
void __SetCameraTarget(int, int);
void __MapActor_TurnToFaceActor(int, int, int);
void __Func_809259c(int, int);
void __MapActor_Surprise(int, int);
void __MapActor_Face(int, int, int);
void OvlFunc_927_2009150(void)
{
    struct Actor *actor;
    int speed;

    actor = __MapActor_GetActor(10);
    __CutsceneStart();
    OvlFunc_927_2008ea8(10, 1);
    OvlFunc_927_2008d90(10, 0x58, 0x78, 0x60000);
    OvlFunc_927_2008ae8(actor->pos.x, actor->pos.y, actor->pos.z + 0x180000, 0, 0, 0, 1, 0);
    __SetCameraTarget(10, 1);
    __MapActor_TurnToFaceActor(10, 0, 0);
    __CutsceneWait(0x14);
    __Func_809259c(10, 2);
    speed = 0x30000;
    __MapActor_Surprise(10, 0x102);
    __CutsceneWait(0x3c);
    OvlFunc_927_2008d90(10, 0x58, 0x98, speed);
    __MapActor_Face(0, 10, 0);
    __CutsceneWait(10);
    OvlFunc_927_2008d90(10, 0x78, 0xc0, speed);
    __MapActor_Face(0, 10, 0);
    __CutsceneWait(10);
    OvlFunc_927_2008d90(10, 0x78, 0xf0, speed);
    __MapActor_Face(0, 10, 0);
    __CutsceneWait(10);
    __SetFlag(0x300);
    __MapActor_SetPos(0xd, 0, 0);
    __MapActor_SetPos(10, 0, 0);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_2009244.s");
#include "actor.h"

void OvlFunc_927_2009328(void)
{
    struct Actor *actor;
    int y;
    int speed;

    actor = __MapActor_GetActor(12);
    y = 0x158;
    __CutsceneStart();
    OvlFunc_927_2008ea8(12, 1);
    OvlFunc_927_2008d90(12, 0x218, y, 0x70000);
    OvlFunc_927_2008ae8(actor->pos.x, actor->pos.y, actor->pos.z + 0x100000, 0, 0, 0, 1, 0);
    __SetCameraTarget(12, 1);
    __MapActor_TurnToFaceActor(12, 0, 0);
    __CutsceneWait(0x14);
    __Func_809259c(12, 2);
    __MapActor_Surprise(12, 0x102);
    speed = 0x30000;
    __CutsceneWait(0x3c);
    OvlFunc_927_2008d90(12, 0x248, y, speed);
    __MapActor_Face(0, 12, 0);
    __CutsceneWait(6);
    OvlFunc_927_2008d90(12, 0x278, y, speed);
    __MapActor_Face(0, 12, 0);
    __CutsceneWait(6);
    OvlFunc_927_2008d90(12, 0x2a8, y, speed);
    __MapActor_Face(0, 12, 0);
    __CutsceneWait(6);
    __SetFlag(0x302);
    __MapActor_SetPos(15, 0, 0);
    __CutsceneEnd();
}

void OvlFunc_927_2009420(void)
{
  int new_var;
  unsigned short new_var2;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __CutsceneStart();
  new_var = 0;
  new_var2 = 0x10;
  __MapActor_SetPos(new_var2, new_var, (long) (new_var4 = new_var));
  __SetFlag(0xfd4);
  new_var6 = 0xb5;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_808f1c0(new_var5, 3);
  __Func_8091a58(0xb5, 0);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_2009454.s");
INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_2009520.s");
#include "actor.h"

void OvlFunc_927_20095d0(void)
{
    struct Actor *actor;
    int x;
    int speed;

    actor = __MapActor_GetActor(0xc);
    __CutsceneStart();
    OvlFunc_927_2008ea8(0xc, 1);
    OvlFunc_927_2008d90(0xc, 0x188, 0x68, 0x70000);
    __CutsceneWait(10);
    OvlFunc_927_2008ae8(actor->pos.x, actor->pos.y, actor->pos.z + 0x40000, 0, 0, 0, 1, 0);
    __SetCameraTarget(0xc, 1);
    __MapActor_TurnToFaceActor(0xc, 0, 0);
    __CutsceneWait(0x14);
    __Func_809259c(0xc, 2);
    x = 0x1a8;
    speed = 0x30000;
    __MapActor_Surprise(0xc, 0x102);
    __CutsceneWait(0x3c);
    OvlFunc_927_2008d90(0xc, x, 0x78, speed);
    __MapActor_Face(0, 0xc, 0);
    __CutsceneWait(6);
    OvlFunc_927_2008d90(0xc, x, 0xa8, speed);
    __MapActor_Face(0, 0xc, 0);
    __CutsceneWait(6);
    OvlFunc_927_2008d90(0xc, x, 0xd0, speed);
    __MapActor_Face(0, 0xc, 0);
    __CutsceneWait(6);
    OvlFunc_927_2008d90(0xc, x, 0xe8, speed);
    __MapActor_Face(0, 0xc, 0);
    __CutsceneWait(6);
    __MapActor_SetPos(0xc, 0, 0);
    __SetFlag(0x303);
    __MapActor_SetPos(0xf, 0, 0);
    __CutsceneEnd();
}
#include "actor.h"

void OvlFunc_927_20096f0(void)
{
    struct Actor *actor;
    int speed;

    actor = __MapActor_GetActor(0xd);
    __CutsceneStart();
    OvlFunc_927_2008ea8(0xd, 1);
    OvlFunc_927_2008d90(0xd, 0x1c8, 0x68, 0x70000);
    __CutsceneWait(10);
    OvlFunc_927_2008ae8(actor->pos.x, actor->pos.y, actor->pos.z + 0x40000, 0, 0, 0, 1, 0);
    __SetCameraTarget(0xd, 1);
    __MapActor_TurnToFaceActor(0xd, 0, 0);
    __CutsceneWait(0x14);
    __Func_809259c(0xd, 2);
    __MapActor_Surprise(0xd, 0x102);
    __CutsceneWait(0x3c);
    OvlFunc_927_2008d90(0xd, 0x1d8, 0x88, 0x30000);
    __MapActor_Face(0, 0xd, 0);
    __CutsceneWait(6);
    OvlFunc_927_2008d90(0xd, 0x1f8, 0x88, 0x33333);
    __MapActor_Face(0, 0xd, 0);
    speed = 0x38000;
    __CutsceneWait(6);
    OvlFunc_927_2008d90(0xd, 0x228, 0x88, speed);
    __MapActor_Face(0, 0xd, 0);
    __CutsceneWait(6);
    OvlFunc_927_2008d90(0xd, 0x248, 0x88, speed);
    __MapActor_Face(0, 0xd, 0);
    __CutsceneWait(6);
    __MapActor_SetPos(0xd, 0, 0);
    __SetFlag(0x304);
    __MapActor_SetPos(0x10, 0, 0);
    __CutsceneEnd();
}
#include "actor.h"

extern void __Func_8092950(int, int);
void OvlFunc_927_2009818(void)
{
    struct Actor *actor;
    int x = 0x1a80000;
    int y = 0x1e00000;

    do { } while (x == 0);

    __CutsceneStart();
    OvlFunc_927_2008ea8(0xe, 1);
    OvlFunc_927_2008d90(0xe, 0x1a8, 0x1e0, 0x79999);
    __CutsceneWait(2);
    OvlFunc_927_2008e18(0xe);
    __Func_8092950(0xe, 0xf);
    actor = __MapActor_GetActor(0xe);
    __Actor_SetSpriteFlags(actor, 0);
    __CutsceneWait(0x1e);
    __SetFlag(0x305);
    __MapActor_SetPos(0x11, x, y);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_2009880.s");
INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_20099b8.s");


void OvlFunc_927_2009ac8(void) {
    unsigned char *r6;
    unsigned char *r7;
    unsigned int r5;
    unsigned char r8;
    unsigned int args[3];

    r6 = __MapActor_GetActor(0);
    r7 = r6 + 0x55;
    r8 = *r7;
    args[0] = *(unsigned int *)(__MapActor_GetActor(0) + 8) + 0xffe00000;
    args[1] = *(unsigned int *)(__MapActor_GetActor(0) + 0xc);
    args[2] = *(unsigned int *)(__MapActor_GetActor(0) + 0x10);
    if (OvlFunc_927_2008cd0(args) != 0) {
        __CutsceneStart();
        *r7 = 0;
        __MapActor_SetAnim(0xb, 7);
        r5 = 0xffff0000;
        *(unsigned int *)(r6 + 0xc) += r5;
        *(unsigned int *)(r6 + 0x14) += r5;
        __WaitFrames(2);
        *(unsigned int *)(r6 + 0xc) += r5;
        *(unsigned int *)(r6 + 0x14) += r5;
        __WaitFrames(0xa);
        r5 = 0x80 << 9;
        *(unsigned int *)(r6 + 0xc) += r5;
        *(unsigned int *)(r6 + 0x14) += r5;
        __WaitFrames(4);
        *(unsigned int *)(r6 + 0xc) += r5;
        *(unsigned int *)(r6 + 0x14) += r5;
        *r7 = r8;
        __CutsceneEnd();
    }
}

INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_2009b84.s");
INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_2009c34.s");
INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_2009d04.s");
INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_2009de0.s");
#include "actor.h"

void OvlFunc_927_2009ef0(void)
{
    struct Actor *actor;
    int speed1;
    int speed2;

    speed1 = 0x60000;
    actor = __MapActor_GetActor(0x11);
    __CutsceneStart();
    OvlFunc_927_2008ea8(0x11, 1);
    OvlFunc_927_2008d90(0x11, 0x188, 0x68, speed1);
    __CutsceneWait(10);
    OvlFunc_927_2008ae8(actor->pos.x, actor->pos.y, actor->pos.z + 0x40000, 0, 0, 0, 1, 0);
    __SetCameraTarget(0x11, 1);
    __MapActor_TurnToFaceActor(0x11, 0, 0);
    __CutsceneWait(0x14);
    __Func_809259c(0x11, 2);
    __MapActor_Surprise(0x11, 0x102);
    __CutsceneWait(0x3c);
    OvlFunc_927_2008d90(0x11, 0x178, 0x98, speed1);
    __MapActor_Face(0, 0x11, 0);
    speed2 = 0x30000;
    __CutsceneWait(10);
    OvlFunc_927_2008d90(0x11, 0x148, 0xa0, speed2);
    __MapActor_Face(0, 0x11, 0);
    __CutsceneWait(6);
    OvlFunc_927_2008d90(0x11, 0x128, 0xa0, speed2);
    __MapActor_Face(0, 0x11, 0);
    __CutsceneWait(6);
    __SetCameraTarget(0, 1);
    __MapActor_SetPos(0x11, 0, 0);
    __CutsceneWait(0x1e);
    __SetFlag(0x309);
    __MapActor_SetPos(0x15, 0, 0);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_200a004.s");
#include "actor.h"

void OvlFunc_927_200a078(void)
{
    struct Actor *actor;
    int x;
    int speed1;
    int speed2;

    actor = __MapActor_GetActor(0x12);
    x = 0x2c8;
    __CutsceneStart();
    OvlFunc_927_2008ea8(0x12, 1);
    OvlFunc_927_2008d90(0x12, x, 0x218, speed1 = 0x60000);
    __CutsceneWait(10);
    OvlFunc_927_2008ae8(actor->pos.x, actor->pos.y, actor->pos.z + 0x40000, 0, 0, 0, 1, 0);
    __SetCameraTarget(0x12, 1);
    __MapActor_TurnToFaceActor(0x12, 0, 0);
    __CutsceneWait(0x14);
    __Func_809259c(0x12, 2);
    __MapActor_Surprise(0x12, 0x102);
    __CutsceneWait(0x3c);
    OvlFunc_927_2008d90(0x12, x, 0x238, speed1);
    __MapActor_Face(0, 0x12, 0);
    speed2 = 0x30000;
    __CutsceneWait(10);
    OvlFunc_927_2008d90(0x12, x, 0x258, speed2);
    __MapActor_Face(0, 0x12, 0);
    __CutsceneWait(6);
    x += 0x18;
    OvlFunc_927_2008d90(0x12, x, 0x280, speed2);
    __MapActor_Face(0, 0x12, 0);
    __CutsceneWait(6);
    OvlFunc_927_2008d90(0x12, x, 0x2c0, speed2);
    __MapActor_Face(0, 0x12, 0);
    __CutsceneWait(6);
    __SetCameraTarget(0, 1);
    __MapActor_SetPos(0x12, 0, 0);
    __CutsceneWait(0x1e);
    __SetFlag(0x30b);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_200a1b0.s");
INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_200a2c0.s");
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_44[], _EVENT_45[], _EVENT_46[];
extern unsigned char Lm927_3a48[] __asm__(".Lm927_3a48");
extern unsigned char Lm927_3b20[] __asm__(".Lm927_3b20");
extern unsigned char Lm927_3c1c[] __asm__(".Lm927_3c1c");
extern unsigned char Lm927_3d54[] __asm__(".Lm927_3d54");

int MogallForest_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_44) return (int)Lm927_3a48;
    if (ev == (int)_EVENT_45) return (int)Lm927_3b20;
    if (ev == (int)_EVENT_46) return (int)Lm927_3c1c;
    return (int)Lm927_3d54;
}
INCLUDE_ASM("asm/maps/mogall_forest/MogallForest_MapInit.s");

int OvlFunc_927_200aba4(int *actor)
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

INCLUDE_ASM("asm/maps/mogall_forest/OvlFunc_927_200ac0c.s");
INCLUDE_ASM("asm/maps/mogall_forest/mogall_forest_data.s");

INCLUDE_ASM("asm/maps/mogall_forest/imports.s");
