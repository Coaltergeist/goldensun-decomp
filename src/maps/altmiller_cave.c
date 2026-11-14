typedef union { int raw; struct { unsigned short lo; short hi; } half; } Fx32Parts;
/* rom_7e3e08 (overlay file 957): consolidated TU — altmiller_cave map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"
#include "field.h"
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

extern unsigned char ewram_2001004[];
extern unsigned char iwram_3001ebc[];
extern void OvlFunc_957_2008a54(void);

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
    player->pos.x = ((Fx32Parts *)&player->pos.x)->half.hi << 16;
    player->pos.z = ((Fx32Parts *)&player->pos.z)->half.hi << 16;
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

extern int PushBlockIds_957[] __asm__(".Lm957_3ef4");
extern int PushBlockBoxes_957[] __asm__(".Lm957_3f0c");
extern unsigned int PushBlockDirs_957[] __asm__(".Lm957_3eb4");
extern struct MapState *gPushBlockMapState __asm__("iwram_3001ebc");

void *OvlFunc_957_200834c(int *dir, void *arg1, void *arg2)
{
    struct MapState *map;
    unsigned char *hero;
    struct Actor **p_actor;
    struct Actor *actor;
    int *p;
    unsigned int i;
    short val;
    unsigned int k;
    int d;
    int hero_x;
    int target_x;
    int target_z;
    short ax;
    short az;
    int b_x1;
    int b_z1;
    int b_x2;
    int b_z2;

    map = gPushBlockMapState;
    hero = (unsigned char *)__MapActor_GetActor(0);
    *dir = *(unsigned short *)(hero + 6) >> 12;

    p_actor = (struct Actor **)&map->actors[8];
    for (i = 8; i <= 0x41; p_actor++, i++) {
        actor = *p_actor;
        p = *(int **)((char *)actor + 0x50);
        p = *(int **)((char *)p + 0x28);
        k = 0;
        val = *(short *)p;
        for (; k <= 5; k++) {
            if (val == PushBlockIds_957[k]) {
                *(int *)arg2 = k;
                hero_x = *(int *)(hero + 8) >> 16;
                d = PushBlockDirs_957[*dir];
                target_x = (hero_x + (d >> 16)) >> 4;
                target_z = ((*(int *)(hero + 16) >> 16) + (short)d) >> 4;

                ax = *(short *)((char *)actor + 10);
                b_x1 = (ax + PushBlockBoxes_957[k * 4 + 0]) >> 4;
                az = *(short *)((char *)actor + 18);
                b_z1 = (az + PushBlockBoxes_957[k * 4 + 1]) >> 4;
                b_x2 = (ax + PushBlockBoxes_957[k * 4 + 2]) >> 4;
                b_z2 = (az + PushBlockBoxes_957[k * 4 + 3]) >> 4;

                if (b_x1 <= target_x && target_x < b_x2 &&
                    b_z1 <= target_z && target_z < b_z2) {
                    if (k & 1) {
                        if (b_x1 != *(int *)(hero + 8) >> 20) {
                            *(int *)arg1 = i;
                            return actor;
                        }
                    } else {
                        if (b_z1 != *(int *)(hero + 16) >> 20) {
                            *(int *)arg1 = i;
                            return actor;
                        }
                    }
                }
            }
        }
    }

    return 0;
}

extern int L3f0c[] __asm__(".Lm957_3f0c");

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

int OvlFunc_957_20088c0(unsigned int actorId)
{
    struct Pk arg;
    unsigned char *env;
    unsigned char *actor;
    unsigned int i;
    int t3;
    int t4;
    int h;
    int w;
    int t1;
    int t2;
    int raw;
    int camz;
    int s5;
    int s6;

    env = (unsigned char *)*(int *)iwram_3001e70;
    actor = (unsigned char *)__MapActor_GetActor(actorId);
    for (i = 0; i <= 5; i++) {
        if (*(short *)(*(int **)((char *)*(int **)(actor + 0x50) + 0x28)) == L3ef4[i]) {
            arg.a = i;
            break;
        }
        arg.a = 7;
    }
    if ((unsigned int)arg.a > 6) {
        return 0;
    }
    arg.x = *(int *)(actor + 8);
    arg.y = *(int *)(actor + 0xc);
    arg.z = *(int *)(actor + 0x10);
    t1 = L3f0c[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L3f0c[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t3 = L3f0c[arg.a << 2];
    if (t3 < 0) t3 = -t3;
    t4 = L3f0c[(arg.a << 2) + 2];
    if (t4 < 0) t4 = -t4;
    w = (t3 + t4) >> 4;
    arg.x += L3f0c[arg.a << 2] << 16;
    arg.z += L3f0c[(arg.a << 2) + 1] << 16;
    arg.x >>= 20;
    arg.z >>= 20;
    raw = *(int *)(env + 0x13c);
    i = raw >> 20;
    raw = *(int *)(env + 0x140);
    camz = raw >> 20;
    s5 = i + arg.x;
    s6 = camz + arg.z;
    __Func_8010704(arg.x, arg.z, w, h, s5, s6);
    OvlFunc_957_2008244(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_957_2008244(2, arg.x, arg.z, w, h, 0xff);
    return 1;
}

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

extern unsigned char iwram_3001ebc[];
extern void __Func_808fe38(int);
extern void OvlFunc_957_2008a54(void);

static inline void SetBldCnt957(int v)
{
    REG_BLDCNT = v;
}

static inline void SetBldAlpha957(int v)
{
    REG_BLDALPHA = v;
}

static inline void WriteU16_957(unsigned short *addr, int val)
{
    *addr = val;
}

void OvlFunc_957_2008b30(void)
{
    unsigned char *base;
    unsigned char *p;

    base = *(unsigned char **)iwram_3001ebc;
    *(unsigned int *)(base + 0x1c0) = 0x100;
    *(unsigned int *)(base + 0x1c8) = 0x18;
    API_WaitFrames(1);
    __Func_808fe38(0x4d);
    p = *(unsigned char **)(iwram_3001ebc + 0x10);
    WriteU16_957((unsigned short *)(p + 0x52a), 5);
    if (API_GetFlag(0x201)) {
        WriteU16_957((unsigned short *)(p + 0x534), 0x1d1d);
        WriteU16_957((unsigned short *)(p + 0x536), 0x3f);
        OvlFunc_957_2008a54();
    } else {
        WriteU16_957((unsigned short *)(p + 0x534), 0x3f3f);
        WriteU16_957((unsigned short *)(p + 0x536), 0x1f);
        SetBldCnt957(0x3f42);
        SetBldAlpha957(0xc04);
    }
}

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

extern unsigned int L4468[] __asm__(".Lm957_4468");

void OvlFunc_957_2008ee0(struct Actor *actor)
{
    unsigned int val = L4468[(actor->waveCounter >> 2) & 3];
    int next;
    actor->scale.x = val;
    actor->scale.y = val;
    next = ((unsigned short)actor->waveCounter + 1) & 0xf;
    actor->waveCounter = next;
}
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

struct Struct_3f6c {
    s16 unk0;
    s16 unk2;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unk10;
};

extern struct Struct_3f6c *L3f6c __asm__(".Lm957_3f6c");
extern signed char ewram_2001002[];
extern int _divsi3_RAM(int, int);
extern void OvlFunc_957_2008ee0(struct Actor *);
extern void OvlFunc_957_2008f6c(int);

void OvlFunc_957_2008f94(void)
{
    struct Struct_3f6c *p = L3f6c;
    int run = 1;
    s16 state = p->unk0;

    if (state == 0) {
        if ((u32)((p->unk8 += 0x10) << 16) > 0x0bff0000) {
            p->unk0++;
            p->unk2 = 0;
        }
    } else if (state == 1) {
        if (p->unk2 == 30) {
            p->unk0++;
        }
    } else if (state == 2) {
        if ((u32)((p->unk8 += 0xfff8) << 16) <= 0x02ff0000) {
            p->unk0++;
        }
    } else if (state == 3) {
        signed char actorIdx = ewram_2001002[0];
        int div = _divsi3_RAM(actorIdx << 16, 5);

        if ((u32)(((p->unk6 - div) << 16) + 0xc2ff0000) <= 0x05fe0000) {
            struct Actor *actor;
            p->unk6 = div + 0x4000;
            p->unk0 = 99;
            p->unk8 = 0;
            actor = (struct Actor *)__MapActor_GetActor(actorIdx + 11);
            actor->update = (actorfun_t)OvlFunc_957_2008ee0;
        }
    } else if (state == 99) {
        run = 0;
    }

    if (run) {
        struct Struct_3f6c *p2 = L3f6c;
        p2->unk6 += p2->unk8;
        OvlFunc_957_2008f6c(p2->unk6);
        {
            struct Struct_3f6c *p3 = L3f6c;
            if ((u32)((p3->unk10 += p3->unk8) << 16) > 0x30000000) {
                p3->unk10 = 0;
                __PlaySound(0x87);
            }
        }
    }
    L3f6c->unk2++;
}

INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_200909c.s");

void OvlFunc_957_20093f8(void)
{
    extern unsigned char gScript_957__0200c478[];
    extern unsigned char gScript_957__0200c4c8[];
    extern unsigned char gScript_957__0200c518[];
    extern unsigned char gScript_957__0200c57c[];
    extern unsigned char CS_iwram_3001ecc[] __asm__("iwram_3001ecc");
    extern void __FieldMove(int);
    extern unsigned int __Func_8078a08(unsigned int);
    extern void __Func_808e118(void);
    extern int __Func_8091c7c(int, int);
    extern void __Func_8096fb0(int, int);
    extern void __Func_80970f8(int, int);
    extern void __Func_8097174(void);
    extern void __Func_809728c(void);
    extern unsigned char *__MapActor_GetActor(unsigned int);
    extern void __MapActor_SetExtra(int, int);
    extern void __PlayMapMusic(void);
    extern int __ShowActorMessage_NoWait(int, int);
    struct Actor *spriteActor;
    int blinkCount;
    int savedX;
    int savedZ;
    struct GraphicFade957 {
        unsigned char pad0[0x52a];
        unsigned short unk52a : 16;
        unsigned char pad1[0x536 - 0x52c];
        unsigned short unk536 : 16;
    } *graphicsState;
    int blendStep;
    int blendOther;
    int choice1;
    int choice2;
    int choice4;
    int choice5;
    struct Actor *actor;

    API_SetFlag(0x962);
    __Func_8078a08(0xed);
    API_CutsceneStart();
    __Func_808e118();
    API_Func_80925cc(8, 2);
    API_CutsceneWait(20);
    API_MessageID(0x2183);
    API_ActorMessage(8, 0);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(0, 0xe8, 0xa0);
    API_Func_8092adc(0, 0xc000, 0);
    API_CutsceneWait(0x32);
    API_CutsceneWait(10);
    API_Func_80933f8(0x1080000, -1, 0xc80000, 1);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(0, 0x108, 0xd0);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_809233c(1, -16, 16, 0xc000);
    API_Func_809233c(3, 0, 16, 0xc000);
    API_Func_809233c(2, 16, 16, 0xc000);
    API_MapActor_WaitMovement(1);
    API_CutsceneWait(20);
    API_CutsceneWait(10);
    API_MapActor_Emote(8, 0x108, 0x28);
    API_ActorMessage(8, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(3, 2, 0x32);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(20);
    spriteActor = (struct Actor *)__MapActor_GetActor(8);
    API_CutsceneWait(30);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(30);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(30);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(0x3c);
    API_PlaySound(17);
    spriteActor->sprite->rotation = 0;
    API_MapActor_Jump(8, 10, 0x46);
    for (blinkCount = 0; blinkCount < 30; blinkCount++) {
        spriteActor->sprite->oam.priority = 0;
        API_CutsceneWait(2);
        spriteActor->sprite->oam.priority = 2;
        API_CutsceneWait(2);
    }
    API_CutsceneWait(0x28);
    actor = (struct Actor *)__MapActor_GetActor(8);
    savedX = actor->pos.x >> 16;
    actor = (struct Actor *)__MapActor_GetActor(8);
    savedZ = actor->pos.z >> 16;
    API_MapActor_SetPos(8, 0, 0);
    API_MapActor_SetPos(9, savedX << 16, savedZ << 16);
    spriteActor->sprite->flags = 0;
    API_PlaySound(30);
    API_MapActor_SetSpeed(9, 0xcccc, 0x6666);
    API_Func_8092304(9, 0x20, 0x20);
    API_Func_8092adc(9, 0x4000, 0);
    API_CutsceneWait(20);
    ((struct Actor *)__MapActor_GetActor(0))->__unk5A &= ~1;
    ((struct Actor *)__MapActor_GetActor(1))->__unk5A &= ~1;
    ((struct Actor *)__MapActor_GetActor(3))->__unk5A &= ~1;
    ((struct Actor *)__MapActor_GetActor(2))->__unk5A &= ~1;
    API_Func_80922c4(0, 0, 16);
    API_Func_80922c4(1, 0, 16);
    API_Func_80922c4(3, 0, 16);
    API_Func_8092304(2, 0, 16);
    ((struct Actor *)__MapActor_GetActor(0))->__unk5A |= 1;
    ((struct Actor *)__MapActor_GetActor(1))->__unk5A |= 1;
    ((struct Actor *)__MapActor_GetActor(3))->__unk5A |= 1;
    ((struct Actor *)__MapActor_GetActor(2))->__unk5A |= 1;
    API_MapActor_SetAnim(0, 1);
    API_MapActor_SetAnim(1, 1);
    API_MapActor_SetAnim(3, 1);
    API_MapActor_SetAnim(2, 1);
    API_WaitFrames(1);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(30);
    API_Func_809259c(0, 2);
    API_Func_809259c(1, 2);
    API_Func_809259c(3, 2);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(20);
    API_CutsceneWait(10);
    API_MapActor_Emote(9, 0x105, 0x28);
    API_ActorMessage(9, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(1, 0x100, 0x28);
    API_MapActor_Jump(1, 4, 13);
    API_MapActor_Jump(1, 4, 30);
    API_ActorMessage(1, 0);
    API_MapActor_Face(2, 1, 30);
    API_MapActor_Emote(2, 0x105, 0x28);
    API_ActorMessage(2, 0);
    API_MapActor_Face(1, 2, 30);
    API_MapActor_Emote(1, 0x102, 0x28);
    API_ActorMessage(1, 0);
    API_MapActor_DoAnim(9, 4);
    API_CutsceneWait(30);
    __ShowActorMessage_NoWait(9, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 0) {
        API_CutsceneWait(10);
        API_MapActor_DoAnim(9, 3);
        API_CutsceneWait(30);
        API_MessageID(0x218a);
        API_ActorMessage(9, 0);
    } else {
        API_MessageID(0x218b);
        API_ActorMessage(9, 0);
    }
    API_MessageID(0x218c);
    API_CutsceneWait(10);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(20);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(20);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(9, 0x101, 0x28);
    API_ActorMessage(9, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(1, 0, 0);
    API_MapActor_TurnToFaceActor(3, 2, 0x32);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(30);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(9, 3);
    API_CutsceneWait(30);
    API_ActorMessage(9, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(2, 0x101, 0x28);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(30);
    API_ActorMessage(2, 0);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(2, 0x10000, 0x8000);
    API_Func_8092304(2, 0, -0x30);
    API_Func_8092adc(2, 0x8000, 0);
    API_CutsceneWait(0x28);
    __Func_8096fb0(0x8d, 1);
    __Func_80970f8(2, 9);
    __Func_809728c();
    __FieldMove(1);
    API_CutsceneWait(0x96);
    __FieldMove(2);
    __Func_8097174();
    API_MapActor_SetAnim(2, 1);
    API_CutsceneWait(10);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(0x28);
    API_CutsceneWait(10);
    API_MapActor_Emote(3, 0x101, 0x28);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(2, 0x102, 0x28);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(0, 0x102, 0);
    API_MapActor_Emote(1, 0x102, 0);
    API_MapActor_Emote(3, 0x102, 0x28);
    API_CutsceneWait(10);
    API_Func_8092adc(2, 0x4000, 0);
    API_CutsceneWait(30);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_Jump(9, 4, 13);
    API_MapActor_Jump(9, 4, 30);
    API_Func_8092adc(9, 0, 0);
    API_CutsceneWait(30);
    API_ActorMessage(9, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(9, 0x102, 0x32);
    API_Func_8092adc(9, 0x4000, 0);
    API_CutsceneWait(30);
    API_ActorMessage(9, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(9, 0x100, 0x28);
    API_ActorMessage(9, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(30);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(3, 0x101, 0x28);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(9, 0x101, 0x28);
    API_ActorMessage(9, 0);
    API_CutsceneWait(0x32);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(10);
    API_Func_8092adc(2, 0x8000, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(20);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(2, 0x10000, 0x8000);
    API_Func_8092304(2, 0, 0x30);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(1, 0, 0);
    API_MapActor_TurnToFaceActor(3, 2, 0x32);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(0x32);
    API_Func_8092adc(0, 0xc000, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(9, 4);
    API_CutsceneWait(30);
    API_ActorMessage(9, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(2, 0x102, 0x28);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(9, 3);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(1, 4);
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(9, 4);
    API_CutsceneWait(30);
    API_ActorMessage(9, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(0, 0x100, 0);
    API_MapActor_Emote(1, 0x100, 0);
    API_MapActor_Emote(3, 0x100, 0);
    API_MapActor_Emote(2, 0x100, 0x50);
    API_CutsceneWait(20);
    API_Func_8092adc(9, 0xc000, 0);
    API_CutsceneWait(0x32);
    API_ActorMessage(9, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(2, 0x101, 0x28);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(20);
    API_CutsceneWait(10);
    API_MapActor_Emote(3, 0x101, 0x28);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(20);
    API_CutsceneWait(10);
    API_MapActor_Emote(1, 0x101, 0x28);
    __ShowActorMessage_NoWait(1, 0);
    choice2 = __Func_8091c7c(0, 0);
    if (choice2 == 0) {
        API_MessageID(0x21a4);
        API_ActorMessage(1, 0);
    } else {
        API_MessageID(0x21a5);
        API_ActorMessage(1, 0);
    }
    API_MessageID(0x21a6);
    API_CutsceneWait(10);
    API_MapActor_Emote(9, 0x100, 0x28);
    API_Func_8092adc(9, 0x4000, 0);
    API_CutsceneWait(10);
    API_ActorMessage(9, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(1, 0x102, 0x28);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(1, 0, 0x32);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(30);
    __ShowActorMessage_NoWait(9, 0);
    API_MessageID(0x21a8);
    __Func_8091c7c(0, 0);
    graphicsState = *(struct GraphicFade957 **)CS_iwram_3001ecc;
    graphicsState->unk52a = 0x20;
    blendStep = 0;
    blendOther = 16;
    do {
        SET_IO(REG_BLDCNT, 0x3f42);
        REG_BLDALPHA = (blendStep << 8) | blendOther;
        blendStep += 1;
        API_WaitFrames(7);
        blendOther -= 1;
    } while (blendStep <= 16);
    graphicsState->unk536 = 0x3f3f;
    API_MapActor_SetPos(10, 0x1180000, 0x1300000);
    API_MapActor_SetPos(11, 0x1280000, 0x1300000);
    API_ActorMessage(10, 0);
    API_Func_8092adc(2, 0x4000, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(3, 0x4000, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(1, 0x4000, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0x4000, 0);
    API_CutsceneWait(10);
    API_CutsceneWait(10);
    API_SetCameraTarget(10, 1);
    API_Func_8093530();
    API_CutsceneWait(0x46);
    API_MapActor_Emote(11, 0x102, 0x28);
    API_ActorMessage(11, 0);
    __MapActor_SetExtra(0, 10);
    __MapActor_SetExtra(1, 10);
    __MapActor_SetExtra(3, 10);
    __MapActor_SetExtra(2, 10);
    API_MapActor_SetSpeed(10, 0x16666, 0xb333);
    API_MapActor_SetSpeed(11, 0x16666, 0xb333);
    API_MapActor_SetBehavior(10, (int)gScript_957__0200c478);
    API_CutsceneWait(3);
    API_Func_8092304(11, -16, 0);
    API_MapActor_SetBehavior(11, (int)gScript_957__0200c478);
    API_MapActor_WaitScript(10);
    API_Func_8092304(10, 0, -16);
    API_MapActor_WaitScript(11);
    API_Func_8092adc(10, 0, 0);
    API_Func_8092adc(11, 0, 0);
    API_MapActor_SetIdle(0);
    API_MapActor_SetIdle(1);
    API_MapActor_SetIdle(3);
    API_MapActor_SetIdle(2);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_Func_8092adc(9, 0x8000, 0);
    API_Func_80933f8(0xf80000, -1, 0xd80000, 1);
    API_Func_8093530();
    API_CutsceneWait(20);
    API_CutsceneWait(10);
    API_Func_80925cc(10, 2);
    API_CutsceneWait(20);
    API_ActorMessage(10, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(9, 0x2000, 0);
    API_CutsceneWait(20);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(0x32);
    API_CutsceneWait(10);
    API_MapActor_Emote(11, 0x101, 0x28);
    API_ActorMessage(11, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(20);
    API_Func_8092adc(9, 0x8000, 0);
    API_CutsceneWait(10);
    API_ActorMessage(9, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(10, 0x102, 0x28);
    API_ActorMessage(10, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(9, 0x102, 0x28);
    API_ActorMessage(9, 0);
    API_Func_8092304(11, 16, 0);
    API_CutsceneWait(20);
    API_Func_80925cc(11, 2);
    API_CutsceneWait(20);
    API_ActorMessage(11, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(20);
    API_ActorMessage(9, 0);
    API_Func_8092304(10, 16, 0);
    API_CutsceneWait(20);
    API_ActorMessage(10, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(9, 0x100, 0x28);
    API_ActorMessage(9, 0);
    API_CutsceneWait(10);
    API_MapActor_Jump(11, 4, 13);
    API_MapActor_Jump(11, 4, 30);
    API_ActorMessage(11, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(9, 0x102, 0x28);
    API_ActorMessage(9, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(10, 3);
    API_CutsceneWait(30);
    API_ActorMessage(10, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(9, 0x2000, 0);
    API_CutsceneWait(30);
    API_ActorMessage(9, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(10, 0x2000, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(11, 0x2000, 0);
    API_CutsceneWait(0x46);
    API_Func_8092adc(11, 0, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(10, 0, 0);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_Emote(11, 0x101, 0x28);
    API_ActorMessage(11, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(9, 0x102, 0x28);
    API_CutsceneWait(20);
    API_Func_8092adc(9, 0x8000, 0);
    API_CutsceneWait(30);
    API_ActorMessage(9, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(10, 11, 0x46);
    API_Func_8092adc(10, 0x2000, 0);
    API_Func_8092adc(11, 0x2000, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(10, 3);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(11, 3);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_Func_80925cc(11, 2);
    API_CutsceneWait(20);
    API_ActorMessage(11, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(1, 0, 0);
    API_MapActor_TurnToFaceActor(3, 2, 0x32);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(3, 3);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_Emote(11, 0x108, 0x28);
    API_ActorMessage(11, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(10, 0, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(11, 0, 0);
    API_CutsceneWait(30);
    API_Func_80925cc(10, 2);
    API_CutsceneWait(20);
    API_ActorMessage(10, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(9, 0x102, 0x28);
    API_ActorMessage(9, 0);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(10, 3);
    API_MapActor_DoAnim(11, 3);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(9, 3);
    API_CutsceneWait(0x28);
    __MapActor_SetExtra(0, 9);
    __MapActor_SetExtra(1, 9);
    __MapActor_SetExtra(3, 9);
    __MapActor_SetExtra(2, 9);
    API_MapActor_SetSpeed(9, 0x10000, 0x8000);
    API_Func_8092304(9, -16, 0);
    API_Func_80922c4(10, 0, 0x30);
    API_Func_80922c4(11, 0, 0x30);
    API_Func_8092304(9, -16, 0);
    API_Func_8092304(9, 0, 0x20);
    API_MapActor_SetAnim(10, 1);
    API_MapActor_SetAnim(11, 1);
    API_MapActor_SetIdle(0);
    API_MapActor_SetIdle(1);
    API_MapActor_SetIdle(3);
    API_MapActor_SetIdle(2);
    API_CutsceneWait(10);
    API_MapActor_Emote(9, 0x100, 0x28);
    API_Func_8092adc(9, 0, 0);
    API_CutsceneWait(20);
    API_ActorMessage(9, 0);
    API_Func_8092adc(10, 0xc000, 0);
    API_Func_8092adc(11, 0xc000, 0);
    API_CutsceneWait(30);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_MapActor_Face(1, 0, 30);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    API_MapActor_Face(1, 9, 30);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(30);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(30);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(20);
    API_ActorMessage(9, 0);
    API_CutsceneWait(20);
    API_Func_8092adc(9, 0x4000, 0);
    API_CutsceneWait(0x46);
    API_Func_8092adc(9, 0, 0);
    API_CutsceneWait(20);
    API_ActorMessage(9, 0);
    API_CutsceneWait(20);
    API_Func_8092adc(9, 0x4000, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(9, 3);
    API_CutsceneWait(30);
    API_MapActor_SetBehavior(11, (int)gScript_957__0200c4c8);
    API_MapActor_SetBehavior(10, (int)gScript_957__0200c518);
    API_MapActor_SetBehavior(9, (int)gScript_957__0200c57c);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(1, 0, 0);
    API_MapActor_TurnToFaceActor(3, 2, 0);
    API_MapActor_WaitScript(9);
    API_ActorMessage(9, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(0, 0x100, 0);
    API_MapActor_Emote(1, 0x100, 0);
    API_MapActor_Emote(2, 0x100, 0);
    API_MapActor_Emote(3, 0x100, 0x28);
    API_Func_8092adc(0, 0x4000, 0);
    API_Func_8092adc(1, 0x4000, 0);
    API_Func_8092adc(3, 0x4000, 0);
    API_Func_8092adc(2, 0x4000, 0);
    API_CutsceneWait(20);
    API_Func_80933f8(0xf80000, -1, 0xf80000, 1);
    API_Func_8093530();
    API_CutsceneWait(20);
    API_Func_8092adc(9, 0xc000, 0);
    API_CutsceneWait(20);
    API_ActorMessage(9, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(10, 2);
    API_CutsceneWait(20);
    API_Func_8092adc(10, 0x8000, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(11, 0x8000, 0);
    API_CutsceneWait(20);
    API_ActorMessage(10, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(11, 4);
    API_CutsceneWait(30);
    API_ActorMessage(11, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(9, 0x107, 0x28);
    API_Func_8092adc(9, 0, 0);
    API_CutsceneWait(20);
    API_ActorMessage(9, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(10, 0x102, 0);
    API_MapActor_Emote(11, 0x102, 0x28);
    API_CutsceneWait(30);
    API_MapActor_Face(10, 11, 0x3c);
    API_Func_8092adc(10, 0x8000, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(10, 3);
    API_CutsceneWait(0x28);
    API_Func_8092adc(9, 0xc000, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(9, 3);
    API_CutsceneWait(30);
    API_ActorMessage(9, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(9, 3);
    API_CutsceneWait(30);
    API_Func_8092adc(9, 0, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(9, 3);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(10, 3);
    API_MapActor_DoAnim(11, 3);
    API_CutsceneWait(0x28);
    API_Func_8092adc(10, 0, 0);
    API_CutsceneWait(20);
    API_Func_8092adc(11, 0, 0);
    API_CutsceneWait(0x28);
    API_Func_80922c4(9, 0x20, 0);
    API_Func_80922c4(11, 0, 0x40);
    API_Func_8092304(10, 16, 0);
    API_Func_80922c4(10, 0, 0x40);
    API_MapActor_WaitMovement(9);
    API_Func_8092304(9, 0, 0x40);
    API_MapActor_SetPos(9, 0, 0);
    API_MapActor_SetPos(10, 0, 0);
    API_MapActor_SetPos(11, 0, 0);
    API_CutsceneWait(20);
    blendStep = 0;
    blendOther = 16;
    do {
        SET_IO(REG_BLDCNT, 0x3f42);
        REG_BLDALPHA = (blendOther << 8) | blendStep;
        blendStep += 1;
        API_WaitFrames(7);
        blendOther -= 1;
    } while (blendStep <= 16);
    graphicsState->unk52a = 5;
    graphicsState->unk536 = 31;
    API_WaitFrames(1);
    SET_IO(REG_BLDCNT, 0x3f42);
    SET_IO(REG_BLDALPHA, 0xc04);
    API_Func_8093500(0, 1);
    API_Func_8093530();
    API_CutsceneWait(10);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(30);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(3, 0x102, 0x28);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_MapActor_Face(1, 0, 0);
    API_CutsceneWait(20);
    __ShowActorMessage_NoWait(1, 0);
    API_MapActor_Face(3, 0, 0);
    API_MapActor_Face(2, 0, 0);
    choice4 = __Func_8091c7c(0, 0);
    if (choice4 == 0) {
        API_CutsceneWait(10);
        API_Func_80925cc(1, 2);
        API_CutsceneWait(20);
        API_MessageID(0x21ce);
        API_ActorMessage(1, 0);
    } else {
        API_CutsceneWait(10);
        API_Func_80925cc(1, 2);
        API_CutsceneWait(20);
        API_MessageID(0x21cf);
        API_ActorMessage(1, 0);
    }
    API_MessageID(0x21d0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(2, 4);
    API_CutsceneWait(30);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(30);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(1, 0x102, 0x28);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(30);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(20);
    API_ActorMessage(3, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(1, 0x100, 0x28);
    API_ActorMessage(1, 0);
    __ShowActorMessage_NoWait(1, 0);
    choice5 = __Func_8091c7c(0, 0);
    if (choice5 == 0) {
        API_CutsceneWait(10);
        API_MapActor_DoAnim(1, 3);
        API_CutsceneWait(30);
        API_MessageID(0x21d7);
        API_ActorMessage(1, 0);
        API_CutsceneWait(10);
        API_MapActor_TurnToFaceActor(3, 2, 0x32);
        API_Func_8092adc(3, 0xc000, 0);
        API_Func_8092adc(2, 0xc000, 0);
        API_CutsceneWait(30);
        API_ActorMessage(2, 0);
        API_CutsceneWait(20);
        API_MapActor_SetAnim(0, 3);
        API_MapActor_SetAnim(1, 3);
        API_MapActor_SetAnim(3, 3);
        API_MapActor_DoAnim(2, 3);
        API_CutsceneWait(30);
    } else {
        API_CutsceneWait(10);
        API_MapActor_DoAnim(1, 4);
        API_CutsceneWait(30);
        API_MessageID(0x21d9);
        API_ActorMessage(1, 0);
        API_CutsceneWait(10);
        API_MapActor_TurnToFaceActor(3, 2, 0x32);
        API_Func_8092adc(3, 0xc000, 0);
        API_Func_8092adc(2, 0xc000, 0);
        API_CutsceneWait(30);
        API_ActorMessage(2, 0);
        API_CutsceneWait(10);
        API_MapActor_DoAnim(0, 3);
        API_CutsceneWait(20);
        API_MapActor_DoAnim(2, 3);
        API_CutsceneWait(20);
        API_MapActor_DoAnim(3, 3);
        API_CutsceneWait(30);
        API_MapActor_Emote(1, 0x102, 0x46);
    }
    API_PlaySound(17);
    API_MapActor_SetSpeed(1, 0x13333, 0x9999);
    API_MapActor_SetSpeed(2, 0x13333, 0x9999);
    API_MapActor_SetSpeed(3, 0x13333, 0x9999);
    API_MapActor_SetAnim(1, 2);
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(1, actor->pos.x >> 16, actor->pos.z >> 16);
    }
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetAnim(2, 2);
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(2, actor->pos.x >> 16, actor->pos.z >> 16);
    }
    API_MapActor_WaitMovement(2);
    API_MapActor_SetPos(2, 0, 0);
    API_MapActor_SetAnim(3, 2);
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(3, actor->pos.x >> 16, actor->pos.z >> 16);
    }
    API_MapActor_WaitMovement(3);
    API_MapActor_SetPos(3, 0, 0);
    __PlayMapMusic();
    API_CutsceneEnd();
}
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
extern void __Func_80958a8(void);
extern void __Func_80958e4(void);
extern void __Func_80b0840(int);
extern void __Func_80b0894(void);
extern void __Func_80974d8(int *);
extern void __Func_809ba90(void *, int, int, int);
extern void __Func_809ba7c(void *, void *);
extern void __Func_809ba70(void *, int);
extern void __Sprite_SetColorswap(void *, unsigned int);
extern void __Func_8010788(int, int, int, int, int, int);

extern unsigned int _udivsi3_RAM(unsigned int, unsigned int);

void OvlFunc_957_200bad4(void)
{
    unsigned char *base;
    unsigned char *p;
    unsigned char *q;
    int pos[3];
    unsigned int v;
    int i;
    int s1;
    int s2;

    __Func_80958a8();
    base = iwram_3001f30;
    __Func_80b0840(0x202108);
    pos[0] = 0x1f80000;
    pos[1] = 0x180000;
    pos[2] = 0x900000;
    __Func_80974d8(pos);

    p = base + 0x58;
    for (i = 23; i >= 0; i--) {
        __Func_809ba90(p, 0x11c, pos[0], pos[2]);
        __Func_809ba7c(p, OvlFunc_957_200ba30);
        __Func_809ba70(p, 7);
        __Sprite_SetColorswap(*(void **)p, ((unsigned int)__Random() * 7) >> 16);
        v = _udivsi3_RAM(__Random(), 3) + 0x18000;
        *(unsigned int *)(p + 0x2c) = v;
        *(unsigned int *)(p + 0x28) = v;
        API_WaitFrames(1);
        p += 0x48;
    }

    API_WaitFrames(0x50);
    s1 = 0x1e;
    s2 = 0x37;
    __Func_8010788(0x29, 0x37, 3, 2, s1, s2);
    API_Func_8010704(0x2a, 8, 1, 1, 0x1f, 8);
    API_WaitFrames(0x32);
    API_Func_8012330(-1, -1, 0xe666);
    API_WaitFrames(0x1e);

    {
        int two = 2;
        q = base + 0x98;
        for (i = 23; i >= 0; i--) {
            if (*(signed char *)(q + 5) != 0)
                *q = two;
            q += 0x48;
        }
    }

    API_Func_8012350();
    __Func_80b0894();
    __Func_80958e4();
}
INCLUDE_ASM("asm/maps/altmiller_cave/altmiller_cave_data.s");

INCLUDE_ASM("asm/maps/altmiller_cave/imports.s");
