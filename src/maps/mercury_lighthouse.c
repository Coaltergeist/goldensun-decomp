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

INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_2008350.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_20083a8.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_2008528.s");

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

INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_2008630.s");

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
    __MapActor_SetSpeed(0, sp1, sp2);
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

INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_2008ba4.s");

extern void __Func_8091f14(int a, int b);

void OvlFunc_924_2008cc0(void) {
    __Func_8091f14(12, 21);
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_2008cd0.s");

INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_2008d58.s");

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

INCLUDE_ASM("asm/maps/mercury_lighthouse/MercuryLighthouse_GetEntrances.s");

int MercuryLighthouse_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gScript_883__0200e614[];

void *MercuryLighthouse_GetExits(void) {
    return (void *)gScript_883__0200e614;
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/MercuryLighthouse_GetActors.s");

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

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_36[], _EVENT_37[], _EVENT_38[];
extern unsigned char Lm924_6ad8[] __asm__(".Lm924_6ad8");
extern unsigned char Lm924_6c10[] __asm__(".Lm924_6c10");
extern unsigned char Lm924_6d60[] __asm__(".Lm924_6d60");
extern unsigned char Lm924_6ec8[] __asm__(".Lm924_6ec8");

int MercuryLighthouse_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_36) return (int)Lm924_6ad8;
    if (ev == (int)_EVENT_37) return (int)Lm924_6c10;
    if (ev == (int)_EVENT_38) return (int)Lm924_6d60;
    return (int)Lm924_6ec8;
}
INCLUDE_ASM("asm/maps/mercury_lighthouse/ovl_60ec_c.s");

INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_2008f84.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_2008ffc.s");

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

INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_20090c0.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_2009164.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_2009340.s");

extern void OvlFunc_924_20083a8(void);
extern void OvlFunc_924_2009420(void);

void OvlFunc_924_2009408(void) {
    __CutsceneStart();
    OvlFunc_924_20083a8();
    __CutsceneEnd();
    OvlFunc_924_2009420();
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_2009420.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_20094cc.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_2009568.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_20095e0.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_20096c4.s");

extern void OvlFunc_924_200bb24(unsigned int a, int b, int c);

void OvlFunc_924_2009790(void) {
    OvlFunc_924_200bb24(0x2b20000, 0, 0x92 << 18);
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_20097a8.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_20098f8.s");
extern void __CopyMapTiles(int, int, int, int, int, int);
extern int __GetFlag(int);
extern void __Func_80933d4(int, int);
extern void __Func_80933f8(int, int, int, int);
extern void __Func_8093530(void);

extern void OvlFunc_924_200b860(void);
extern void OvlFunc_924_200b948(void);
extern void OvlFunc_924_20097a8(int);
extern void OvlFunc_924_20098f8(void);
extern void OvlFunc_924_20096c4(int);

void OvlFunc_924_20099b8(void)
{
    struct Pk pk;
    int flag = 0x307;

    __CutsceneStart();
    if (OvlFunc_924_2008758(&pk) != 0) {
        if (pk.b == 8) {
            if ((pk.x >> 20) == 11) {
                OvlFunc_924_20088ec(pk);
                __CutsceneWait(30);
                __PlaySound(0xd3);
                OvlFunc_924_200b860();
                __CopyMapTiles(0x4c, 0x3c, 0x4a, 0x26, 3, 1);
                __CopyMapTiles(0x4d, 0x3c, 0x4c, 0x26, 2, 1);
                __CopyMapTiles(0x4b, 0x3a, 0x56, 0x29, 1, 3);
                __CopyMapTiles(0x4b, 0x3b, 0x56, 0x2b, 1, 2);
                __CopyMapTiles(0x4c, 0x3b, 0x50, 0x31, 2, 1);
                __CopyMapTiles(0x4d, 0x3b, 0x52, 0x31, 2, 1);
                __SetFlag(0x302);
            } else {
                pk.arg5 = OvlFunc_924_200b948;
                __CopyMapTiles(0x4b, 0x39, 0x56, 0x29, 1, 1);
                __CopyMapTiles(0x47, 0x3b, 0x56, 0x2a, 1, 1);
                __CopyMapTiles(0x47, 0x3b, 0x56, 0x2b, 1, 1);
                __CopyMapTiles(0x47, 0x3b, 0x56, 0x2c, 1, 1);
                __CopyMapTiles(0x47, 0x3b, 0x50, 0x31, 1, 1);
                __CopyMapTiles(0x47, 0x3b, 0x51, 0x31, 1, 1);
                __CopyMapTiles(0x47, 0x3b, 0x52, 0x31, 1, 1);
                __CopyMapTiles(0x4e, 0x3a, 0x53, 0x31, 1, 1);
                OvlFunc_924_20088ec(pk);
                __ClearFlag(0x302);
            }
        } else if (pk.b == 10) {
            if ((pk.z >> 20) == 0x28) {
                OvlFunc_924_20088ec(pk);
                if (!__GetFlag(flag)) {
                    __Func_80933d4(0xc0 << 9, 0xc0 << 6);
                    __Func_80933f8(0x2ca0000, -1, 0x94 << 18, 1);
                    __Func_8093530();
                    __SetFlag(flag);
                    OvlFunc_924_20097a8(5);
                    __CutsceneWait(50);
                } else {
                    OvlFunc_924_20097a8(5);
                }
                __SetFlag(0x306);
            } else if ((pk.z >> 20) == 0x2a) {
                pk.arg5 = OvlFunc_924_20098f8;
                OvlFunc_924_20088ec(pk);
                OvlFunc_924_20096c4(5);
                __ClearFlag(0x306);
            }
        }
    }
    __CutsceneEnd();
}

extern void OvlFunc_924_2009bf0(void);

void OvlFunc_924_2009bd8(void) {
    __CutsceneStart();
    OvlFunc_924_20083a8();
    __CutsceneEnd();
    OvlFunc_924_2009bf0();
}

INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_2009bf0.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_2009c9c.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_2009d3c.s");

INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_2009db4.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200a030.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200a1cc.s");

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

INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200a318.s");

extern void OvlFunc_924_200a51c(void);

void OvlFunc_924_200a504(void) {
    __CutsceneStart();
    OvlFunc_924_20083a8();
    OvlFunc_924_200a51c();
    __CutsceneEnd();
}

void OvlFunc_924_200a51c(void)
{
    int i;
    int flag;
    int x;
    int val;
    int base;
    int new_var;
    int new_var2;

    __CutsceneStart();
    i = 0;
    flag = 0xcc << 2;
    for (; i < 4; i++) {
        x = *(int *)(__MapActor_GetActor(i + 15) + 8);
        if (x < 0) {
            x += 0xfffff;
        }
        val = x >> 20;
        base = i << 2;
        if (val == base + 0x27) {
            __SetFlag(flag);
            __ClearFlag(flag + 1);
        } else {
            base += 0x29;
            if (val == base) {
                __SetFlag(flag + 1);
                __ClearFlag(flag);
            } else {
                __ClearFlag(flag);
                __ClearFlag(flag + 1);
            }
        }
        flag += 2;
    }

    x = *(int *)(__MapActor_GetActor(0x13) + 8);
    if (x < 0) {
        x += 0xfffff;
    }
    val = x >> 20;
    if (val == 0x39) {
        __SetFlag(0xce << 2);
        __ClearFlag(0x339);
        new_var = 0x3a;
        new_var2 = 7;
        __Func_8010704(0x35, 10, 1, 1, new_var, new_var2);
    } else if (val == 0x3b) {
        __SetFlag(0x339);
        __ClearFlag(0xce << 2);
        new_var = 0x3a;
        new_var2 = 7;
        __Func_8010704(0x35, 10, 1, 1, new_var, new_var2);
    } else {
        __ClearFlag(0xce << 2);
        __ClearFlag(0x339);
        new_var = 0x3a;
        new_var2 = 7;
        __Func_8010704(0x35, 11, 1, 1, new_var, new_var2);
    }
    __CutsceneEnd();
}

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

INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200a648.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200a684.s");

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

INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200a844.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200a8b0.s");

INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200adcc.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200ae08.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200ae6c.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200af68.s");

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

INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200b6ac.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200b788.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200b860.s");
void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);

struct EffectData {
    int unk0;
    int unk4;
    int unk8;
    int unkc;
    int unk10;
    int unk14;
    short unk18;
    short unk1a;
    int unk1c;
    int unk20;
    int unk24;
};

void OvlFunc_924_200b948(void)
{
    struct EffectData data;
    unsigned int uVar2;
    unsigned int uVar3;
    int iVar4;

    __CopyMapTiles(0x4c, 0x3d, 0x4a, 0x26, 1, 1);
    data.unk4 = 5;
    data.unk8 = 0x8000;
    data.unkc = 0x8000;
    uVar3 = 0;
    do {
        uVar2 = 1;
        iVar4 = -0x20000;
        do {
            if ((uVar2 & 1) != 0) {
                if ((uVar2 & 2) != 0) {
                    OvlFunc_common0_10c((0x69 - (__Random() * 5 >> 16)) << 16, 0,
                                        iVar4 - (uVar3 << 19) + 0x22e0000, 0, 0, 0xffffc000, 0x90000, &data);
                } else {
                    OvlFunc_common0_10c(((uVar3 * 4 + uVar2) << 17) + 0xb70000, 0,
                                        (0x26c - (__Random() * 5 >> 16)) << 16, 0x4000, 0, 0, 0x90000, &data);
                }
                __CutsceneWait(1);
            }
            uVar2++;
            iVar4 -= 0x20000;
        } while (uVar2 <= 7);
        __CopyMapTiles(0x47, 0x3b, 0x46, 0x22 - uVar3, 1, 1);
        __CopyMapTiles(0x47, 0x3b, uVar3 + 0x4b, 0x26, 1, 1);
        uVar3++;
    } while (uVar3 <= 2);
}
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200ba64.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200bb24.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200bbd4.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200bc48.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/MercuryLighthouse_MapInit.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200ca08.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200cc68.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200cf44.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200cf90.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200cfcc.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200d158.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200d1b0.s");

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

INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200d244.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200d388.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200d458.s");

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

INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200d5c0.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse/OvlFunc_924_200d900.s");

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
