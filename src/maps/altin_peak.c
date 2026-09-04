/* rom_7b9cb4 (overlay file 932): consolidated TU — altin_peak map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/altin_peak/exports.s");

extern void __Func_8091f14(int, int);

void OvlFunc_932_2008030(void) {
    __Func_8091f14(0xe, 0x17);
}

INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_2008040.s");

extern unsigned int __MapActor_GetActor(unsigned int arg0);

unsigned int OvlFunc_932_2008098(unsigned int arg0) {
    unsigned int r0;
    unsigned int r3;

    r0 = __MapActor_GetActor(8);
    r3 = *(unsigned int *)(r0 + 8);
    *(unsigned int *)(arg0 + 8) = r3;
    *(unsigned int *)(arg0 + 0xc) = 0xfff40000;
    r3 = *(unsigned int *)(r0 + 0x10);
    *(unsigned int *)(arg0 + 0x10) = r3;
    return 0;
}
unsigned int OvlFunc_932_20080bc(unsigned int arg0) {
    unsigned int *ptr = (unsigned int *)arg0;
    ptr[2] += ptr[9];
    ptr[3] += ptr[10];
    ptr[6] += ptr[11];
    ptr[7] += ptr[11];
    ptr[10] -= ptr[18];
    return 0;
}

INCLUDE_ASM("asm/maps/altin_peak/AltinPeak_GetEntrances.s");
INCLUDE_ASM("asm/maps/altin_peak/AltinPeak_GetSpecialExits.s");

extern unsigned char gOvl_0200c85c[];

unsigned int AltinPeak_GetExits(void) {
    return (unsigned int)gOvl_0200c85c;
}

INCLUDE_ASM("asm/maps/altin_peak/AltinPeak_GetActors.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_20082cc.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_2008388.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_20083b4.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_20083e0.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200840c.s");

void OvlFunc_932_200847c(void)
{
struct Actor932
{
unsigned char pad1[0xc];
long f0c;
unsigned char pad2[0x23 - 0xc - 4];
unsigned char f23;
};
  struct Actor932 *actor;
  int s1;
  int s2;

  actor = (struct Actor932 *) __MapActor_GetActor(8);
  s1 = 9;
  s2 = 0xd;
  __Func_8010704(7, 0xd, 1, 1, s1, s2);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    actor->f0c = actor->f0c + -0x200000;
    actor->f23 = 2;
  }
  __SetFlag(0x200);
}

INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_20084cc.s");

void OvlFunc_932_200850c(void)
{
struct Actor932
{
unsigned char pad1[0xc];
int fc;
unsigned char pad2[0x23 - 0xc - 4];
unsigned char f23;
};
  struct Actor932 *actor;

  actor = (struct Actor932 *) __MapActor_GetActor(9);
  __Func_8010704(0, 0, 1, 1, 0x1a, 0x1a);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    actor->fc += -0x200000;
    actor->f23 = 2;
  }
  __SetFlag(0x200);
}

void OvlFunc_932_200855c(void)
{
struct Actor932
{
unsigned char pad[0xc];
unsigned int f0xc;
unsigned char pad2[0x23 - 0x10];
unsigned char f0x23;
};
  struct Actor932 *actor;
  int s1;
  int s2;

  actor = (struct Actor932 *) __MapActor_GetActor(9);
  s1 = 0x19;
  s2 = 0xd;
  __Func_8010704(0x17, 0xd, 1, 1, s1, s2);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    actor->f0xc += 0xffe00000;
    actor->f0x23 = 2;
  }
  __SetFlag(0x200);
}

void OvlFunc_932_20085ac(void)
{
struct Actor932
{
unsigned char pad1[0xc];
long posY;
unsigned char pad2[0x23 - 0xc - 4];
unsigned char f23;
};
  struct Actor932 *actor;
  int s1;
  int s2;

  actor = (struct Actor932 *) __MapActor_GetActor(9);
  s1 = 0x2b;
  s2 = 0x29;
  __Func_8010704(0x2d, 0x29, 1, 1, s1, s2);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    actor->posY += 0xffe00000;
    actor->f23 = 2;
  }
  __SetFlag(0x200);
}

void OvlFunc_932_20085fc(void)
{
struct Actor932
{
char pad0[0xc];
long f0c;
char pad1[0x23 - 0x10];
unsigned char f23;
};
  struct Actor932 *actor;
  int s1;
  int s2;

  actor = (struct Actor932 *) __MapActor_GetActor(0xb);
  s1 = 0x11;
  s2 = 0xa;
  __Func_8010704(1, 0, 1, 1, s1, s2);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    actor->f0c = actor->f0c + 0xffe00000;
    actor->f23 = 2;
  }
  __SetFlag(0x201);
}

void OvlFunc_932_2008650(void)
{
struct Actor932
{
unsigned char pad1[0xc];
long f0c;
unsigned char pad2[0x23 - 0xc - 4];
unsigned char f23;
};
  struct Actor932 *actor;
  int s1;
  int s2;

  actor = (struct Actor932 *) __MapActor_GetActor(12);
  s1 = 26;
  s2 = 15;
  __Func_8010704(1, 0, 1, 1, s1, s2);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    actor->f0c = actor->f0c + -0x200000;
    actor->f23 = 2;
  }
  __SetFlag(0x204);
}

INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_20086a0.s");
typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern void *iwram_3001e70;
extern ActorCmd gScript_932__0200bd48[];
extern void OvlFunc_932_20086a0(void);
extern unsigned char Lm932_5238[] __asm__(".Lm932_5238");

void __Func_8012330(int, int, int);
void __CutsceneWait(int);
void __WaitFrames(int);
void __MapActor_SetPos(int, int, int);
void __MapActor_SetBehavior(int, void *);
void __SetIntrHandler(int, int, void *);
void __Func_8010704(int, int, int, int, int, int);
void __SetFlag(int);

void OvlFunc_932_20086dc(void) {
    int a = 0x20000;
    int b = 0x20000;
    int c = 0x10000;
    int u = -1;
    int v = -1;
    int w = 0xe666;
    char *field;
    char *layer;
    void *actor;
    int i;
    int s1, s2;

    do { } while (a == 0);

    field = (char *)iwram_3001e70;
    __PlaySound(0xe6);
    __Func_8012330(a, b, c);
    __CutsceneWait(10);

    layer = field + (0xb2 << 1);
    for (i = 0; i <= 23; i++) {
        *(int *)(layer + 0xc) += 0xffff0000;
        __WaitFrames(4);
        if (i == 8) {
            actor = (void *)__MapActor_GetActor(8);
            *(int *)((char *)actor + 0x18) = 0x1999;
            actor = (void *)__MapActor_GetActor(8);
            *(int *)((char *)actor + 0x1c) = 0x1999;
            __MapActor_SetPos(8, 0x980000, 0xd80000);
            __MapActor_SetBehavior(8, gScript_932__0200bd48);
        }
    }

    __SetIntrHandler(1, 0, OvlFunc_932_20086a0);
    *(unsigned short *)Lm932_5238 = 0;
    do {
        __WaitFrames(1);
    } while (++*(unsigned short *)Lm932_5238 <= 100);

    __WaitFrames(1);
    __SetIntrHandler(1, 0, 0);
    __PlaySound(0x121);
    __Func_8012330(u, v, w);
    __CutsceneWait(0x1e);
    s1 = 3;
    s2 = 0xe;
    __Func_8010704(0, 0, 1, 2, s1, s2);
    __SetFlag(0x8fd);
}
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_20087e8.s");
extern void __CopyMapTiles(int, int, int, int, int, int);
void __PlaySound(unsigned int snd);
void OvlFunc_932_20088d4(void)
{
    int a = 0x20000;
    int b = 0x20000;
    int c = 0x10000;
    int u = -1;
    int v = -1;
    int w = 0xe666;
    char *field;
    int one;
    int two;
    char *layer;
    int i;
    int s1, s2;

    do { } while (a == 0);

    one = 1;
    field = (char *)iwram_3001e70;
    __CopyMapTiles(0x71, 0x1f, 0x67, 0x11, one, one);
    two = 2;
    __CopyMapTiles(0x6f, 0x20, 0x68, 0x12, 3, two);
    __CopyMapTiles(0x40, 0x20, 0x67, 0x12, one, two);
    __PlaySound(0xe6);
    __Func_8012330(a, b, c);
    __CutsceneWait(10);

    layer = field + (0xb2 << 1);
    for (i = 23; i >= 0; i--) {
        *(int *)(layer + 0xc) += 0xffff0000;
        __WaitFrames(4);
    }

    __SetIntrHandler(1, 0, OvlFunc_932_20086a0);
    *(unsigned short *)Lm932_5238 = 0;
    do {
        __WaitFrames(1);
    } while (++*(unsigned short *)Lm932_5238 <= 100);

    __WaitFrames(1);
    __SetIntrHandler(1, 0, 0);
    __PlaySound(0x121);
    __Func_8012330(u, v, w);
    __CutsceneWait(0x1e);
    s1 = 4;
    s2 = 3;
    __CopyMapTiles(0x67, 0xe, 0x67, 0x11, s1, s2);
    __SetFlag(0x907);
}
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_20089ec.s");

extern void OvlFunc_932_20089ec(void);

void OvlFunc_932_2008a64(void) {
    __CutsceneStart();
    __Func_801776c(0x1528, 1);
    __PlaySound(0x7d);
    OvlFunc_932_20089ec();
    __WaitFrames(0x14);
    __MapActor_PlayPendingSound();
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_2008a94.s");

extern void OvlFunc_932_2008a94(void);

void OvlFunc_932_2008b0c(void) {
    __CutsceneStart();
    __Func_801776c(0x1528, 1);
    __PlaySound(0x7d);
    OvlFunc_932_2008a94();
    __WaitFrames(0x14);
    __MapActor_PlayPendingSound();
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_2008b3c.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_2008bd8.s");


void OvlFunc_932_2008c74(void) {
    unsigned char *p;

    p = __MapActor_GetActor(0xa);
    p[0x23] = 3;
}


void OvlFunc_932_2008c88(void) {
    unsigned char *p;

    p = __MapActor_GetActor(0xa);
    p[0x23] = 1;
}

void __CutsceneStart(void);
void __MapActor_SetSpeed(int, int, int);
void __MapActor_SetAnim(int, int);
void __MapActor_TravelTo(int, int, int);
void __MapActor_WaitMovement(int);
void OvlFunc_932_200840c(void);
void __CutsceneEnd(void);

void OvlFunc_932_2008c9c(void)
{
    int a = 0x3333;
    int b = 0x1999;
    int x1 = 0x190;
    int y = 0x1a8;
    int x2 = 0x198;
    unsigned char *actor;
    int s1, s2;

    do { } while (a == 0);

    __CutsceneStart();
    s1 = 0x18;
    s2 = 0x1a;
    __Func_8010704(0x18, 0x1b, 2, 1, s1, s2);
    __PlaySound(0xb9);
    __MapActor_SetSpeed(10, a, b);
    __MapActor_SetSpeed(0, a, b);
    actor = (unsigned char *)__MapActor_GetActor(10);
    actor[0x5a] &= 0xfe;
    __MapActor_SetAnim(0, 8);
    __MapActor_TravelTo(0, x1, y);
    __MapActor_TravelTo(10, x2, y);
    __MapActor_WaitMovement(10);
    __MapActor_SetAnim(0, 1);
    OvlFunc_932_200840c();
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_2008d2c.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_2008ec0.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_2009398.s");
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern int __GetFlag();
extern unsigned char _EVENT_4d[], _EVENT_4e[], _EVENT_4f[], _EVENT_50[],
    _EVENT_51[], _EVENT_52[], _EVENT_53[], _EVENT_54[], _EVENT_55[],
    _EVENT_56[], _EVENT_57[];
extern unsigned char gScript_882__0200cd6c[], gScript_882__0200ce5c[],
    gScript_881__0200cebc[];
extern unsigned char Lm932_4d24[] __asm__(".Lm932_4d24");
extern unsigned char Lm932_4d9c[] __asm__(".Lm932_4d9c");
extern unsigned char Lm932_4dc0[] __asm__(".Lm932_4dc0");
extern unsigned char Lm932_4f34[] __asm__(".Lm932_4f34");
extern unsigned char Lm932_4fb8[] __asm__(".Lm932_4fb8");
extern unsigned char Lm932_506c[] __asm__(".Lm932_506c");
extern unsigned char Lm932_50cc[] __asm__(".Lm932_50cc");
extern unsigned char Lm932_512c[] __asm__(".Lm932_512c");
extern unsigned char Lm932_5150[] __asm__(".Lm932_5150");
extern unsigned char Lm932_4d18[] __asm__(".Lm932_4d18");

int AltinPeak_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_4d) {
        if (__GetFlag(0x8fd))
            return (int)gScript_882__0200cd6c;
        return (int)Lm932_4d24;
    }
    if (ev == (int)_EVENT_4e) return (int)Lm932_4d9c;
    if (ev == (int)_EVENT_4f) return (int)Lm932_4dc0;
    if (ev == (int)_EVENT_50) return (int)gScript_882__0200ce5c;
    if (ev == (int)_EVENT_51) return (int)gScript_881__0200cebc;
    if (ev == (int)_EVENT_52) return (int)Lm932_4f34;
    if (ev == (int)_EVENT_53) return (int)Lm932_4fb8;
    if (ev == (int)_EVENT_54) return (int)Lm932_506c;
    if (ev == (int)_EVENT_55) return (int)Lm932_50cc;
    if (ev == (int)_EVENT_56) return (int)Lm932_512c;
    if (ev == (int)_EVENT_57) return (int)Lm932_5150;
    return (int)Lm932_4d18;
}
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_2009770.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_2009838.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_2009d0c.s");
INCLUDE_ASM("asm/maps/altin_peak/AltinPeak_MapInit.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200a0d0.s");
extern void __Func_8092950(int a, int b);

extern void OvlFunc_932_200ba44(void);
void OvlFunc_932_200a310(void)
{
    unsigned int r3;
    unsigned int r2;
    int s1;
    int s2;

    if (__GetFlag(0x8fe) != 0) {
        *(unsigned short *)(iwram_3001e70 + 0x14) &= 0xfdff;
        __MapActor_SetPos(9, 0, 0);
    } else {
        OvlFunc_932_200ba44();
        if (__GetFlag(0x109) == 0 && (r3 = (unsigned int)&gState, r2 = 0xe1, r2 <<= 1, r3 += r2, *(short *)r3 == 0x63)) {
            OvlFunc_932_200ae1c();
        } else {
            s1 = 0x25;
            s2 = 0x18;
            __Func_8010704(0x26, 0x18, 1, 2, s1, s2);
            s1 = 0x2d;
            s2 = 0x17;
            __Func_8010704(0x2c, 0x17, 1, 2, s1, s2);
            if (__GetFlag(0x8fe) == 0) {
                __Func_8092950(9, 2);
                __MapActor_SetAnim(9, 3);
                OvlFunc_932_200abb0(0xee << 16, 0, 0xd1 << 17, 0x80 << 8);
            }
        }
    }

    if (__GetFlag(0x323) != 0) {
        s1 = 0x18;
        s2 = 0x50;
        __Func_8010704(0, 0, 1, 1, s1, s2);
        s1 = 1;
        s2 = 2;
        __CopyMapTiles(0, 1, 0x18, 0xb, s1, s2);
    } else {
        s1 = 0x18;
        s2 = 0x50;
        __Func_8010704(2, 0, 1, 1, s1, s2);
        s1 = 1;
        s2 = 2;
        __CopyMapTiles(2, 1, 0x18, 0xb, s1, s2);
    }
}
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200a428.s");
void OvlFunc_932_200a490(void)
{
    unsigned int r3;
    unsigned int r2;
    int s1;
    int s2;

    if (__GetFlag(0x907) != 0) {
        *(unsigned short *)(iwram_3001e70 + 0x14) &= 0xfdff;
        __MapActor_SetPos(10, 0, 0);
    } else {
        if (__GetFlag(0x109) == 0 && (r3 = (unsigned int)&gState, r2 = 0xe1, r2 <<= 1, r3 += r2, *(short *)r3 == 0x63)) {
            OvlFunc_932_200ae84();
        }
        OvlFunc_932_200ba44();
        if (__GetFlag(0x907) == 0) {
            __Func_8092950(10, 2);
            __MapActor_SetAnim(10, 3);
            OvlFunc_932_200abb0(0xbb << 18, 0x80 << 12, 0x8c << 17, 0x80 << 8);
        }
    }

    OvlFunc_932_200b460(9);
    if (__GetFlag(0x80 << 2) != 0) {
        __MapActor_SetAnim(9, 5);
        s1 = 0x19;
        s2 = 0xd;
        __Func_8010704(0x17, 0xd, 1, 1, s1, s2);
        {
            unsigned char *p = (unsigned char *)__MapActor_GetActor(9) + 0x23;
            unsigned int val = *p;
            unsigned int bit = 2;
            bit |= val;
            *p = bit;
        }
    }

    if (__GetFlag(0x325) != 0) {
        s1 = 0xb;
        s2 = 0x49;
        __Func_8010704(10, 0x48, 1, 1, s1, s2);
        s1 = 1;
        s2 = 2;
        __CopyMapTiles(0x31, 0x20, 0xb, 4, s1, s2);
    } else {
        s1 = 0xb;
        s2 = 0x49;
        __Func_8010704(12, 0x48, 1, 1, s1, s2);
        s1 = 1;
        s2 = 2;
        __CopyMapTiles(0x30, 0x20, 0xb, 4, s1, s2);
    }
}
void OvlFunc_932_200a5c0(void)
{
    int pos_x = 0xb3 << 17;
    int pos_y = 0xd0 << 15;
    unsigned int r3;
    unsigned int r2;
    unsigned char *actor;
    unsigned int val;
    unsigned int bit;
    int s1;
    int s2;

    do {} while (pos_x == 0);

    if ((r3 = (unsigned int)&gState, r2 = 0xe1, r2 <<= 1, r3 += r2, *(short *)r3 == 2) && __GetFlag(0x109) == 0) {
        __MapActor_SetPos(8, pos_x, pos_y);
    }

    OvlFunc_932_200b460(9);

    if (__GetFlag(0x80 << 2) != 0) {
        actor = (unsigned char *)__MapActor_GetActor(9);
        __MapActor_SetAnim(9, 5);
        s1 = 0x2b;
        s2 = 0x29;
        __Func_8010704(0x2d, 0x29, 1, 1, s1, s2);
        actor += 0x23;
        val = *actor;
        bit = 2;
        bit |= val;
        *actor = bit;
    }

    if (__GetFlag(0x907) != 0) {
        *(unsigned short *)(iwram_3001e70 + 0x14) &= 0xfdff;
    }

    if (__GetFlag(0x326) != 0) {
        s1 = 0x10;
        s2 = 0x5c;
        __Func_8010704(0x11, 0x5d, 1, 1, s1, s2);
        s1 = 1;
        s2 = 2;
        __CopyMapTiles(0x2e, 0x1d, 0x10, 0x1c, s1, s2);
    } else {
        s1 = 0x10;
        s2 = 0x5c;
        __Func_8010704(0xf, 0x5d, 1, 1, s1, s2);
        s1 = 1;
        s2 = 2;
        __CopyMapTiles(0x2f, 0x1d, 0x10, 0x1c, s1, s2);
    }
}
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200a6c0.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200a804.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200a934.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200a9dc.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200aa10.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200aa48.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200ab58.s");

extern unsigned char L5240[] __asm__(".Lm932_5240");
extern unsigned char L523c[] __asm__(".Lm932_523c");
extern void OvlFunc_932_200ab58(void);

void OvlFunc_932_200abb0(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3) {
    unsigned int *r4 = (unsigned int *)L5240;
    unsigned int *r2;
    r4[2] = arg2;
    r2 = (unsigned int *)L523c;
    r4[0] = arg0;
    r4[1] = arg1;
    r2[0] = arg3;
    __Func_8091ff0(0xaa);
    __StartTask(OvlFunc_932_200ab58, 0xc8 << 4);
}

INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200abe0.s");

extern unsigned char iwram_3001e40[];   /* @ 0x03001E40 */

void OvlFunc_932_200ace0(unsigned int arg0)
{
    unsigned int v;

    v = *(unsigned int *)iwram_3001e40;
    v &= 7;
    if (v == 0) {
        __Func_80929d8(arg0, 2);
    } else if (v == 2) {
        __Func_80929d8(arg0, 0);
    }
}

void OvlFunc_932_200ad08(void)
{
    unsigned long long u;
    unsigned long v;
    unsigned short t;

    u = 0x18;
    do { u = (unsigned long) u; } while (0);
    v = u;
    __Func_8096fb0(v, 1);

    t = 10;
    do { t = (unsigned short) t; } while (0);
    __Func_80970f8(t, 9);

    __Func_809728c();

    __Func_8092950(10, 2);

    __FieldMove(1);

    t = 10;
    do { t = (unsigned short) t; } while (0);
    __Func_8092950(t, 2);

    __Func_8097174();

    __Func_8092950(10, 2);

    __Func_8097194();

    __PlaySound(0x120);

    t = 10;
    do { t = (unsigned short) t; } while (0);
    __Func_8092950(t, 2);
}

void OvlFunc_932_200ad58(void)
{
    /* Block-scoped decls keep these prototypes out of the sibling C fns below.
       __MapActor_GetActor (unsigned int, :15), ActorCmd (:210),
       gScript_882__0200cd6c (:420) and iwram_3001ebc (unsigned char*, :695) are
       already declared file-scope; iwram needs the array view here. */
    extern void __CutsceneStart(void);
    extern void __MapActor_SetPos(int, int, int);
    extern void __MapTransitionIn(void);
    extern void __WaitMapTransition(void);
    extern void __CutsceneWait(int);
    extern void __Func_808f1c0(int, int);
    extern void __Func_8091a58(int, int);
    extern unsigned char *__Func_8093554(void);
    extern void __Func_80933d4(int, int);
    extern void __Func_80933f8(int, int, int, int);
    extern void __Func_8093530(void);
    extern void OvlFunc_932_20086dc(void);
    extern void __SetMapEvents(ActorCmd *);
    extern void __CutsceneEnd(void);
    extern unsigned char iwram_3001ebc__arr[] __asm__("iwram_3001ebc");

    int c8 = 0xc8 << 15;
    int f9 = 0xf9 << 16;
    int *actor;
    int off;

    do {} while (c8 == 0);

    actor = (int *)__MapActor_GetActor(0);
    __CutsceneStart();
    __MapActor_SetPos(10, 0, 0);
    __MapActor_SetPos(8, 0, 0);

    off = 0xe0 << 1;
    *(int *)(*(unsigned char **)iwram_3001ebc__arr + off) = 0x201;

    __MapTransitionIn();
    __WaitMapTransition();
    __CutsceneWait(0x14);
    __Func_808f1c0(0xca, 3);
    __Func_8091a58(0xca, 0);

    __Func_8093554()[0x55] = 0;

    __Func_80933d4(0x19999, 0x3333);
    __Func_80933f8(c8, 0, f9, 1);
    __Func_8093530();
    __CutsceneWait(0x14);

    OvlFunc_932_20086dc();
    __Func_80933f8(actor[2], actor[3], actor[4], 1);
    __Func_8093530();

    __SetMapEvents(gScript_882__0200cd6c);
    *(int *)(*(unsigned char **)iwram_3001ebc__arr + off) = 0x81 << 2;
    __CutsceneEnd();
}

extern unsigned char *iwram_3001ebc;

void OvlFunc_932_200ae1c(void)
{
  unsigned short t;

  __CutsceneStart();
  t = 9;
  do { t = (unsigned short) t; } while (0);
  __MapActor_SetPos(t, 0, 0);
  __MapActor_SetPos(8, 0x1480000, 0x1a80000);
  __SetFlag(0x323);
  OvlFunc_932_20089ec();
  __Func_800fe9c();
  __WaitFrames(1);
  *(unsigned int *)(iwram_3001ebc + (0xe0 << 1)) = 0x201;
  __MapTransitionIn();
  __WaitMapTransition();
  OvlFunc_932_20087e8();
  *(unsigned int *)(iwram_3001ebc + (0xe0 << 1)) = 0x81 << 2;
  __CutsceneEnd();
}

extern void *iwram_3001ebc__a1 __asm__("iwram_3001ebc");

void OvlFunc_932_200ae84(void)
{
  unsigned short t;

  __CutsceneStart();
  t = 10;
  do { t = (unsigned short) t; } while (0);
  __MapActor_SetPos(t, 0, 0);
  __MapActor_SetPos(8, 0x1e80000, 0x8a0000);
  __SetFlag(0x325);
  OvlFunc_932_2008a94();
  __Func_800fe9c();
  __WaitFrames(1);
  *(int *)((char *)iwram_3001ebc__a1 + 0x1c0) = 0x201;
  __MapTransitionIn();
  __WaitMapTransition();
  OvlFunc_932_20088d4();
  *(int *)((char *)iwram_3001ebc__a1 + 0x1c0) = 0x204;
  __CutsceneEnd();
}

extern unsigned char L51b0[] __asm__(".Lm932_51b0");

void OvlFunc_932_200aeec(void)
{
    unsigned int *p;
    unsigned int v;

    p = (unsigned int *)L51b0;
    v = *p + 1;
    *p = v;
    if (v != 0x3c) {
        return;
    }
    __PlaySound(0xb7);
    *p = 0;
}

INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200af10.s");

extern unsigned int iwram_3001e40__s __asm__("iwram_3001e40");

void OvlFunc_932_200affc(void)
{
    if ((iwram_3001e40__s >> 1) & 1) {
        __Func_8092950(8, 7);
    } else {
        __Func_8092950(8, 6);
    }
}

INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200b028.s");

struct Foo_a {
unsigned char pad[0x17D];
unsigned short unk17E;
};
extern struct Foo_a* iwram_3001ebc__a2 __asm__("iwram_3001ebc");

void OvlFunc_932_200b410(void) {
    iwram_3001ebc__a2->unk17E = 0x1018;
}

INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200b428.s");

void OvlFunc_932_200b460(unsigned int arg0) {
    unsigned char *p;

    p = __MapActor_GetActor(arg0);
    p[0x59] &= 0xfe;
    __Func_8012078(0, *(int *)(p + 8), *(int *)(p + 0x10), 0xff);
}

INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200b484.s");

void OvlFunc_932_200b5a8(void) {}

INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200b5ac.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200b668.s");

struct Foo_b {
unsigned char pad[0x65];
unsigned short unk66;
};

void OvlFunc_932_200b724(struct Foo_b* arg0) {
    arg0->unk66 = 0x21;
    __PlaySound(0x120);
}

INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200b738.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200b850.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200b9c8.s");
INCLUDE_ASM("asm/maps/altin_peak/OvlFunc_932_200ba44.s");

INCLUDE_ASM("asm/maps/altin_peak/imports.s");
