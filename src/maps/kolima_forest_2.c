/* rom_7a1ff0 (overlay file 914): consolidated TU — kolima_forest_2 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/kolima_forest_2/exports.s");

extern int Func_8000948(int);

int OvlFunc_914_2008030(int *a, int *b)
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

INCLUDE_ASM("asm/maps/kolima_forest_2/OvlFunc_914_200806c.s");
INCLUDE_ASM("asm/maps/kolima_forest_2/OvlFunc_914_20080c4.s");
INCLUDE_ASM("asm/maps/kolima_forest_2/OvlFunc_914_2008244.s");

extern unsigned int Lec8[] __asm__(".Lm914_ec8");
extern int Lf08[] __asm__(".Lm914_f08");
extern void *OvlFunc_914_200806c(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_914_20082a8(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = Lec8[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_914_200806c(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = Lf08;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = Lec8[idx];
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

INCLUDE_ASM("asm/maps/kolima_forest_2/OvlFunc_914_200834c.s");

extern int Lf20[] __asm__(".Lm914_f20");
extern void *OvlFunc_914_200834c(int *, void *, void *);

int OvlFunc_914_2008474(void *arg0)
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
    obj = OvlFunc_914_200834c(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = Lf20[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = Lf20[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = Lf20[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = Lf20[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (Lec8[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (Lec8[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (Lf20[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (Lf20[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += Lec8[dir] & 0xffff0000;
        cur[2] += Lec8[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = Lec8[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern unsigned char iwram_3001e70[];
extern int Lec8__a2[] __asm__(".Lm914_ec8");
extern void OvlFunc_914_2008244(int, int, int, int, int, int);
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

void OvlFunc_914_2008608(struct Pk arg)
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
    t1 = Lf20[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = Lf20[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = Lf20[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = Lf20[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (Lf20[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (Lf20[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_914_2008244(0, vb[0], vb[2], w, h, 0);
    __MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_914_20082a8;
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
    __MapActor_TravelBy(0, (short)(Lec8__a2[dir] >> 16) / 2, (short)(Lec8__a2[dir]) / 2);
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
    x1 += Lf20[arg.a << 2] << 16;
    x2 += Lf20[(arg.a << 2) + 1] << 16;
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
    OvlFunc_914_2008244(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_914_2008244(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (Lf20[arg.a << 2] << 16);
    u2 = ap[2] + (Lf20[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_914_2008244(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

INCLUDE_ASM("asm/maps/kolima_forest_2/OvlFunc_914_20088c0.s");

extern unsigned char gOvl_02008f80[];

unsigned int KolimaForest2_GetEntrances(void) {
    return (unsigned int)gOvl_02008f80;
}

int KolimaForest2_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008fe0[];

void *KolimaForest2_GetExits(void) {
    return (void *)gOvl_02008fe0;
}
extern unsigned char gOvl_02008ff0[];

void *KolimaForest2_GetActors(void) {
    return (void *)gOvl_02008ff0;
}

INCLUDE_ASM("asm/maps/kolima_forest_2/OvlFunc_914_20089f8.s");

void OvlFunc_914_2008a2c(void)
{
  int new_var;
  unsigned short new_var2;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __CutsceneStart();
  new_var = 0;
  new_var2 = 0xb;
  __MapActor_SetPos(new_var2, new_var, (long) (new_var4 = new_var));
  __SetFlag(0xfd3);
  new_var6 = 0xb5;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_808f1c0(new_var5, 3);
  __Func_8091a58(0xb5, 0);
  __CutsceneEnd();
}

extern unsigned char gOvl_02009068[];

void *KolimaForest2_GetEvents(void) {
    return (void *)gOvl_02009068;
}

extern int iwram_3001ebc;
extern int __GetFlag(int id);
extern void OvlFunc_914_2008cb4(int x);
extern void OvlFunc_914_20088c0(int x);
extern void OvlFunc_914_2008abc(int x);

int KolimaForest2_MapInit(void) {
    unsigned char *base;

    base = (unsigned char *)iwram_3001ebc;
    *(int *)(base + 0x1c0) = 0x204;
    if (__GetFlag(0xfd3) == 0) {
        OvlFunc_914_2008cb4(0xb);
    }
    OvlFunc_914_20088c0(8);
    OvlFunc_914_20088c0(9);
    OvlFunc_914_20088c0(0xa);
    if (__GetFlag(0x845) == 0) {
        OvlFunc_914_2008abc(0xb);
    }
    return 0;
}

INCLUDE_ASM("asm/maps/kolima_forest_2/OvlFunc_914_2008abc.s");
INCLUDE_ASM("asm/maps/kolima_forest_2/OvlFunc_914_2008b24.s");

#include "dma.h"
extern unsigned int iwram_3001ed0;
extern unsigned char L10b0[] __asm__(".Lm914_10b0");

void OvlFunc_914_2008b8c(void) {
    DMA3_COPY((void *)iwram_3001ed0, L10b0, 0x380);
}

#include "dma.h"

extern int OvlFunc_914_20082a8();
extern unsigned char L17b0[] __asm__(".Lm914_17b0");

void OvlFunc_914_2008bac(void) {
    DMA3_COPY((void *)iwram_3001ed0, L17b0, 0x380);
}

INCLUDE_ASM("asm/maps/kolima_forest_2/OvlFunc_914_2008bcc.s");
INCLUDE_ASM("asm/maps/kolima_forest_2/OvlFunc_914_2008c0c.s");

int OvlFunc_914_2008c4c(int *actor)
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

INCLUDE_ASM("asm/maps/kolima_forest_2/OvlFunc_914_2008cb4.s");
INCLUDE_ASM("asm/maps/kolima_forest_2/kolima_forest_2_data.s");

INCLUDE_ASM("asm/maps/kolima_forest_2/imports.s");
