/* rom_7bdeb0 (overlay file 934): consolidated TU — vale_cave map overlay. */

#include "nonmatching.h"
#include "api.h"

extern int OvlFunc_934_200858c();

extern int Func_8000948(int);

int OvlFunc_934_2008314(int *a, int *b)
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

extern unsigned char iwram_3001ebc[];

void *OvlFunc_934_2008350(int *pos, void *unused)
{
    unsigned int *base;
    void **r1;
    unsigned int i;
    int tx;

    base = *(unsigned int **)iwram_3001ebc;
    i = 8;
    tx = pos[0] >> 20;
    r1 = (void **)((char *)base + 0x34);
    do {
        unsigned char *actor = (unsigned char *)*r1++;
        if (tx == (*(int *)(actor + 8) >> 20) &&
            (pos[1] / 0x10000) == (*(int *)(actor + 0xc) / 0x10000) &&
            (pos[2] >> 20) == (*(int *)(actor + 0x10) >> 20))
            return actor;
        i++;
    } while (i <= 0x41);
    return 0;
}

INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_20083a8.s");
extern unsigned char iwram_3001e70[];
extern unsigned char gBuffer[];

struct MapTile_528 {
    unsigned short a;
    unsigned char b;
    unsigned char c;
};

int OvlFunc_934_2008528(unsigned int layer, int x, int y, unsigned int w, unsigned int h, unsigned int val)
{
    char *base;
    struct MapTile_528 *buf;
    unsigned int i;
    unsigned int j;

    base = *(char **)iwram_3001e70;
    if (base == 0)
        return 0;

    if (layer <= 2) {
        int offset = 0x130 + layer * 0x30;
        buf = *(struct MapTile_528 **)(base + offset);
    } else {
        buf = (struct MapTile_528 *)gBuffer;
    }

    buf += x + (y << 7);
    for (i = 0; i < h; i++) {
        struct MapTile_528 *row = buf + (i << 7);
        for (j = 0; j < w; j++) {
            row->b = val;
            row++;
        }
    }
    return 0;
}

extern unsigned int L1e48[] __asm__(".Lm934_1e48");
extern int ActorCmd_ARRAY_933__02009e88[];
extern void *OvlFunc_934_2008350(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_934_200858c(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L1e48[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_934_2008350(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = ActorCmd_ARRAY_933__02009e88;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L1e48[idx];
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

INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_2008630.s");

extern int L1ea0[] __asm__(".Lm934_1ea0");
extern void *OvlFunc_934_2008630(int *, void *, void *);

int OvlFunc_934_2008758(void *arg0)
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
    obj = OvlFunc_934_2008630(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = L1ea0[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L1ea0[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = L1ea0[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L1ea0[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L1e48[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L1e48[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (L1ea0[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (L1ea0[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L1e48[dir] & 0xffff0000;
        cur[2] += L1e48[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L1e48[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern unsigned char iwram_3001e70[];
extern int L1e48__a2[] __asm__(".Lm934_1e48");
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

void OvlFunc_934_20088ec(struct Pk arg)
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
    t1 = L1ea0[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L1ea0[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L1ea0[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L1ea0[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (L1ea0[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (L1ea0[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_934_2008528(0, vb[0], vb[2], w, h, 0);
    API_MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_934_200858c;
    __CutsceneWait(4);
    if (dir - 6 <= 7)
        __Actor_SetAnim(actor, 3);
    else
        __Actor_SetAnim(actor, 2);
    __PlaySound(0xef);
    __Actor_TravelTo(actor, arg.x, arg.y, arg.z);
    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 2);
    API_MapActor_SetSpeed(0, 0x4ccc, 0x1999);
    __MapActor_TravelBy(0, (short)(L1e48__a2[dir] >> 16) / 2, (short)(L1e48__a2[dir]) / 2);
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
    x1 += L1ea0[arg.a << 2] << 16;
    x2 += L1ea0[(arg.a << 2) + 1] << 16;
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
    OvlFunc_934_2008528(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_934_2008528(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (L1ea0[arg.a << 2] << 16);
    u2 = ap[2] + (L1ea0[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_934_2008528(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_2008ba4.s");

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_934_2008cc0(void) {
    __Func_80955b0(8, 3, 4);
}

extern void __WaitFrames(int arg0);

void OvlFunc_934_2008cd0(unsigned int arg0)
{
    int *r5;
    int r6;

    r5 = (int *)arg0;
    r6 = 0x3c;
    while (r6 != 0) {
        __WaitFrames(1);
        r6--;
        if (r5[3] <= r5[5])
            break;
    }
    r5[3] = r5[5];
}

int OvlFunc_934_2008cf8(int arg0)
{
    int *r5 = (int *)arg0;
    int *actor = (int *)__MapActor_GetActor(0);
    *(short *)((char *)r5 + 6) = __atan2(actor[4] - r5[4], actor[2] - r5[2]);
    return 0;
}

INCLUDE_ASM("asm/maps/vale_cave/vale_cave_data.s");

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_5d[], _EVENT_5e[], _EVENT_5f[];
extern unsigned char Lconst_5d[] __asm__(".Lconst_5d");
__asm__(".equ .Lconst_5d, 0x5d");
extern unsigned char Lconst_5e[] __asm__(".Lconst_5e");
__asm__(".equ .Lconst_5e, 0x5e");
extern unsigned char Lconst_5f[] __asm__(".Lconst_5f");
__asm__(".equ .Lconst_5f, 0x5f");

extern unsigned char Lm934_1f9c[] __asm__(".Lm934_1f9c");
extern unsigned char Lm934_2014[] __asm__(".Lm934_2014");
extern unsigned char Lm934_2134[] __asm__(".Lm934_2134");
extern unsigned char Lm934_1f6c[] __asm__(".Lm934_1f6c");

void *ValeCave_GetEntrances(void)
{
    int offset;
    short a;

    offset = 0xe0;
    offset <<= 1;
    a = *(short *)((char *)&gState + offset);
    if (a == (int)Lconst_5d) return Lm934_1f9c;
    if (a == (int)Lconst_5e) return Lm934_2014;
    if (a == (int)Lconst_5f) return Lm934_2134;
    return Lm934_1f6c;
}

int ValeCave_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200a1dc[];

void *ValeCave_GetExits(void) {
    return (void *)gOvl_0200a1dc;
}

extern unsigned char Lm934_22c4[] __asm__(".Lm934_22c4");
extern unsigned char Lm934_239c[] __asm__(".Lm934_239c");
extern unsigned char Lm934_2234[] __asm__(".Lm934_2234");

void *ValeCave_GetActors(void)
{
    int offset;
    short a;

    offset = 0xe0;
    offset <<= 1;
    a = *(short *)((char *)&gState + offset);
    if (a != (int)Lconst_5d) {
        if (a == (int)Lconst_5e)
            return Lm934_22c4;
        if (a == (int)Lconst_5f)
            return Lm934_239c;
    }
    return Lm934_2234;
}
extern void __Func_80105d4(int, int, int, int, int, int);

void OvlFunc_934_2008dcc(void) {
    __Func_80105d4(0x10, 0xf, 1, 1, 0xf, 0xf);
}
void OvlFunc_934_2008de8(void) {
    __Func_80105d4(0x10, 0x11, 1, 1, 0xf, 0xf);
}
INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_2008e04.s");
INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_2008f78.s");

extern void OvlFunc_934_20083a8(void);
extern void OvlFunc_934_2008f78(void);

void OvlFunc_934_20090c8(void) {
    __CutsceneStart();
    OvlFunc_934_20083a8();
    __CutsceneEnd();
    OvlFunc_934_2008f78();
}

extern void __Actor_SetAnim(void *, int);
extern void __Actor_SetSpriteFlags(void *, int);

int OvlFunc_934_20090e0(void)
{
    unsigned char *actor;
    unsigned char *pflags;
    int orig_flags;
    int pos[3];
    int *p;

    actor = __MapActor_GetActor(0);
    pflags = actor + 0x55;
    orig_flags = *pflags;

    p = pos;
    p[0] = (*(int *)(actor + 8) & 0xfff00000) + (0x80 << 12);
    p[1] = *(int *)(actor + 0xc);
    p[2] = (*(int *)(actor + 0x10) & 0xfff00000) + (0xa0 << 14);

    if (!__TestCollision(actor, p)) {
        __CutsceneStart();
        __Actor_SetAnim(actor, 6);
        API_WaitFrames(6);
        __PlaySound(0x98);
        __Actor_SetAnim(actor, 7);
        *(int *)(actor + 0x30) = 0xc0 << 10;
        *(int *)(actor + 0x34) = 0x80 << 10;
        *(int *)(actor + 0x28) = 0x80 << 11;
        *pflags &= 0x7e;
        __Actor_SetSpriteFlags(actor, 0);
        API_MapActor_TravelToWait(0, ((short *)p)[1], ((short *)p)[5]);
        __Actor_SetAnim(actor, 6);
        __Actor_SetSpriteFlags(actor, 1);
        *pflags = orig_flags;
        __CutsceneEnd();
        return 1;
    }
    return 0;
}
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __SetCameraTarget(int, int);
extern void __Func_8093530(void);

INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_20091a0.s");



void OvlFunc_934_2009258(void)
{
    unsigned char *actor;

    if (API_GetFlag(0x200) == 0)
        return;

    if (API_GetFlag(0x201) != 0)
        return;

    API_SetFlag(0x201);
    API_SetFlag(0x302);
    __CutsceneStart();
    API_MapActor_Surprise(8, 0x102);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(0x14);
    API_MapActor_SetSpeed(8, 0x80 << 10, 0x80 << 9);
    API_MapActor_TravelToAnimWait(8, 0xbe << 2, 0x8c << 1);
    API_MapActor_TravelToAnimWait(8, 0xbe << 2, 0x9c << 1);
    API_MapActor_TravelToAnimWait(8, 0xc6 << 2, 0x9c << 1);
    API_CutsceneWait(0xa);
    API_Func_8092adc(8, 0xc000, 0x14);
    actor = __MapActor_GetActor(8);
    *(int (**)(int))(actor + 0x6c) = OvlFunc_934_2008cf8;
    __CutsceneEnd();
}


typedef struct { unsigned char _pad[0x30]; int speed; int accel; } ActorT;
extern unsigned char iwram_3001ebc[];
extern unsigned char L1f00[] __asm__(".Lm934_1f00");

void OvlFunc_934_2009300(void)
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
    if (__GetFlag(0x302) != 0) {
        gs = (unsigned char *)&gState;
        gs += 0x24a;
        if (*(short *)gs != 8) {
            p = base + (0xb6 << 1);
            r5 = *(short *)p;
            p1 = (ActorT *)__MapActor_GetActor(8);
            p2 = (ActorT *)__MapActor_GetActor(0);
            p1->speed = p2->speed;
            p1 = (ActorT *)__MapActor_GetActor(8);
            p2 = (ActorT *)__MapActor_GetActor(0);
            p1->accel = p2->accel;
            tbl = L1f00;
            idx = (r5 - 0x2d) << 3;
            idx2 = idx + 4;
            __MapActor_TravelToAnim(8, *(int *)(tbl + idx), *(int *)(tbl + idx2));
        }
    }
}

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);

void OvlFunc_934_2009378(void)
{
    __CutsceneStart();
    __MapActor_SetAnim(8, 0);
    __CutsceneEnd();
}
void OvlFunc_934_2009390(void)
{
    struct Pk stk;
    unsigned char *actor;

    __CutsceneStart();
    if (OvlFunc_934_2008758(&stk)) {
        OvlFunc_934_20088ec(stk);
        if ((stk.x >> 20) == 0x11) {
            int zero = 0;
            __MapActor_SetAnim(stk.b, 3);
            actor = __MapActor_GetActor(stk.b);
            actor += 0x55;
            *actor = zero;
            actor = __MapActor_GetActor(stk.b);
            *(int *)(actor + 0x44) = zero;
            __MapActor_TravelBy(stk.b, -0xc, zero);
            __MapActor_WaitMovement(stk.b);
            __MapActor_SetAnim(stk.b, 3);
            __Func_8092b08(0xa, 3);
            actor = __MapActor_GetActor(stk.b);
            actor += 0x55;
            *actor = 3;
            __MapActor_TravelBy(stk.b, -6, zero);
            actor = __MapActor_GetActor(stk.b);
            OvlFunc_934_2008cd0(actor);
            __MapActor_SetAnim(stk.b, 8);
            actor = __MapActor_GetActor(stk.b);
            {
                int two = 2;
                actor += 0x23;
                *actor = two;
                {
                    int four = 4;
                    OvlFunc_934_2008528(zero, stk.x >> 20, (stk.z >> 20) - 2, 1, four, zero);
                    OvlFunc_934_2008528(2, stk.x >> 20, (stk.z >> 20) - 2, 1, four, zero);
                    OvlFunc_934_2008528(2, 0x10, 0x12, 1, two, zero);
                    OvlFunc_934_2008528(zero, 0x10, 0x10, 1, four, zero);
                }
            }
            __SetFlag(0x203);
            __PlaySound(0xf0);
        }
    }
    __CutsceneEnd();
}

static inline void API_PlaySound(int s) { extern void __PlaySound(int); __PlaySound(s); }

void OvlFunc_934_20094ac(void)
{
    unsigned char *actor;

    __CutsceneStart();
    __CutsceneWait(10);
    API_MapActor_SetSpeed(0, 0x80 << 8, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, 8, 0);
    __CutsceneWait(4);
    API_PlaySound(0x90 << 1);
    API_PlaySound(0xef);
    API_MapActor_SetSpeed(9, 0x80 << 8, 0x1999);
    __MapActor_SetAnim(9, 2);
    actor = __MapActor_GetActor(9);
    {
        int zero = 0;
        actor += 0x55;
        *actor = zero;
        actor = __MapActor_GetActor(9);
        *(int *)(actor + 0x44) = zero;
        __MapActor_TravelBy(9, 12, 0);
        __MapActor_WaitMovement(0);
        __MapActor_SetAnim(0, 1);
        __MapActor_WaitMovement(9);
        API_PlaySound(0x90 << 1);
        API_PlaySound(0xd5);
        __MapActor_SetAnim(9, 3);
        actor = __MapActor_GetActor(9);
        actor += 0x55;
        *actor = 3;
        __MapActor_TravelBy(9, 6, zero);
        actor = __MapActor_GetActor(9);
        OvlFunc_934_2008cd0(actor);
        API_MapActor_SetAnim(9, 8);
        __Func_8092b08(9, 3);
        actor = __MapActor_GetActor(9);
        actor += 0x23;
        *actor = 2;
        {
            int four = 4;
            OvlFunc_934_2008528(zero, 0xc, 0x10, 1, four, zero);
            OvlFunc_934_2008528(zero, 0xd, 0x10, 1, four, zero);
        }
    }
    __SetFlag(0x202);
    API_PlaySound(0xf0);
    __CutsceneEnd();
}

void OvlFunc_934_20095cc(void)
{
    struct Pk stk;
    unsigned char *actor;

    __CutsceneStart();
    if (OvlFunc_934_2008758(&stk)) {
        OvlFunc_934_20088ec(stk);
        API_MapActor_SetAnim(0xb, 3);
        API_MapActor_SetSpeed(0xb, 0x80 << 7, 0x80 << 8);
        API_MapActor_TravelBy(0xb, 0, -0x10);
        API_CutsceneWait(0x2d);
        __PlaySound(0xf0);
        API_MapActor_SetAnim(0xb, 8);
        actor = __MapActor_GetActor(0xb);
        {
            int v = 2, zero = 0;
            actor[0x23] = v;
            OvlFunc_934_2008528(zero, 0xd, (stk.z >> 20) - 1, 4, v, zero);
        }
        if ((stk.z >> 20) == 0x14) {
            __SetFlag(0x205);
        } else {
            __SetFlag(0x81 << 2);
            __Func_8010704(0xe, 0x11, 2, 1, 0xe, 0x10);
            __Func_8010704(0xe, 0xd, 1, 1, 0xe, 0xf);
        }
    }
    __CutsceneEnd();
}


extern unsigned char Lm934_2420[] __asm__(".Lm934_2420");
extern unsigned char Lm934_2450[] __asm__(".Lm934_2450");
extern unsigned char Lm934_2624[] __asm__(".Lm934_2624");
extern unsigned char Lm934_2414[] __asm__(".Lm934_2414");

int ValeCave_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_5d) return (int)Lm934_2420;
    if (ev == (int)_EVENT_5e) return (int)Lm934_2450;
    if (ev == (int)_EVENT_5f) return (int)Lm934_2624;
    return (int)Lm934_2414;
}
extern void __Func_8092b08(int, int);
extern void OvlFunc_934_2009984(void);

int ValeCave_MapInit(void)
{
    unsigned int off;
    int *p;

    off = 0xe0;
    off <<= 1;
    p = (int *)(*(char **)iwram_3001ebc + off);
    *p = 0x204;
    if (*(short *)((char *)&gState + off) == (int)Lconst_5d) {
        *p = 0x100;
        __WaitFrames(1);
        __Func_8092b08(0xb, 3);
        __Func_8092b08(0xc, 3);
        __ClearFlag(0x12f);
    }
    OvlFunc_934_2009984();
    return 0;
}


void OvlFunc_934_2009748(void)
{
  char *new_var2;
  int r5;
  int off;
  int new_var;
  if (1)
  {
    off = 0xb6;
    off <<= 1;
    r5 = *((short *) (new_var2 = ((char *) (*((int *) iwram_3001ebc))) + off));
    __PlaySound(0x7b);
    new_var = r5;
    __Func_8091e9c(new_var);
  }
}

extern void OvlFunc_934_2009938(int, int, int);

void OvlFunc_934_2009770(void)
{
    int a = 0x17;
    int b = 0x22;
    __Func_8010704(0, 0x22, 0xd, 3, a, b);
    if (__GetFlag(0x301) != 0) {
        OvlFunc_934_2009938(0xb, 0x23, 0x23);
        __Func_8010704(0x18, 0x22, 1, 3, a, b);
    } else {
        OvlFunc_934_2009938(0xb, 0x17, 0x23);
        __Func_8010704(0x18, 0x22, 1, 3, 0x23, b);
    }
}

void OvlFunc_934_20097d8(int actor_id, int dx, int dz)
{
    unsigned char *leader;
    unsigned char *actor;
    int r2;
    int x;
    int z;

    r2 = 0xfa;
    r2 <<= 1;
    leader = (unsigned char *)__MapActor_GetActor(*(int *)((char *)&gState + r2));
    actor = (unsigned char *)__MapActor_GetActor(actor_id);
    __CutsceneStart();

    x = ((*(int *)(leader + 8) + (dx << 16)) & 0xfff00000) + (0x80 << 12);
    z = ((*(int *)(leader + 0x10) + (dz << 16)) & 0xfff00000) + (0x80 << 12);
    *(int *)(leader + 0x30) = 0x80 << 9;
    *(int *)(leader + 0x34) = 0x80 << 8;
    __Actor_TravelTo(leader, x, *(int *)(leader + 0xc), z);
    __Actor_SetAnim(leader, 0x1b);

    x = ((*(int *)(actor + 8) + (dx << 16)) & 0xfff00000) + (0x80 << 12);
    z = ((*(int *)(actor + 0x10) + (dz << 16)) & 0xfff00000) + (0x80 << 12);
    *(int *)(actor + 0x30) = 0x80 << 9;
    *(int *)(actor + 0x34) = 0x80 << 8;
    __Actor_TravelTo(actor, x, *(int *)(actor + 0xc), z);

    if (dx < 0 || dz < 0) {
        __Actor_SetAnim(actor, 4);
    } else {
        __Actor_SetAnim(actor, 3);
    }
    __Actor_WaitMovement(leader);
    __CutsceneEnd();
}


void OvlFunc_934_20098b4(void) {
    __PlaySound(0xf1);
    OvlFunc_934_20097d8(0xb, 0x70, 0);
    OvlFunc_934_20097d8(0xb, 0x50, 0);
    __SetFlag(0x301);
    __WaitFrames(2);
    OvlFunc_934_2009770();
    __PlaySound(0x121);
}


void OvlFunc_934_20098f4(void) {
    __PlaySound(0xf1);
    OvlFunc_934_20097d8(0xb, -0x70, 0);
    OvlFunc_934_20097d8(0xb, -0x50, 0);
    __ClearFlag(0x301);
    __WaitFrames(2);
    OvlFunc_934_2009770();
    __PlaySound(0x121);
}

INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_2009938.s");
INCLUDE_ASM("asm/maps/vale_cave/OvlFunc_934_2009984.s");


void OvlFunc_934_2009bfc(void)
{
	__MapActor_SetAnim(0xb, 1);
	__MapActor_SetAnim(0xb, 2);
}

