/* rom_7e3e08 (overlay file 957): consolidated TU — altmiller_cave map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"
#include "dma.h"
#include "message.h"

extern void __PlaySound(int);
extern void __Actor_SetAnim(void *, int);
extern unsigned char *__MapActor_GetActor(unsigned int);

extern unsigned int Lm957_3eb4[] __asm__(".Lm957_3eb4");

INCLUDE_ASM("asm/maps/altmiller_cave/exports.s");
extern unsigned char Lconst_97[] __asm__(".Lconst_97");
/* pooled literal (ldr rN, =0x97 in the original); .Lconst_<hex> naming as upstream map TUs, e.g. alpine_crossing.c */
__asm__(".equ .Lconst_97, 0x97");
extern short gState_s957[] __asm__("gState");
static inline void API_Func_8092950(int a, int b) { extern void __Func_8092950(int, int); __Func_8092950(a, b); }

extern int OvlFunc_957_20082a8();
extern void OvlFunc_957_2008abc();

extern int Func_8000948(int);

int OvlFunc_957_2008030(int *a, int *b)
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

void *OvlFunc_957_200806c(int *pos, void *self)
{
    int **list;
    int *e;
    unsigned int i;

    list = (int **)(*(unsigned int *)iwram_3001ebc + 0x14);
    for (i = 8; i <= 0x41; i++) {
        e = list[i];
        if ((pos[0] >> 20) == (e[2] >> 20)
            && pos[1] / 0x10000 == e[3] / 0x10000
            && (pos[2] >> 20) == (e[4] >> 20))
            return e;
    }
    return 0;
}

void OvlFunc_957_20080c4(void) {
    struct Actor *player;
    struct Actor *obj;
    struct Actor *res;
    int stk[3];
    unsigned int idx;
    unsigned int t;
    int speed;
    int zero;

    player = (struct Actor *)__MapActor_GetActor(0);
    idx = player->facing >> 12;
    t = Lm957_3eb4[idx];
    stk[0] = player->pos.x + (t & 0xffff0000);
    stk[1] = player->pos.y;
    t <<= 16;
    stk[2] = player->pos.z + t;
    obj = OvlFunc_957_200806c(stk, player);
    if (obj == 0) {
        return;
    }
    t = Lm957_3eb4[idx];
    stk[0] = obj->pos.x + (t & 0xffff0000);
    stk[1] = obj->pos.y;
    t <<= 16;
    stk[2] = obj->pos.z + t;
    res = OvlFunc_957_200806c(stk, obj);
    if (res != 0) {
        if (res->collision & 1) {
            return;
        }
    }
    stk[0] = obj->pos.x;
    stk[1] = obj->pos.y + (0x80 << 13);
    stk[2] = obj->pos.z;
    res = OvlFunc_957_200806c(stk, obj);
    if (res != 0) {
        if (res->collision & 1) {
            return;
        }
    }
    obj->layer = 2;
    t = Lm957_3eb4[idx];
    stk[0] = obj->pos.x + (t & 0xffff0000);
    stk[1] = obj->pos.y;
    t <<= 16;
    stk[2] = obj->pos.z + t;
    if (__TestCollision(obj, stk) > 0) {
        return;
    }
    zero = obj->__unk62;
    if (zero != 0) {
        return;
    }
    __Actor_SetAnim(player, 8);
    speed = 0x3333;
    API_WaitFrames(0xf);
    API_PlaySound(0xb9);
    obj->speed = speed;
    obj->accel = speed;
    API_Actor_TravelTo(obj, stk[0], stk[1], stk[2]);
    player->speed = speed;
    player->accel = speed;
    API_Actor_TravelTo(player, stk[0], stk[1], stk[2]);
    __Actor_WaitMovement(obj);
    API_MapActor_PlayPendingSound();
    obj->pos.x = stk[0];
    obj->pos.z = stk[2];
    obj->motion.x = zero;
    obj->motion.z = zero;
    player->prevPos.x = 0x80 << 24;
    player->prevPos.z = 0x80 << 24;
    player->motion.x = zero;
    player->motion.z = zero;
    player->pos.x = ((short *)&player->pos.x)[1] << 16;
    player->pos.z = ((short *)&player->pos.z)[1] << 16;
    __Actor_SetAnim(player, 1);
}

struct MapTile_OvlFunc_957_2008244 {
    unsigned short a;
    unsigned char b;
    unsigned char c;
};

extern unsigned char iwram_3001e70[];
extern unsigned char gBuffer[];

int OvlFunc_957_2008244(unsigned int layer, int x, int y, unsigned int w, unsigned int h, unsigned int val) {
    char *base;
    struct MapTile_OvlFunc_957_2008244 *buf;
    unsigned int i;
    unsigned int j;

    base = *(char **)iwram_3001e70;
    if (base == 0)
        return 0;

    if (layer <= 2) {
        int offset = 0x130 + layer * 0x30;
        buf = *(struct MapTile_OvlFunc_957_2008244 **)(base + offset);
    } else {
        buf = (struct MapTile_OvlFunc_957_2008244 *)gBuffer;
    }

    buf += x + (y << 7);
    for (i = 0; i < h; i++) {
        struct MapTile_OvlFunc_957_2008244 *row = buf + (i << 7);
        for (j = 0; j < w; j++) {
            row->b = val;
            row++;
        }
    }
    return 0;
}

extern int L3eb4[] __asm__(".Lm957_3eb4");
extern int L3ef4[] __asm__(".Lm957_3ef4");
extern void *OvlFunc_957_200806c(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_957_20082a8(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L3eb4[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_957_200806c(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L3ef4;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L3eb4[idx];
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

INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_200834c.s");

extern int L3f0c[] __asm__(".Lm957_3f0c");
extern void *OvlFunc_957_200834c(int *, void *, void *);

int OvlFunc_957_2008474(void *arg0)
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
    obj = OvlFunc_957_200834c(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = L3f0c[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L3f0c[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = L3f0c[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L3f0c[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L3eb4[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L3eb4[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (L3f0c[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (L3f0c[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L3eb4[dir] & 0xffff0000;
        cur[2] += L3eb4[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L3eb4[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

void __MapActor_SetSpeed(unsigned int, int, int);
extern void __MapActor_SetAnim(unsigned int, unsigned int);
extern void __MapActor_TravelBy(unsigned int, int, int);
extern void __Func_8010704(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);
extern void __Actor_TravelTo(void *, int, int, int);
void __MapActor_WaitMovement(unsigned int);
#include "field/push_block.h"

void OvlFunc_957_2008608(struct Pk arg)
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
    t1 = L3f0c[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L3f0c[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L3f0c[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L3f0c[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (L3f0c[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (L3f0c[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_957_2008244(0, vb[0], vb[2], w, h, 0);
    API_MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_957_20082a8;
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
    __MapActor_TravelBy(0, (short)(L3eb4[dir] >> 16) / 2, (short)(L3eb4[dir]) / 2);
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
    x1 += L3f0c[arg.a << 2] << 16;
    x2 += L3f0c[(arg.a << 2) + 1] << 16;
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
    OvlFunc_957_2008244(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_957_2008244(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (L3f0c[arg.a << 2] << 16);
    u2 = ap[2] + (L3f0c[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_957_2008244(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_20088c0.s");

extern void __Func_8091f14(int a, int b);

void OvlFunc_957_20089dc(void) {
    __Func_8091f14(0xd, 0x41);
}

extern unsigned char gOvl_0200bf70[];

unsigned int AltmillerCave_GetEntrances(void) {
    return (unsigned int)gOvl_0200bf70;
}

unsigned int AltmillerCave_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200c138[];

void *AltmillerCave_GetExits(void) {
    return (void *)gOvl_0200c138;
}

#include "state/global_state.h"
extern GlobalState gState;
extern unsigned char _EVENT_93[], _EVENT_94[], _EVENT_95[], _EVENT_96[], _EVENT_97[];
extern unsigned char Lm957_41b0[] __asm__(".Lm957_41b0");
extern unsigned char Lm957_4270[] __asm__(".Lm957_4270");
extern unsigned char Lm957_4318[] __asm__(".Lm957_4318");
extern unsigned char Lm957_4198[] __asm__(".Lm957_4198");

void *AltmillerCave_GetActors(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_93) return Lm957_41b0;
    if (ev == (int)_EVENT_95) return Lm957_4270;
    if (ev == (int)_EVENT_97) return Lm957_4318;
    return Lm957_4198;
}
INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_2008a54.s");

extern unsigned char ewram_2001004[];
extern unsigned char iwram_3001ebc[];
extern void OvlFunc_957_2008a54(void);

void OvlFunc_957_2008abc(unsigned int arg0) {
    unsigned char *ep = ewram_2001004;
    unsigned int r3 = *(unsigned int *)iwram_3001ebc;
    *ep = arg0;
    r3 += 0xcb8;
    if (*(short *)r3 == 0)
        OvlFunc_957_2008a54();
}


void OvlFunc_957_2008ae8(void) {
    OvlFunc_957_2008abc(0);
}


void OvlFunc_957_2008af4(void) {
    OvlFunc_957_2008abc(1);
}


void OvlFunc_957_2008b00(void) {
    OvlFunc_957_2008abc(2);
}


void OvlFunc_957_2008b0c(void) {
    OvlFunc_957_2008abc(3);
}


void OvlFunc_957_2008b18(void) {
    OvlFunc_957_2008abc(4);
}


void OvlFunc_957_2008b24(void) {
    OvlFunc_957_2008abc(5);
}

INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_2008b30.s");
extern void __Func_8092950(int, int);
extern short gState_sbc8[] __asm__("gState");
extern unsigned char Lconst_92[] __asm__(".Lconst_92");
/* pooled literal (ldr rN, =0x92 in the original); .Lconst_<hex> naming as upstream map TUs, e.g. alpine_crossing.c */
__asm__(".equ .Lconst_92, 0x92");

void OvlFunc_957_2008bc8(void)
{
    if (gState_sbc8[0xe0] == (int)Lconst_92) {
        int c = 0x1000;
        REG_BLDALPHA = c;
    }
    if (gState_sbc8[0xe0] == (int)Lconst_97) {
        __Func_8092950(0x10, 1);
        __Func_8092950(0x11, 4);
        __Func_8092950(0x12, 0xb);
        __Func_8092950(0x13, 2);
        __Func_8092950(0x14, 3);
    }
}

extern unsigned char iwram_3001f30__c[] __asm__("iwram_3001f30");
extern void OvlFunc_957_2008b30();
void OvlFunc_957_2008c2c(void)
{
    unsigned char *p = *(unsigned char **)iwram_3001f30__c;
    if (__GetFlag(0x200)) {
        OvlFunc_957_2008b30();
        p[0x34] = 1;
    }
    if (gState_s957[0xe0] == (int)Lconst_97) {
        API_Func_8092950(0x10, 6);
        API_Func_8092950(0x11, 6);
        API_Func_8092950(0x12, 6);
        API_Func_8092950(0x13, 6);
        API_Func_8092950(0x14, 6);
    }
}
void OvlFunc_957_2008c98(void)
{
    /* This function needs the array view of iwram_3001f30. */
    extern unsigned char iwram_3001f30__arr[] __asm__("iwram_3001f30");
    unsigned char *p;
    unsigned char *actor;
    unsigned char *new_actor;

    p = *(unsigned char **)iwram_3001f30__arr;
    actor = *(unsigned char **)(p + 0x10);
    __Func_8092adc(*(short *)(p + 0x18), 0x4000, 0);
    __Actor_SetColorswap(actor, 0);
    __CutsceneWait(0x14);
    new_actor = (unsigned char *)__CreateActor(0, *(int *)(actor + 8), *(int *)(actor + 0xc), *(int *)(actor + 0x10));
    if (new_actor != 0) {
        DMA3_COPY(actor, new_actor, 0x70);
        *(int *)(actor + 0x6c) = 0;
        *(unsigned char **)(p + 0x10) = new_actor;
        *(actor + 0x54) = 0;
    }
}

void OvlFunc_957_2008cf8(void) {
    struct Actor *a;

    a = (struct Actor *)__MapActor_GetActor(0xc);
    if (a->pos.x >> 20 == 0x1e) {
        if (a->pos.z >> 20 == 0x14) {
            a->__unk55 = 2;
            a->floorPos = 0;
            a->flags = 2;
            API_Func_8010704(0x1e, 0x14, 1, 1, 0x20, 0x14);
            API_SetFlag(0x212);
        }
    }
}

extern void OvlFunc_957_20080c4(void);
extern void OvlFunc_957_2008cf8(void);

void OvlFunc_957_2008d48(void)
{
	OvlFunc_957_20080c4();
	OvlFunc_957_2008cf8();
}

void OvlFunc_957_2008d58(void)
{
    extern unsigned char *iwram_3001f30;
    unsigned char *p;
    void *actor;
    int stk[3];

    p = iwram_3001f30;
    actor = __MapActor_GetActor(0xb);
    stk[0] = *(int *)((char *)actor + 8);
    stk[1] = *(int *)((char *)actor + 0xc);
    stk[2] = *(int *)((char *)actor + 0x10);
    if (__TestCollision(actor, stk) > 0) {
        *(p + 0x35) = 1;
    }
}

extern unsigned char *iwram_3001f30;

void OvlFunc_957_2008d90(void)
{
  unsigned char *p;
  int val;
  void *actor;
  int s1;
  int s2;

  p = iwram_3001f30;
  actor = __MapActor_GetActor(0xb);
  val = *(p + 0x35);
  val = val << 24;
  val = val >> 24;
  if (val == 0)
  {
    s1 = 0x49;
    s2 = 0x11;
    __Func_8010704(0x4c, 0x10, 1, 1, s1, s2);
    if (actor != 0)
    {
      *(unsigned char *)((char *)actor + 0x55) = 2;
      *(unsigned char *)((char *)actor + 0x23) = val;
    }
    __SetFlag(0x211);
  }
}

void OvlFunc_957_2008de8(void)
{
    extern int gState_i957[] __asm__("gState");
    extern void __vec3_translate(int dist, int angle, int *vec);
    extern void __CutsceneStart(void);
    extern void __CutsceneEnd(void);
    extern void __WaitFrames(int);
    extern void __Actor_SetSpriteFlags(struct Actor *, int);
    extern void __MapActor_TravelToWait(int, int, int);
    struct Actor *actor;
    u8 saved;
    int buf[3];
    int *v;

    actor = (struct Actor *)__MapActor_GetActor(gState_i957[0x1f4 / 4]);
    saved = actor->__unk55;
    v = buf;
    v[0] = actor->pos.x;
    v[1] = actor->pos.y;
    v[2] = actor->pos.z;
    {
        int ang = actor->facing & 0xf000;
        __vec3_translate(0x80 << 14, ang, v);
    }
    if (!__TestCollision(actor, (int *)v)) {
        __CutsceneStart();
        __Actor_SetAnim(actor, 6);
        __WaitFrames(6);
        __PlaySound(0x98);
        __Actor_SetAnim(actor, 7);
        actor->speed = 0xc0 << 10;
        actor->accel = 0x80 << 10;
        actor->motion.y = 0x80 << 11;
        actor->__unk55 &= 0x7e;
        __Actor_SetSpriteFlags(actor, 0);
        __MapActor_TravelToWait(0, ((short *)v)[1], ((short *)v)[5]);
        __Actor_SetAnim(actor, 6);
        __Actor_SetSpriteFlags(actor, 1);
        actor->__unk55 = saved;
        __CutsceneEnd();
    }
}

void OvlFunc_957_2008eac(void) {
    struct Pk buf;

    API_CutsceneStart();
    if (OvlFunc_957_2008474(&buf)) {
        OvlFunc_957_2008608(buf);
    }
    API_CutsceneEnd();
}

INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_2008ee0.s");
extern void __vec3_translate(int dist, int angle, int *vec);
void OvlFunc_957_2008f10(int id, int dist, int angle)
{
    int v[3];
    int x = 0x1f80000, z = 0x180000, h = 0x900000;
    struct Actor *a = (struct Actor *)__MapActor_GetActor(id);
    v[0] = x;
    v[2] = z;
    __vec3_translate(dist, angle, v);
    a->pos.x = v[0];
    a->pos.y = v[2];
    a->pos.z = h;
}

extern void OvlFunc_957_2008f10(int a, int b, int c);

void OvlFunc_957_2008f6c(int arg0) {
    int i;

    for (i = 0; i <= 4; i++) {
        OvlFunc_957_2008f10(i + 0xb, 0xc0 << 13, arg0);
        arg0 += (int)0xffffcccd;
    }
}

INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_2008f94.s");
INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_200909c.s");
INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_20093f8.s");
extern unsigned char AltmillerAfterChoiceMessage[] __asm__(".Lconst_2165");
/* pooled literal (ldr rN, =0x2165 in the original) */
__asm__(".equ .Lconst_2165, 0x2165");

void OvlFunc_957_200ac44(void)
{
    extern void __Func_808e118(void);
    extern int __Func_8091c7c(int, int);
    extern unsigned char *AltmillerEndActor(int) __asm__("__MapActor_GetActor");
    extern void __PlayMapMusic(void);
    extern int __ShowActorMessage_NoWait(int, int);
    int choice1;
    unsigned char *actor;
    int messageBase;

    API_SetFlag(0x960);
    API_PlaySound(24);
    API_CutsceneStart();
    __Func_808e118();
    API_MessageID(0x214f);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(20);
    API_ActorMessage(8, 0);
    API_CutsceneWait(10);
    API_Func_80933f8(0xf80000, -1, 0xb80000, 1);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(0, 0xf8, 0xc0);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_809233c(1, -16, 16, 0xc000);
    API_Func_809233c(3, 0, 16, 0xc000);
    API_Func_809233c(2, 16, 16, 0xc000);
    API_MapActor_WaitMovement(1);
    API_CutsceneWait(20);
    API_MapActor_Emote(2, 0x102, 0);
    API_CutsceneWait(0x28);
    API_ActorMessage(2, 0);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(20);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(8, 0x100, 0x28);
    API_ActorMessage(8, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(1, 2, 0x32);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(30);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_MapActor_Surprise(8, 0x102);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(30);
    API_ActorMessage(8, 0);
    API_CutsceneWait(20);
    API_MapActor_TurnToFaceActor(3, 2, 0x32);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(30);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(8, 0x100, 0x28);
    API_ActorMessage(8, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(3, 4);
    API_CutsceneWait(20);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(8, 0x105, 0x28);
    API_ActorMessage(8, 0);
    API_CutsceneWait(10);
    API_MapActor_Face(1, 0, 30);
    API_MapActor_Emote(1, 0x101, 0x28);
    API_ActorMessage(1, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(8, 0x102, 0x28);
    API_ActorMessage(8, 0);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(3, 4);
    API_CutsceneWait(20);
    API_ActorMessage(3, 0);
    API_CutsceneWait(30);
    API_MapActor_Emote(8, 0x106, 0x28);
    API_ActorMessage(8, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(1, 0x101, 0);
    API_MapActor_Emote(3, 0x101, 0);
    API_MapActor_Emote(2, 0x101, 0);
    API_CutsceneWait(0x3c);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(20);
    API_ActorMessage(2, 0);
    API_CutsceneWait(20);
    API_ActorMessage(8, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(1, 0x102, 0x28);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(20);
    API_ActorMessage(8, 0);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(20);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(8, 0x102, 0x28);
    __ShowActorMessage_NoWait(8, 0);
    API_MapActor_Face(1, 0, 0);
    API_MapActor_Face(2, 0, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 0) {
        API_MessageID(0x2164);
        API_CutsceneWait(20);
        API_MapActor_Emote(1, 0x100, 0x28);
        API_MapActor_SetSpeed(1, 0x20000, 0x10000);
        API_Func_8092304(1, 0, -16);
        API_CutsceneWait(10);
        API_MapActor_TurnToFaceActor(1, 0, 30);
        API_ActorMessage(1, 0);
    } else {
        API_MessageID(0x2168);
        API_CutsceneWait(10);
        API_MapActor_SetSpeed(1, 0x10000, 0x8000);
        API_Func_8092304(1, 0, -16);
        API_CutsceneWait(10);
        API_MapActor_TurnToFaceActor(1, 0, 30);
        API_MapActor_DoAnim(1, 3);
        API_CutsceneWait(20);
        API_ActorMessage(1, 0);
    }
    messageBase = (int)AltmillerAfterChoiceMessage;
    API_MessageID(messageBase);
    API_MapActor_Emote(2, 0x103, 0x28);
    API_MapActor_SetSpeed(2, 0x20000, 0x10000);
    API_Func_8092304(2, 0, -16);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(2, 0, 30);
    API_ActorMessage(2, 0);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(20);
    API_MapActor_Face(0, 3, 0);
    API_MapActor_Face(1, 3, 0);
    API_MapActor_Face(2, 3, 0);
    API_CutsceneWait(20);
    API_ActorMessage(3, 0);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(1, 0x10000, 0x8000);
    API_Func_8092304(1, 0, 16);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(1, 4);
    API_CutsceneWait(30);
    API_MapActor_Face(1, 0, 0);
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_CutsceneWait(30);
    API_MapActor_TurnToFaceActor(3, 2, 30);
    API_MapActor_DoAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(30);
    API_MapActor_SetSpeed(2, 0x10000, 0x8000);
    API_Func_8092304(2, 0, 16);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    messageBase += 7;
    API_Func_8092adc(2, 0xc000, 0);
    API_MessageID(messageBase);
    API_CutsceneWait(30);
    API_MapActor_Emote(8, 0x100, 0x28);
    API_ActorMessage(8, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(30);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(8, 0x108, 0x28);
    API_ActorMessage(8, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(30);
    API_ActorMessage(8, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(30);
    API_ActorMessage(8, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(1, 0, 0x32);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_CutsceneWait(30);
    API_ActorMessage(8, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(3, 0x101, 0x28);
    API_ActorMessage(3, 0);
    API_CutsceneWait(30);
    API_ActorMessage(8, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(1, 0, 0x32);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_CutsceneWait(30);
    API_ActorMessage(8, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(3, 2, 0x32);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(30);
    API_ActorMessage(8, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_CutsceneWait(30);
    API_ActorMessage(8, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(20);
    API_ActorMessage(2, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(8, 0x108, 0x32);
    API_ActorMessage(8, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(1, 0x101, 0x28);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(8, 0x102, 0x28);
    API_ActorMessage(8, 0);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(20);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(3, 4);
    API_CutsceneWait(20);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_MapActor_Face(0, 3, 0x28);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(30);
    API_MapActor_Face(1, 3, 0);
    API_MapActor_Face(2, 3, 0);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(30);
    API_PlaySound(17);
    API_MapActor_SetSpeed(1, 0x13333, 0x9999);
    API_MapActor_SetSpeed(2, 0x13333, 0x9999);
    API_MapActor_SetSpeed(3, 0x13333, 0x9999);
    API_MapActor_SetAnim(1, 2);
    actor = AltmillerEndActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(1, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetAnim(2, 2);
    actor = AltmillerEndActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(2, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(2);
    API_MapActor_SetPos(2, 0, 0);
    API_MapActor_SetAnim(3, 2);
    actor = AltmillerEndActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(3, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(3);
    API_MapActor_SetPos(3, 0, 0);
    __PlayMapMusic();
    API_CutsceneEnd();
}


extern int __Func_8091c7c(int, int);

void OvlFunc_957_200b4bc(void)
{
    int msg;

    API_CutsceneStart();
    msg = MSG_217f;
    API_MessageID(msg);
    __ShowActorMessage_NoWait(8, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        API_CutsceneWait(0x14);
        API_MessageID(msg + 1);
        API_ActorMessage(8, 0);
    } else {
        API_CutsceneWait(0x14);
        API_MessageID(msg + 2);
        API_ActorMessage(8, 0);
    }
    API_CutsceneEnd();
}

void OvlFunc_957_200b518(void)
{
    if (API_GetFlag(0x960) && !API_GetFlag(0x962)) {
        API_SetFlag(0x961);
        API_CutsceneStart();
        API_MessageID(0x217d);
        API_ActorMessage(8, 0);
        API_CutsceneWait(10);
        API_Func_80925cc(0, 2);
        API_CutsceneWait(30);
        API_MapActor_Face(0, 8, 0);
        API_CutsceneWait(30);
        API_ActorMessage(8, 0);
        API_MapActor_DoAnim(0, 3);
        API_CutsceneWait(20);
        API_CutsceneEnd();
    }
}
extern unsigned char Lm957_4688[] __asm__(".Lm957_4688");
extern unsigned char Lm957_4724[] __asm__(".Lm957_4724");
extern unsigned char Lm957_476c[] __asm__(".Lm957_476c");
extern unsigned char Lm957_4808[] __asm__(".Lm957_4808");
extern unsigned char Lm957_4850[] __asm__(".Lm957_4850");
extern unsigned char Lm957_45e0[] __asm__(".Lm957_45e0");

int AltmillerCave_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_93) return (int)Lm957_4688;
    if (ev == (int)_EVENT_94) return (int)Lm957_4724;
    if (ev == (int)_EVENT_95) return (int)Lm957_476c;
    if (ev == (int)_EVENT_96) return (int)Lm957_4808;
    if (ev == (int)_EVENT_97) return (int)Lm957_4850;
    return (int)Lm957_45e0;
}
void OvlFunc_957_200b610(struct Actor *actor)
{
    struct Actor *main_actor;

    if (actor != 0) {
        actor->flags = 0;
        main_actor = (struct Actor *)__MapActor_GetActor(0);
        actor->sprite->oam.priority = main_actor->sprite->oam.priority;
    }
}
INCLUDE_ASM("asm/maps/altmiller_cave/AltmillerCave_MapInit.s");
extern unsigned char iwram_3001800[];
extern int __Random(void);
extern void __vec3_translate(int dist, int angle, int *vec);
extern int __Func_809ba34(void *);
extern void __Func_809bb34(void *);

void OvlFunc_957_200ba30(void *arg0)
{
    int stk[3];
    signed char *state = (signed char *)((char *)arg0 + 0x40);

    if (*state == 0) {
        int v18 = *(int *)((char *)arg0 + 0x18);
        int v14 = *(int *)((char *)arg0 + 0x14);

        *(int *)((char *)arg0 + 8) = v18;
        stk[2] = v18;
        *(int *)((char *)arg0 + 4) = v14;
        stk[0] = v14;
        __vec3_translate(0x780000, __Random(), stk);
        *(int *)((char *)arg0 + 0xc) = stk[0];
        *(int *)((char *)arg0 + 0x10) = stk[2];
        *(int *)((char *)arg0 + 0x24) = 0x50000;
        *(int *)((char *)arg0 + 0x20) = 0x50000;
        *((unsigned char *)arg0 + 0x42) = 0;
        (*state)++;
        if ((*(unsigned int *)iwram_3001800 & 3) == 0)
            API_PlaySound(0x86);
    } else if (*state == 1) {
        if (__Func_809ba34(arg0) == 0)
            (*state)--;
    } else if (*state == 2) {
        if (__Func_809ba34(arg0) == 0)
            __Func_809bb34(arg0);
    }
}
INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_200bad4.s");
INCLUDE_ASM("asm/maps/altmiller_cave/altmiller_cave_data.s");

INCLUDE_ASM("asm/maps/altmiller_cave/imports.s");
