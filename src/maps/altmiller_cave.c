/* rom_7e3e08 (overlay file 957): consolidated TU — altmiller_cave map overlay. */

#include "nonmatching.h"
#include "dma.h"

INCLUDE_ASM("asm/maps/altmiller_cave/exports.s");

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

INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_200806c.s");
INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_20080c4.s");
INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_2008244.s");

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

extern unsigned char iwram_3001e70[];
extern void OvlFunc_957_2008244(int, int, int, int, int, int);
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

void OvlFunc_957_2008608(struct Pk arg)
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
    __MapActor_SetSpeed(0, 0x8000, 0x1999);
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
    __MapActor_SetSpeed(0, sp1, sp2);
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

INCLUDE_ASM("asm/maps/altmiller_cave/AltmillerCave_GetActors.s");
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
INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_2008bc8.s");
INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_2008c2c.s");
void OvlFunc_957_2008c98(void)
{
    /* iwram_3001f30 is a file-scope unsigned char* pointer (:385); this fn needs
       the array view of the same symbol. Callees left implicit (standalone match). */
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
INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_2008cf8.s");

extern void OvlFunc_957_20080c4(void);
extern void OvlFunc_957_2008cf8(void);

void OvlFunc_957_2008d48(void)
{
	OvlFunc_957_20080c4();
	OvlFunc_957_2008cf8();
}

INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_2008d58.s");

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

INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_2008de8.s");
INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_2008eac.s");
INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_2008ee0.s");
INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_2008f10.s");

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
INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_200ac44.s");
INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_200b4bc.s");
INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_200b518.s");
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_93[], _EVENT_94[], _EVENT_95[], _EVENT_96[], _EVENT_97[];
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
INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_200b610.s");
INCLUDE_ASM("asm/maps/altmiller_cave/AltmillerCave_MapInit.s");
INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_200ba30.s");
INCLUDE_ASM("asm/maps/altmiller_cave/OvlFunc_957_200bad4.s");

INCLUDE_ASM("asm/maps/altmiller_cave/imports.s");
