/* rom_7d0e88 (overlay file 947): consolidated TU — crossbone_isle_dungeon_2 map overlay. */

#include "nonmatching.h"

extern int OvlFunc_947_200858c();

extern int Func_8000948(int);

int OvlFunc_947_2008314(int *a, int *b)
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

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_2008350.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_20083a8.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_2008528.s");

extern unsigned int L2ca0[] __asm__(".Lm947_2ca0");
extern int L2ce0[] __asm__(".Lm947_2ce0");
extern void *OvlFunc_947_2008350(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_947_200858c(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L2ca0[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_947_2008350(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L2ce0;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L2ca0[idx];
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

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_2008630.s");

extern int gScript_884__0200acf8[];
extern void *OvlFunc_947_2008630(int *, void *, void *);

int OvlFunc_947_2008758(void *arg0)
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
    obj = OvlFunc_947_2008630(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = gScript_884__0200acf8[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = gScript_884__0200acf8[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = gScript_884__0200acf8[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = gScript_884__0200acf8[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L2ca0[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L2ca0[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (gScript_884__0200acf8[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (gScript_884__0200acf8[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L2ca0[dir] & 0xffff0000;
        cur[2] += L2ca0[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L2ca0[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern unsigned char iwram_3001e70[];
extern int L2ca0__a2[] __asm__(".Lm947_2ca0");
extern void OvlFunc_947_2008528(int, int, int, int, int, int);
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

void OvlFunc_947_20088ec(struct Pk arg)
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
    t1 = gScript_884__0200acf8[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = gScript_884__0200acf8[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = gScript_884__0200acf8[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = gScript_884__0200acf8[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (gScript_884__0200acf8[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (gScript_884__0200acf8[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_947_2008528(0, vb[0], vb[2], w, h, 0);
    __MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_947_200858c;
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
    __MapActor_TravelBy(0, (short)(L2ca0__a2[dir] >> 16) / 2, (short)(L2ca0__a2[dir]) / 2);
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
    x1 += gScript_884__0200acf8[arg.a << 2] << 16;
    x2 += gScript_884__0200acf8[(arg.a << 2) + 1] << 16;
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
    OvlFunc_947_2008528(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_947_2008528(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (gScript_884__0200acf8[arg.a << 2] << 16);
    u2 = ap[2] + (gScript_884__0200acf8[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_947_2008528(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_2008ba4.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_2008cc0.s");

extern void __WaitFrames(unsigned int);

void OvlFunc_947_2008d78(unsigned int arg0)
{
    int *r5;
    int r6;

    r5 = (int *)arg0;
    r6 = 0x3c;
    while (r6 != 0) {
        __WaitFrames(1);
        if (r5[3] == r5[5])
            break;
        r6--;
    }
    r5[10] = 0;
    r5[15] = 0x80 << 24;
    r5[3] = r5[5];
}
void OvlFunc_947_2008da8(unsigned int arg0, unsigned int arg1)
{
    int *r5;
    int r7;
    int r6;

    r5 = (int *)arg0;
    r7 = (int)arg1;
    r6 = 0x3c;
    while (r6 != 0) {
        __WaitFrames(1);
        if (r5[3] <= r5[5])
            break;
        if (r5[3] <= r7)
            break;
        r6--;
    }
    r5[10] = 0;
    r5[15] = 0x80 << 24;
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_2008ddc.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_2008ec8.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_2008f58.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_2008fcc.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_200901c.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_2009074.s");

void OvlFunc_947_2009174(unsigned int arg0)
{
  unsigned char *actor;
  int i;
  int v;
  actor = (unsigned char *) __MapActor_GetActor(arg0);
  actor[0x55] = 0;
  for (i = 0; i <= ((unsigned long long) 0x1f); i++)
  {
    __WaitFrames(1);
    v = (*((int *) (actor + 0x1c))) + ((int) 0xffffe667);
    *((int *) (actor + 0xc)) += (int) 0xffff3334;
    *((int *) (actor + 0x1c)) = v;
    if (v <= 0x1998)
    {
      *((int *) (actor + 0x1c)) = 0x1999;
      break;
    }
  }

}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_20091c4.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_2009268.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_20093b0.s");

extern void __Func_80929d8(unsigned int a, int b);

unsigned int OvlFunc_947_2009428(unsigned int arg0) {
    __Func_80929d8(arg0, *(unsigned short *)(arg0 + 0x64) & 0xf);
    return 0;
}


INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/CrossboneIsleDungeon2_GetEntrances.s");

unsigned int CrossboneIsleDungeon2_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200b014[];

void *CrossboneIsleDungeon2_GetExits(void) {
    return (void *)gOvl_0200b014;
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/CrossboneIsleDungeon2_GetActors.s");

extern int OvlFunc_947_2009268(void);
extern void OvlFunc_947_20083a8(void);

void OvlFunc_947_2009528(void)
{
    __CutsceneStart();
    if (OvlFunc_947_2009268() == 0) {
        OvlFunc_947_20083a8();
    }
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_2009544.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_2009578.s");

extern unsigned int iwram_3001ad4;
extern unsigned char L372c[] __asm__(".Lm947_372c");

void OvlFunc_947_20095cc(void) {
    unsigned int *src;
    unsigned int *dst;
    unsigned short *h;

    src = &iwram_3001ad4;
    dst = (unsigned int *)L372c;
    *dst++ = *src++;
    *dst++ = *src++;
    *dst = *src;

    h = (unsigned short *)L372c;
    *(unsigned short *)((char *)h + 2) += 0xc0;
    *(unsigned short *)((char *)h + 6) += 0xc0;
    *(unsigned short *)((char *)h + 0xa) += 0xc0;
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_20095fc.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_200975c.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_2009938.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_20099f0.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_2009aa8.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_2009be8.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_2009d84.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_2009fd4.s");

extern void __Func_8093fa0(void);

void OvlFunc_947_200a034(void) {
    __Func_8093fa0();
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_200a040.s");

extern unsigned char *iwram_3001ee0;

void OvlFunc_947_200a080(void) {
    unsigned char *p;

    p = (unsigned char *)__MapActor_GetActor(0);
    *(unsigned int *)(iwram_3001ee0 + 0x18) = (unsigned int)p;
    p[0x62] = 1;
}


void OvlFunc_947_200a09c(void) {
    unsigned char *p;

    p = (unsigned char *)__MapActor_GetActor(0);
    *(unsigned int *)(iwram_3001ee0 + 0x18) = 0;
    p[0x62] = 0;
}


unsigned int OvlFunc_947_200a0b8(unsigned char *arg0)
{
    unsigned char *p;
    unsigned char *flags;

    p = __MapActor_GetActor(0);
    if (*(int *)(arg0 + 0x10) > *(int *)(p + 0x10)) {
        flags = arg0 + 0x23;
        *flags = *flags & 0xfd;
        if (*(int *)(arg0 + 0xc) < *(int *)(p + 0xc)) {
            *flags = *flags | 2;
        }
    }
    return 0;
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_200a0f0.s");

extern void OvlFunc_947_200a0f0(int);

void OvlFunc_947_200a144(void) {
    OvlFunc_947_200a0f0(11);
}


void OvlFunc_947_200a150(void) {
    OvlFunc_947_200a0f0(0xc);
}

extern unsigned char *iwram_3001f30;

void OvlFunc_947_200a15c(void)
{
  int r5;
  int r0;
  unsigned char *p;

  r5 = (int) __MapActor_GetActor(0);
  r0 = (int) __MapActor_GetActor(0xd);
  p = iwram_3001f30;
  if ((*(int *)(r0 + 8) >> 20) == (*(int *)(r5 + 8) >> 20) &&
      (*(int *)(r0 + 0x10) >> 20) == (*(int *)(r5 + 0x10) >> 20)) {
    __SetFlag(0x203);
    p[0x35] = 1;
  } else {
    __ClearFlag(0x203);
  }
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_200a1ac.s");
extern volatile unsigned int iwram_3001e40;
extern void OvlFunc_947_20093b0(void);
extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);

struct EffectData {
    int pad0;
    int a;
    int b;
    int c;
    int d;
    int e;
    int pad18;
    int pad1c;
    short f;
    short pad22;
    void (*g)(void);
};

void OvlFunc_947_200a230(void)
{
    struct EffectData data;
    int r;
    int r2;
    int mask;
    int rnd_val;
    unsigned int rnd;

    if ((iwram_3001e40 & 2) == 0) {
        if ((iwram_3001e40 & 7) == 0) {
            __PlaySound(0x88);
        }
        data.a = 10;
        data.b = 0x8000;
        data.c = 0x8000;
        data.d = 0x19999;
        data.e = 0x19999;
        rnd_val = __Random();
        mask = 0xffff000;
        data.f = mask & rnd_val;
        data.g = OvlFunc_947_20093b0;
        rnd = __Random();
        r = -((int)(((rnd * 5) >> 16) << 16) + 0x60000) / 2;
        rnd = __Random();
        r2 = -((int)(((rnd * 5) >> 16) << 16) + 0x50000);
        OvlFunc_common0_10c(0x1440000, 0x300000, 0xe40000, r,
                            r2,
                            0, 0x14d0000, &data);
    }
}
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_200a2d8.s");
extern void OvlFunc_947_200a2d8(void);

void __Func_80933d4(int, int);
void __CopyMapTiles(int, int, int, int, int, int);
void __Func_8092950(int, int);

void OvlFunc_947_200a384(void)
{
    int flag;
    int f201 = 0x201;
    int r3;
    int r2;
    unsigned char *actor;

    do { } while (f201 == 0);

    flag = __GetFlag(0x203);
    if (flag == 0) {
        __SetFlag(0x202);
        __CutsceneStart();
        __Func_80933d4(0x9999, 0x1333);
        __Func_80933f8(0x1380000, -1, 0xb80000, 1);
        __Func_8093530();
        __CutsceneWait(0x14);
        r3 = 1;
        r2 = 2;
        __CopyMapTiles(0x49, 10, 0x3c, 10, r3, r2);
        __CutsceneWait(0x14);
        __StartTask(OvlFunc_947_200a230, 0xc80);
        __CutsceneWait(0x28);
        if (__GetFlag(f201) != 0) {
            actor = (unsigned char *)__MapActor_GetActor(0xc);
            *(void **)(actor + 0x6c) = OvlFunc_947_200a2d8;
            __MapActor_SetAnim(0xc, 6);
            __Func_8092504(0xc);
            actor = (unsigned char *)__MapActor_GetActor(0xc);
            r3 = 0x12;
            r2 = 0xd;
            *(int *)(actor + 0x6c) = flag;
            __Func_8010704(0x11, 0xd, 1, 1, r3, r2);
            __ClearFlag(f201);
            __Func_8092950(0xc, 0);
            __MapActor_SetBehavior(0xc, 1);
        } else {
            __CutsceneWait(0x3c);
        }
        __StopTask(OvlFunc_947_200a230);
        __CutsceneWait(0x14);
        r3 = 1;
        r2 = 2;
        __CopyMapTiles(0x48, 10, 0x3c, 10, r3, r2);
        __CutsceneWait(0x14);
        __CutsceneEnd();
    }
}


void OvlFunc_947_200a498(void)
{
  int r1;
  int r2;
  unsigned int *actor;

  actor = __MapActor_GetActor(10);
  __CutsceneStart();
  r1 = actor[2];
  r2 = actor[4];
  OvlFunc_947_2008528(2, r1 >> 20, r2 >> 20, 1, 1, 0);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_200a4cc.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_200a53c.s");

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_73[], _EVENT_74[], _EVENT_77[], _EVENT_79[], _EVENT_7a[];
extern unsigned char Lm947_33a8[] __asm__(".Lm947_33a8");
extern unsigned char Lm947_3438[] __asm__(".Lm947_3438");
extern unsigned char Lm947_3498[] __asm__(".Lm947_3498");
extern unsigned char Lm947_351c[] __asm__(".Lm947_351c");
extern unsigned char Lm947_3618[] __asm__(".Lm947_3618");
extern unsigned char Lm947_339c[] __asm__(".Lm947_339c");

int CrossboneIsleDungeon2_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_73) return (int)Lm947_33a8;
    if (ev == (int)_EVENT_74) return (int)Lm947_3438;
    if (ev == (int)_EVENT_77) return (int)Lm947_3498;
    if (ev == (int)_EVENT_79) return (int)Lm947_351c;
    if (ev == (int)_EVENT_7a) return (int)Lm947_3618;
    return (int)Lm947_339c;
}
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_200a5f8.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_200a63c.s");

extern void OvlFunc_947_2009aa8(void);
struct Actor947 {
unsigned char pad0[0x22];
unsigned char f22;
unsigned char pad23[0x32];
unsigned char f55;
unsigned char pad56[0x16];
void (*fn6c)(void);
};

void OvlFunc_947_200a694(int arg0)
{
    struct Actor947 *p;

    p = (struct Actor947 *)__MapActor_GetActor(arg0);
    p->f22 = 2;
    p->f55 = 0;
    p->fn6c = OvlFunc_947_2009aa8;
}

INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/OvlFunc_947_200a6b8.s");
INCLUDE_ASM("asm/maps/crossbone_isle_dungeon_2/crossbone_isle_dungeon_2_data.s");
extern unsigned char iwram_3001ebc[];
struct Bss36d0Entry {
    int unk0;
    int unk4;
    int unk8;
    int unkc;
    int unk10;
};
extern struct Bss36d0Entry bss_36d0[];

extern unsigned char Const74[] __asm__(".Lconst_74");
__asm__(".equ .Lconst_74, 0x74");
extern unsigned char Const77[] __asm__(".Lconst_77");
__asm__(".equ .Lconst_77, 0x77");
extern unsigned char Const79[] __asm__(".Lconst_79");
__asm__(".equ .Lconst_79, 0x79");
extern unsigned char Const7A[] __asm__(".Lconst_7a");
__asm__(".equ .Lconst_7a, 0x7a");

extern void OvlFunc_947_2008ba4(int);
extern void __Func_80105d4();
extern int __GetFlag();
extern void OvlFunc_947_2008ec8(int);
extern void OvlFunc_common0_70(int, int, int, int);
extern void __Func_8091494();
extern void OvlFunc_947_2009d84(void);
extern void __CutsceneWait();
extern void __StartTask();
extern void OvlFunc_947_200a6b8(void);
extern void OvlFunc_947_200a4cc(void);
extern void OvlFunc_947_200a5f8(int);
extern void OvlFunc_947_200a63c(int);

int CrossboneIsleDungeon2_MapInit(void)
{
    unsigned int i;
    unsigned int r5;
    int off;
    int base;
    int val;
    int val0;
    int val40;
    int val1;
    int val2;
    int val18;
    int val8;
    int val16;
    int val10;
    int zero;
    int val_c0;
    int val_c;
    int x;
    int y;
    int mapId;
    unsigned char v;
    unsigned char *actor;
    unsigned char *ptr;

    off = 0xe0;
    base = *(int *)iwram_3001ebc;
    val = 0x81 << 2;
    off <<= 1;
    *(int *)(base + off) = val;

    mapId = *(short *)((char *)&gState + off);
    if (mapId == (int)Const74) {
        OvlFunc_947_2008ba4(8);
        OvlFunc_947_2008ba4(9);
        OvlFunc_947_2008ba4(10);
        OvlFunc_947_2008ba4(11);
        OvlFunc_947_2008ba4(12);
    } else if (mapId == (int)Const77) {
        val0 = 0;
        val40 = 0x40;
        __Func_80105d4(0x20, 0, 0x40, 0x20, val0, val40);
        OvlFunc_947_2008ba4(8);
        OvlFunc_947_2008ba4(9);
        OvlFunc_947_2008ba4(10);
        OvlFunc_947_2008ba4(11);
        OvlFunc_947_2008ba4(12);
        OvlFunc_947_2008ba4(13);
        OvlFunc_947_2008ba4(14);
        OvlFunc_947_2008ba4(15);
        if (__GetFlag(0x109) != 0) {
            if (__GetFlag(0x80 << 2) != 0) {
                val1 = 1;
                val2 = 2;
                __CopyMapTiles(0x4f, 0x22, 0x54, 0x18, val1, val2);
                __CopyMapTiles(0, 0x20, 0x20, 0, 0x20, 0x20);
                __CopyMapTiles(0x20, 0x20, 0x40, 0, 0x20, 0x20);
                OvlFunc_947_2008ec8(9);
                OvlFunc_947_2008ec8(10);
                OvlFunc_947_2008ec8(11);
                OvlFunc_947_2008ec8(12);
                OvlFunc_947_2008ec8(13);
                OvlFunc_947_2008ec8(14);
                OvlFunc_947_2008ec8(15);
                val18 = 0x18;
                val8 = 8;
                __Func_8010704(0x18, 3, 1, 1, val18, val8);
            }
        }
    } else if (mapId == (int)Const79) {
        OvlFunc_common0_70(0x92 << 18, 0, 0xc8 << 16, 0xdf);
        if (__GetFlag(0x109) == 0) {
            ((unsigned char *)__MapActor_GetActor(0))[0x62] = 1;
        }
        __Func_8091494(0);
        if (((unsigned char *)__MapActor_GetActor(0))[0x62] == 0) {
            OvlFunc_947_200a09c();
        }
        OvlFunc_947_200a694(8);
        OvlFunc_947_200a694(9);
        OvlFunc_947_200a694(10);
        OvlFunc_947_200a694(11);

        val = 0x80;
        for (i = 0; i <= 3; i++) {
            bss_36d0[i].unk0 = 0;
            bss_36d0[i].unk4 = 0;
            bss_36d0[i].unk8 = 0;
            bss_36d0[i].unk10 = i + (val << 2);
        }

        OvlFunc_947_2009d84();
        __CutsceneWait(1);
        __StartTask(OvlFunc_947_200a6b8, 0xc8 << 4);

        if (__GetFlag(0x109) != 0) {
            for (r5 = 8; ; r5++) {
                if (r5 > 11) break;
                actor = (unsigned char *)__MapActor_GetActor(r5);
                x = *(int *)(actor + 8) >> 20;
                if (x == 0x25) {
                    y = *(int *)(actor + 0x10) >> 20;
                    if (y == 9) {
                        __Func_8010704(0x1b, 8, 1, 1, x, y);
                        break;
                    }
                }
            }
        }
    } else {
        off = 0xe0 << 1;
        if (*(short *)((char *)&gState + off) == (int)Const7A) {
            zero = 0;
            __MapActor_SetAnim(10, 2);
            __Func_8092950(10, 6);
            OvlFunc_947_2008ba4(8);
            OvlFunc_947_2008ba4(9);
            ((unsigned char *)__MapActor_GetActor(8))[0x55] = zero;
            ((unsigned char *)__MapActor_GetActor(9))[0x55] = zero;
            OvlFunc_947_200a4cc();
            OvlFunc_947_200a5f8(11);
            OvlFunc_947_200a5f8(12);
            OvlFunc_947_200a5f8(13);
            OvlFunc_947_200a63c(11);
            OvlFunc_947_200a63c(12);
            OvlFunc_947_200a63c(13);
            *(int *)((char *)__MapActor_GetActor(13) + 0x6c) = zero;
            OvlFunc_947_200a5f8(14);
            ptr = (unsigned char *)__MapActor_GetActor(14);
            ptr += 0x59;
            v = 8;
            v |= *ptr;
            *ptr = v;
            if (__GetFlag(0x202) == 0) {
                val_c0 = 0xc0 << 9;
                *(int *)((char *)__MapActor_GetActor(13) + 0x18) = val_c0;
                *(int *)((char *)__MapActor_GetActor(13) + 0x1c) = val_c0;
                val_c = 0xc;
                *(unsigned char *)(*(int *)((char *)__MapActor_GetActor(13) + 0x50) + 9) |= val_c;
                *(unsigned char *)(*(int *)((char *)__MapActor_GetActor(14) + 0x50) + 9) |= val_c;
                val16 = 0x16;
                val10 = 0x10;
                __Func_8010704(0x1a, 0xc, 1, 1, val16, val10);
            }
        }
    }

    return 0;
}

/* overlay-owned data blobs (no .text) */
