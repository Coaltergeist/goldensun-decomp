/* rom_7e636c (overlay file 958): consolidated TU — gondowan map overlay. */

#include "nonmatching.h"
#include "api.h"

extern int OvlFunc_958_200858c();

extern int Func_8000948(int);

int OvlFunc_958_2008314(int *a, int *b)
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

void *OvlFunc_958_2008350(int *coords, void **p)
{
    unsigned char *base;
    unsigned int i;
    int cx;

    base = *(unsigned char **)iwram_3001ebc;
    i = 8;
    cx = coords[0] >> 20;
    p = (void **)(base + 0x34);
    for (; i <= 0x41; i++) {
        void *actor = *p++;
        if (cx == *(int *)((char *)actor + 8) >> 20) {
            if (coords[1] / 0x10000 == *(int *)((char *)actor + 0xc) / 0x10000) {
                if (coords[2] >> 20 == *(int *)((char *)actor + 0x10) >> 20) {
                    return actor;
                }
            }
        }
    }
    return 0;
}
extern unsigned int L16c0[] __asm__(".Lm958_16c0");
extern unsigned char *__MapActor_GetActor(unsigned int);
extern void __Actor_TravelTo(void *, int, int, int);
extern int __TestCollision(void *, int *);
extern void __WaitFrames(int);
extern void __Actor_SetAnim(void *, unsigned int);

void OvlFunc_958_20083a8(void)
{
    void *player;
    int stk[3];
    unsigned int dir;
    void *res;
    void *res2;

    player = __MapActor_GetActor(0);
    dir = *(unsigned short *)((char *)player + 6) >> 12;
    stk[0] = *(int *)((char *)player + 8) + (L16c0[dir] & 0xffff0000);
    stk[1] = *(int *)((char *)player + 12);
    stk[2] = *(int *)((char *)player + 16) + (L16c0[dir] << 16);
    res = OvlFunc_958_2008350(stk, player);
    if (res == 0)
        return;

    stk[0] = *(int *)((char *)res + 8) + (L16c0[dir] & 0xffff0000);
    stk[1] = *(int *)((char *)res + 12);
    stk[2] = *(int *)((char *)res + 16) + (L16c0[dir] << 16);
    res2 = OvlFunc_958_2008350(stk, res);
    if (res2 != 0) {
        if (*((unsigned char *)res2 + 0x59) & 1)
            return;
    }

    stk[0] = *(int *)((char *)res + 8);
    stk[1] = *(int *)((char *)res + 12) + (0x80 << 13);
    stk[2] = *(int *)((char *)res + 16);
    res2 = OvlFunc_958_2008350(stk, res);
    if (res2 != 0) {
        if (*((unsigned char *)res2 + 0x59) & 1)
            return;
    }

    *((unsigned char *)res + 0x22) = 2;
    stk[0] = *(int *)((char *)res + 8) + (L16c0[dir] & 0xffff0000);
    stk[1] = *(int *)((char *)res + 12);
    stk[2] = *(int *)((char *)res + 16) + (L16c0[dir] << 16);
    if (__TestCollision(res, stk) > 0)
        return;
    if (*((unsigned char *)res + 0x62) != 0)
        return;

    __Actor_SetAnim(player, 8);
    __WaitFrames(15);
    __PlaySound(0xb9);
    *(int *)((char *)res + 0x30) = 0x3333;
    *(int *)((char *)res + 0x34) = 0x3333;
    __Actor_TravelTo(res, stk[0], stk[1], stk[2]);
    *(int *)((char *)player + 0x30) = 0x3333;
    *(int *)((char *)player + 0x34) = 0x3333;
    __Actor_TravelTo(player, stk[0], stk[1], stk[2]);
    __Actor_WaitMovement(res);
    __MapActor_PlayPendingSound();
    *(int *)((char *)res + 8) = stk[0];
    *(int *)((char *)res + 0x10) = stk[2];
    *(int *)((char *)res + 0x24) = 0;
    *(int *)((char *)res + 0x2c) = 0;
    *(int *)((char *)player + 0x38) = 0x80 << 24;
    *(int *)((char *)player + 0x40) = 0x80 << 24;
    *(int *)((char *)player + 0x24) = 0;
    *(int *)((char *)player + 0x2c) = 0;
    *(int *)((char *)player + 8) = *(short *)((char *)player + 10) << 16;
    *(int *)((char *)player + 0x10) = *(short *)((char *)player + 18) << 16;
    __Actor_SetAnim(player, 1);
}
extern unsigned char iwram_3001e70[];
extern unsigned char gBuffer[65536];

unsigned int OvlFunc_958_2008528(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4, unsigned int arg5)
{
    unsigned char *ptr;
    unsigned char *base;
    unsigned char *row;
    unsigned int i, j;
    int off;

    ptr = *(unsigned char **)iwram_3001e70;
    if (ptr == (unsigned char *)0) {
        return 0;
    }
    if (arg0 <= 2) {
        off = 0x98;
        off <<= 1;
        off += (arg0 * 3) << 4;
        base = *(unsigned char **)((char *)ptr + off);
    } else {
        base = gBuffer;
    }
    base = base + ((arg1 + (arg2 << 7)) << 2);
    for (i = 0; i < arg4; i++) {
        row = base + (i << 9);
        for (j = 0; j < arg3; j++) {
            *(row + 2) = arg5;
            row += 4;
        }
    }
    return 0;
}

extern unsigned int L16c0[] __asm__(".Lm958_16c0");
extern int L1700[] __asm__(".Lm958_1700");
extern int __TestCollision(void *, int *);

int OvlFunc_958_200858c(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L16c0[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_958_2008350(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L1700;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L16c0[idx];
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

INCLUDE_ASM("asm/maps/gondowan/OvlFunc_958_2008630.s");

extern int L1718[] __asm__(".Lm958_1718");
extern void *OvlFunc_958_2008630(int *, void *, void *);

int OvlFunc_958_2008758(void *arg0)
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
    obj = OvlFunc_958_2008630(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = L1718[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L1718[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = L1718[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L1718[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L16c0[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L16c0[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (L1718[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (L1718[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L16c0[dir] & 0xffff0000;
        cur[2] += L16c0[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L16c0[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern int L16c0__a2[] __asm__(".Lm958_16c0");
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

void OvlFunc_958_20088ec(struct Pk arg)
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
    t1 = L1718[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L1718[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L1718[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L1718[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (L1718[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (L1718[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_958_2008528(0, vb[0], vb[2], w, h, 0);
    API_MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_958_200858c;
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
    __MapActor_TravelBy(0, (short)(L16c0__a2[dir] >> 16) / 2, (short)(L16c0__a2[dir]) / 2);
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
    x1 += L1718[arg.a << 2] << 16;
    x2 += L1718[(arg.a << 2) + 1] << 16;
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
    OvlFunc_958_2008528(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_958_2008528(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (L1718[arg.a << 2] << 16);
    u2 = ap[2] + (L1718[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_958_2008528(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

INCLUDE_ASM("asm/maps/gondowan/OvlFunc_958_2008ba4.s");

extern unsigned char Lconst_98[] __asm__(".Lconst_98");
__asm__(".equ .Lconst_98, 0x98");
extern unsigned char Lconst_9d[] __asm__(".Lconst_9d");
__asm__(".equ .Lconst_9d, 0x9d");
extern unsigned char Lconst_9e[] __asm__(".Lconst_9e");
__asm__(".equ .Lconst_9e, 0x9e");

extern unsigned char Lm958_17b4[] __asm__(".Lm958_17b4");
extern unsigned char Lm958_17fc[] __asm__(".Lm958_17fc");
extern unsigned char Lm958_1874[] __asm__(".Lm958_1874");
extern unsigned char Lm958_1784[] __asm__(".Lm958_1784");

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;

void *Gondowan_GetEntrances(void)
{
    int offset;
    short a;

    offset = 0xe0;
    offset <<= 1;
    a = *(short *)((char *)&gState + offset);
    if (a == (int)Lconst_98) {
        return Lm958_17b4;
    }
    if (a == (int)Lconst_9d) {
        return Lm958_17fc;
    }
    if (a == (int)Lconst_9e) {
        return Lm958_1874;
    }
    return Lm958_1784;
}

int Gondowan_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200991c[];

unsigned int Gondowan_GetExits(void) {
    return (unsigned int)gOvl_0200991c;
}

extern int __GetFlag(int);
extern unsigned char Lm958_19d4[] __asm__(".Lm958_19d4");
extern unsigned char Lm958_1974[] __asm__(".Lm958_1974");
extern unsigned char gScript_970__02009a4c[];
extern unsigned char Lm958_1aac[] __asm__(".Lm958_1aac");
extern unsigned char Lm958_195c[] __asm__(".Lm958_195c");

void *Gondowan_GetActors(void)
{
    int offset;
    short a;

    offset = 0xe0;
    offset <<= 1;
    a = *(short *)((char *)&gState + offset);
    if (a == (int)Lconst_98) {
        if (__GetFlag(0x96f)) {
            return Lm958_19d4;
        }
        return Lm958_1974;
    }
    if (a == (int)Lconst_9d) {
        return gScript_970__02009a4c;
    }
    if (a == (int)Lconst_9e) {
        return Lm958_1aac;
    }
    return Lm958_195c;
}
extern unsigned char _EVENT_98[], _EVENT_9d[], _EVENT_9e[];
extern unsigned char Lm958_1bcc[] __asm__(".Lm958_1bcc");
extern unsigned char Lm958_1b48[] __asm__(".Lm958_1b48");
extern unsigned char Lm958_1c80[] __asm__(".Lm958_1c80");
extern unsigned char gScript_885__02009ce0[];
extern unsigned char Lm958_1b3c[] __asm__(".Lm958_1b3c");

int Gondowan_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_98) {
        if (__GetFlag(0x96f)) return (int)Lm958_1bcc;
        return (int)Lm958_1b48;
    }
    if (ev == (int)_EVENT_9d) return (int)Lm958_1c80;
    if (ev == (int)_EVENT_9e) return (int)gScript_885__02009ce0;
    return (int)Lm958_1b3c;
}
extern unsigned char Lconst_88[] __asm__(".Lconst_88");
__asm__(".equ .Lconst_88, 0x88");

void OvlFunc_958_2008df0(void)
{
    unsigned char *actor;
    int r0, r1, r2, r3;

    if (API_GetFlag(0x98a))
        return;
    if (!API_GetFlag(0x9a << 4))
        return;

    __CutsceneStart();
    API_MapActor_SetSpeed(0xb, 0x80 << 9, 0x80 << 8);
    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        __MapActor_SetPos(0xb, *(int *)(actor + 8), *(int *)(actor + 16));
    }
    API_MapActor_TravelBy(0xb, -8, 0x10);
    __MapActor_WaitMovement(0xb);
    API_Func_8092adc(0xb, 0xd0 << 8, 0);
    __CutsceneWait(10);
    API_MapActor_Face(0, 0xb, 0);
    __MessageID(0x23da);
    __ShowActorMessage_NoWait(0xb, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        API_ActorMessage(0xb, 0);
        API_MapActor_TravelToAnim(0xb, 0x98, 0xe8);
        API_ClearFlag(0x9a << 4);
        __MapActor_WaitMovement(0xb);
        API_MapActor_SetAnim(0xb, 1);
        r1 = (int)&gState;
        r0 = 0xe2;
        r3 = (int)Lconst_88;
        r0 <<= 1;
        r2 = r1 + r0;
        *(short *)r2 = r3;
        r3 = 0xe3;
        r3 <<= 1;
        r2 = r1 + r3;
        r3 = 0x1e;
        *(short *)r2 = r3;
    } else {
        r3 = (int)iwram_3001ebc;
        r0 = 0xec;
        r2 = *(int *)r3;
        r0 <<= 1;
        r2 += r0;
        r3 = *(unsigned short *)r2;
        r3++;
        *(unsigned short *)r2 = r3;
        API_ActorMessage(0xb, 0);
        API_MapActor_SetAnim(0xb, 2);
        actor = __MapActor_GetActor(0);
        if (actor != 0) {
            __MapActor_TravelTo(0xb, *(short *)(actor + 10), *(short *)(actor + 18));
        }
        __MapActor_WaitMovement(0xb);
        API_MapActor_SetPos(0xb, 0, 0);
        __CutsceneWait(30);
        API_MapActor_SetAnim(0, 2);
        API_MapActor_TravelBy(0, 0, 0x10);
        __MapActor_WaitMovement(0);
        __MapActor_SetAnim(0, 1);
    }
    __CutsceneEnd();
}
void OvlFunc_958_2008f44(void)
{
    unsigned char *actor;

    __CutsceneStart();
    API_MapActor_Face(0xb, 0, 0);
    API_MapActor_Face(0, 0xb, 0);
    __MapActor_SetAnim(0, 1);
    __CutsceneWait(10);
    API_MapActor_TurnToFaceActor(0, 0xb, 0);
    __MessageID(0x23d9);
    API_ActorMessage(0xb, 0);
    __MapActor_SetAnim(0xb, 2);
    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        __MapActor_TravelTo(0xb, *(short *)(actor + 10), *(short *)(actor + 18));
    }
    __MapActor_WaitMovement(0xb);
    __MapActor_SetPos(0xb, 0, 0);
    __CutsceneWait(20);
    __SetFlag(0x9a << 4);
    __CutsceneEnd();
}
extern unsigned char Lmsg_23cc[] __asm__(".Lmsg_23cc");
__asm__(".equ .Lmsg_23cc, 0x23cc");

void OvlFunc_958_2008fd0(void)
{
    int msg = (int)Lmsg_23cc;
    unsigned short *p;

    __MessageID(msg);
    __ShowActorMessage_NoWait(8, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        if (__GetFlag(0x95 << 4) && !__GetFlag(0x96f)) {
            __MessageID(msg + 8);
        }
        __ActorMessage(8, 0);
    } else {
        p = (unsigned short *)(*(char **)iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
        __ActorMessage(8, 0);
    }
}

extern int __GetFlag(int);
extern int __MessageID(int);
extern void __ActorMessage(int, int);

void OvlFunc_958_2009040(void) {
    if (__GetFlag(0x95 << 4) && !__GetFlag(0x96f)) {
        __MessageID(0x23d5);
    } else {
        __MessageID(0x23d2);
    }
    __ActorMessage(0x9, 0);
}

extern unsigned char iwram_3001ebc[];

static inline void ClearFlag(int flag)
{
    extern void __ClearFlag(int);
    __ClearFlag(flag);
}

void OvlFunc_958_2009080(void) {
    int r5;
    int r3;
    int r2;

    r5 = *(int *)iwram_3001ebc;
    __CutsceneStart();
    if (__GetFlag(0x204) != 0) {
        ClearFlag(0x9a3);
        ClearFlag(0x9a5);
        ClearFlag(0x9a4);
        ClearFlag(0x9a6);
        __SetFlag(0x9a5);
        __SetFlag(0x9a4);
    }
    r2 = 0xb6;
    r2 <<= 1;
    r3 = r5 + r2;
    r2 = 0;
    __Func_8091e9c(*(short *)(r3 + r2));
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}

extern void __Func_8093c00(void);

void OvlFunc_958_20090f0(void) {
    __Func_8093c00();
}

extern void OvlFunc_958_20091f8(int arg0);

void OvlFunc_958_20090fc(void)
{
  int r3;
  int new_var;
  int new_var2;
  int new_var3;
  unsigned int *actor;
  __MapActor_GetActor(8);
  __CutsceneStart();
  new_var2 = 8;
  actor = __MapActor_GetActor(new_var2);
  r3 = (*((int *) (((char *) actor) + new_var2))) >> 20;
  if (r3 <= 30)
  {
    OvlFunc_958_20091f8(8);
    new_var = 0x1b;
    new_var3 = 0x13;
    __Func_8010704(0x1d, 0x13, 1, 1, new_var, new_var3);
    __SetFlag(0x9a2);
  }
  __CutsceneEnd();
}

extern void OvlFunc_958_20083a8(void);
extern void OvlFunc_958_2009158(void);

void OvlFunc_958_2009148(void)
{
	OvlFunc_958_20083a8();
	OvlFunc_958_2009158();
}

extern void __MapActor_SetPos(int a, int b, int c);
void __CutsceneStart(void);
void __CutsceneWait(int);
void __PlaySound(int);
void __SetFlag(int);
void __CutsceneEnd(void);

void OvlFunc_958_2009158(void)
{
    void *a;
    int new_var;
    int new_var3;

    __CutsceneStart();
    a = __MapActor_GetActor(9);
    if (*(int *)((char *)a + 8) >> 20 > 0x2a) {
        new_var = 0x6b;
        new_var3 = 0x11;
        __Func_8010704(0x6c, 0x11, 1, 1, new_var, new_var3);
        __CutsceneWait(8);
        API_MapActor_SetPos(9, 0, 0);
        API_MapActor_SetPos(10, 0x2b80000, 0x1200000);
        __MapActor_SetAnim(10, 3);
        __PlaySound(0x9a);
        __SetFlag(0x9a5);
    }
    __CutsceneEnd();
}

void OvlFunc_958_20091c4(void) {}

void OvlFunc_958_20091c8(unsigned int arg0) {
    unsigned int r2;
    unsigned int r1;
    unsigned short r3;

    r2 = *(unsigned int *)(arg0 + 0x50);
    r1 = 0xfffffc00;
    r3 = *(unsigned short *)(r2 + 0x1e);
    r3 += r1;
    *(unsigned short *)(r2 + 0x1e) = r3;
}

extern void __WaitFrames(int);

void OvlFunc_958_20091d8(unsigned int arg0, int arg1)
{
    int r5;
    int *r7;

    r7 = (int *)arg0;
    r5 = 0x28;
    while (r5 != 0) {
        __WaitFrames(1);
        r5--;
        if (r7[3] <= arg1)
            break;
    }
}

INCLUDE_ASM("asm/maps/gondowan/OvlFunc_958_20091f8.s");
INCLUDE_ASM("asm/maps/gondowan/gondowan_data.s");

void OvlFunc_958_2009380(void) {}


void OvlFunc_958_2009384(void) {
    __MapActor_SetPos(12, 0, 0);
}



void __Actor_SetSpriteFlags(void *, int);
int Gondowan_MapInit(void) {
    unsigned int r1;
    unsigned int r2;
    int arg5, arg6;

    r1 = 0xe0;
    r1 <<= 1;
    if (*(short *)((char *)&gState + r1) == (int)Lconst_98) {
        __SetFlag(0x144);
        if (__GetFlag(0x9a0) != 0) {
            API_MapActor_SetPos(0xb, 0, 0);
        }
    }

    r2 = 0xe0;
    r2 <<= 1;
    if (*(short *)((char *)&gState + r2) == (int)Lconst_9e) {
        r2 = 0xe1;
        r2 <<= 1;
        if (*(short *)((char *)&gState + r2) == 1) {
            arg5 = 0x6b;
            arg6 = 0x11;
            __Func_8010704(0x6c, 0x11, 1, 1, arg5, arg6);
        }

        if (__GetFlag(0x9a2) != 0) {
            API_MapActor_SetPos(8, 0x1b80000, 0x1340000);
            API_MapActor_SetAnim(8, 2);
            arg5 = 0x1b;
            arg6 = 0x13;
            __Func_8010704(0x1d, 0x13, 1, 1, arg5, arg6);
        }

        if (__GetFlag(0x9a5) != 0) {
            API_MapActor_SetPos(9, 0, 0);
            API_MapActor_SetPos(10, 0x2b80000, 0x1200000);
            API_MapActor_SetAnim(10, 2);
        }

        __Actor_SetSpriteFlags(__MapActor_GetActor(0xc), 0);
    }

    return 0;
}
