// fakematch
/* rom_7aa430 (overlay file 923): consolidated TU — mercury_lighthouse_entrance map overlay. */

#include "nonmatching.h"

/* auto void-veneer protos (add_void_protos.py) */
extern void __Actor_SetAnim();
extern void __Actor_SetScript();
extern void __Actor_WaitMovement();
extern void __CutsceneEnd();
extern void __CutsceneStart();
extern void __CutsceneWait();
extern void __Func_801776c();
extern void __MapActor_PlayPendingSound();
extern void __PlaySound();
extern void __SetFlag();


extern int OvlFunc_923_200858c();
extern void OvlFunc_923_2009fe8();

extern int Func_8000948(int);

int OvlFunc_923_2008314(int *a, int *b)
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

INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_2008350.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_20083a8.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_2008528.s");

extern unsigned int L2700[] __asm__(".Lm923_2700");
extern int L2740[] __asm__(".Lm923_2740");
extern void *OvlFunc_923_2008350(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_923_200858c(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L2700[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_923_2008350(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L2740;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L2700[idx];
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

INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_2008630.s");

extern int L2758[] __asm__(".Lm923_2758");
extern void *OvlFunc_923_2008630(int *, void *, void *);

int OvlFunc_923_2008758(void *arg0)
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
    obj = OvlFunc_923_2008630(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = L2758[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L2758[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = L2758[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L2758[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L2700[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L2700[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (L2758[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (L2758[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L2700[dir] & 0xffff0000;
        cur[2] += L2700[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L2700[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}

extern unsigned char iwram_3001e70[];
extern int L2700__a2[] __asm__(".Lm923_2700");
extern void OvlFunc_923_2008528(int, int, int, int, int, int);
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

void OvlFunc_923_20088ec(struct Pk arg)
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
    t1 = L2758[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L2758[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L2758[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L2758[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (L2758[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (L2758[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_923_2008528(0, vb[0], vb[2], w, h, 0);
    __MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __MapActor_TravelBy(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_923_200858c;
    __CutsceneWait(4);
    if (dir - 6 <= 7)
        __Actor_SetAnim(actor, 3);
    else
        __Actor_SetAnim(actor, 2);
    __PlaySound(0xef);
    __Actor_TravelTo(actor, arg.x, arg.y, arg.z);
    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 2);
    {
        register unsigned int r0z __asm__("r0") = 0;
        register unsigned int r1v __asm__("r1") = 0x4ccc;
        register unsigned int r2v __asm__("r2") = 0x1999;
        __asm__ volatile ("" : : "r"(r0z));
        __asm__ volatile ("" : : "r"(r1v));
        __asm__ volatile ("" : : "r"(r2v));
        __MapActor_SetSpeed(r0z, r1v, r2v);
    }
    __MapActor_TravelBy(0, (short)(L2700__a2[dir] >> 16) / 2, (short)(L2700__a2[dir]) / 2);
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
    x1 += L2758[arg.a << 2] << 16;
    x2 += L2758[(arg.a << 2) + 1] << 16;
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
    OvlFunc_923_2008528(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_923_2008528(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (L2758[arg.a << 2] << 16);
    u2 = ap[2] + (L2758[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_923_2008528(2, ap[0], ap[2], w, h, 0);
    __MapActor_PlayPendingSound();
}

INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_2008ba4.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_2008cc0.s");

extern void __PlaySound(unsigned int);

unsigned int OvlFunc_923_2008d48(void) {
    __PlaySound(0x76);
    return 0;
}

INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_2008d58.s");

INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_2008d98.s");

void OvlFunc_923_2008e3c(void)
{
    unsigned int i = 0;
    unsigned int j = 0;

    do {
        i++;
        *(unsigned short *)(0x50000de - j * 2) = 0;
        j++;
    } while (i <= 6);
}

extern void OvlFunc_923_200a370(void);

void OvlFunc_923_2008e60(void) {
    OvlFunc_923_200a370();
}


void OvlFunc_923_2008e6c(void) {
    OvlFunc_923_2009fe8();
}

extern void OvlFunc_923_200a030(void);

void OvlFunc_923_2008e78(void) {
    OvlFunc_923_200a030();
}

extern void OvlFunc_923_2009ec8(void);

void OvlFunc_923_2008e84(void) {
    OvlFunc_923_2009ec8();
}


extern unsigned char gOvl_0200a928[];

unsigned int MercuryLighthouseEntrance_GetEntrances(void) {
    return (unsigned int)gOvl_0200a928;
}

int MercuryLighthouseEntrance_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200abf8[];

void *MercuryLighthouseEntrance_GetExits(void) {
    return (void *)gOvl_0200abf8;
}
extern unsigned char gOvl_0200ac58[];

void *MercuryLighthouseEntrance_GetActors(void) {
    return (void *)gOvl_0200ac58;
}

void OvlFunc_923_2008eac(void)
{
    __CutsceneStart();
    {
        unsigned int rq = 0;
        __MapActor_SetAnim(rq, 1);
    }
    {
        unsigned int rm = 0x1632;
        __Func_801776c(rm, 1);
    }
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_2008ed0.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_2008f48.s");

extern void OvlFunc_923_2008ed0(int);

void OvlFunc_923_2008fac(void) {
    OvlFunc_923_2008ed0(0x11);
}


void OvlFunc_923_2008fb8(void) {
    OvlFunc_923_2008ed0(0x12);
}


void OvlFunc_923_2008fc4(void) {
    OvlFunc_923_2008ed0(0x13);
}

extern unsigned char gOvl_0200ad60[];

void *MercuryLighthouseEntrance_GetEvents(void) {
    return (void *)gOvl_0200ad60;
}

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

extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);
extern void OvlFunc_923_2008d98();
extern unsigned char Lm923_2f4c[] __asm__(".Lm923_2f4c");
extern int _divsi3_RAM(int, int);
extern void __CopyMapTiles(int, int, int, int, int, int);
void OvlFunc_923_2008fd8(void)
{
    int val;
    int x;
    unsigned int i;
    int rx;
    int ry;
    int rz;
    int div;
    int s1;
    int s2;
    struct EffectData data;

    x = *(int *)(__MapActor_GetActor(0) + 8);
    if (x < 0) {
        x += 0xfffff;
    }
    val = x >> 20;

    x = *(int *)(__MapActor_GetActor(0) + 0x10);
    if (x < 0) {
        x += 0xfffff;
    }
    x >>= 20;

    if (val == 0xc && x == 0x20) {
        __CutsceneStart();
        __Func_8091200(0x10000, 0);
        __Func_8091254(0x3c);
        __CutsceneWait(0x78);
        __Func_8091200(0x10005, 1);
        __Func_8091254(0x3c);
        __CutsceneWait(0x28);

        for (i = 0; i <= 14; i++) {
            data.unk0 = 1;
            data.unk18 = 0x8f << 1;
            data.unk1c = (int)Lm923_2f4c;
            __PlaySound(0xf6);

            rx = 0xd0 - (((unsigned int)__Random() * 16) >> 16);
            ry = (0x8c << 2) - (((unsigned int)__Random() * 16) >> 16);
            rz = ((unsigned int)__Random() * 4) >> 16;
            div = _divsi3_RAM((rz * 15 << 16) + (0xf0 << 14), 0x64);

            OvlFunc_common0_10c(rx << 16, 0, ry << 16, 0, div, 0, 0x320001, &data);
            __CutsceneWait(4);
        }

        __PlaySound(0xdc);
        __CutsceneWait(0x3c);
        __SetFlag(0x875);
        __StartTask(OvlFunc_923_2008d98, 0xc8 << 4);
        s1 = 5;
        s2 = 3;
        __CopyMapTiles(0x25, 0x62, 0xa, 0x61, s1, s2);
        s1 = 6;
        s2 = 0x20;
        __Func_8010704(0x46, 0x20, 0xd, 7, s1, s2);
        __Func_8091200(0x10000, 0);
        __Func_8091254(0x3c);
        __CutsceneWait(0x78);
        __CutsceneEnd();
    }
}

extern void __Func_8091e9c(int);

void OvlFunc_923_2009144(void) {
    __Func_8091e9c(0x3f);
}


extern void __ClearFlag(int);
extern void __MapActor_SetBehavior(int, void *);
extern unsigned char gScript_923__0200a820[];

void OvlFunc_923_2009150(void) {
    __ClearFlag(0x205);
    __MapActor_SetBehavior(8, gScript_923__0200a820);
}

typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_884__0200a874[29];
extern ActorCmd gScript_923__0200a8c8[21];

void OvlFunc_923_200916c(void)
{
    unsigned char *p;
    int v;

    p = __MapActor_GetActor(0);
    v = *(int *)(p + 8);
    if (v < 0) {
        v += 0xfffff;
    }
    v >>= 20;
    __SetFlag(0x205);
    if (v == 7) {
        __MapActor_SetBehavior(8, gScript_884__0200a874);
    } else {
        __MapActor_SetBehavior(8, gScript_923__0200a8c8);
    }
}

INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_20091b4.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_2009208.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/MercuryLighthouseEntrance_MapInit.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_2009730.s");
extern unsigned char iwram_3001ebc[];

extern int __GetFlag(int);
extern void __MapActor_SetPos(int, int, int);
extern void __Func_8092adc(int, int, int);
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern void __MapActor_Face(int, int, int);
extern void __MapActor_DoAnim(int, int);
extern void __MapActor_TravelToAnim(int, int, int);
extern void __Func_80925cc(int, int);
void OvlFunc_923_200996c(void)
{
    int flag = 0x250;
    int x = 0x880000;
    int y = 0x900000;
    unsigned char *actor;

    do { } while (flag == 0);

    if (!__GetFlag(flag)) {
        __SetFlag(flag);
        __CutsceneStart();
        actor = (unsigned char *)__MapActor_GetActor(12);
        *(int *)(actor + 0x18) = 0xffff0000;
        actor = (unsigned char *)__MapActor_GetActor(13);
        *(int *)(actor + 0x18) = 0xffff0000;
        actor = (unsigned char *)__MapActor_GetActor(14);
        *(int *)(actor + 0x18) = 0xffff0000;
        __MapActor_SetPos(3, x, y);
        __Func_8092adc(3, 0x4000, 10);
        *(int *)(*(char **)iwram_3001ebc + 0x1c0) = 0x201;
        __MapTransitionIn();
        __WaitMapTransition();
        __CutsceneWait(60);
        __MapActor_Face(3, 0, 0);
        __MapActor_DoAnim(3, 3);
        __CutsceneWait(30);
        __MapActor_TravelToAnim(3, 0x88, 0x48);
        __CutsceneWait(40);
        __Func_80925cc(0, 1);
        __MapActor_WaitMovement(3);
        __MapActor_SetPos(3, 0, 0);
        __SetFlag(0x872);
        *(int *)(*(char **)iwram_3001ebc + 0x1c0) = 0x204;
        __CutsceneEnd();
    }
}

INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_2009a3c.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_2009bc8.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_2009c20.s");

unsigned int OvlFunc_923_2009c60(unsigned int arg0)
{
    unsigned char *base;
    unsigned short *counter;
    short val;

    base = (unsigned char *)arg0;
    counter = (unsigned short *)(base + 0x64);
    *counter = (unsigned short)(*counter + 1);
    val = (short)*counter;
    if (val > 0x10) {
        return 0;
    }
    *(unsigned int *)(base + 0x18) = (val * 3) << 10;
    *(unsigned int *)(base + 0x1c) = (val * 3) << 10;
    return 1;
}
unsigned int OvlFunc_923_2009c88(unsigned int arg0)
{
    short *count;
    int v;

    count = (short *)((char *)arg0 + 0x64);
    *count += 1;
    v = *count;
    if (v > 0x10)
        return 0;
    v = (v << 11) + (0x80 << 9);
    *(int *)((char *)arg0 + 0x18) = v;
    *(int *)((char *)arg0 + 0x1c) = v;
    return 1;
}

INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_2009cb4.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_2009df8.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_2009ec8.s");

extern unsigned int iwram_3001edc;
extern unsigned int gScript_923__0200a7dc;

void OvlFunc_923_2009fe8(void)
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
            __Actor_SetScript(r5, &gScript_923__0200a7dc);
            __Actor_SetAnim(r5, 7);
            *(unsigned int *)((char *)r6 + 0x14) = 0;
        }
    }
}

INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_200a030.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/OvlFunc_923_200a370.s");

extern unsigned int *__galloc_ewram(int a, int b);
extern void __DeleteActor(int a);

void OvlFunc_923_200a3b8(void) {
    unsigned int *p;
    unsigned int *r5;

    p = __galloc_ewram(0x23, 4);
    if (p == (unsigned int *)0)
        return;
    r5 = (unsigned int *)*p;
    if (*(unsigned int *)((char *)r5 + 0x14) == 0)
        return;
    __DeleteActor(*(unsigned int *)((char *)r5 + 0x14));
    *(unsigned int *)((char *)r5 + 0x14) = 0;
}

INCLUDE_ASM("asm/maps/mercury_lighthouse_entrance/mercury_lighthouse_entrance_data.s");
