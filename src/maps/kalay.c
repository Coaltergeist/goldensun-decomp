/* rom_7c097c (overlay file 936): consolidated TU — kalay map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/kalay/exports.s");

/* forward decl hoisted to TU top: used as a function pointer (line ~133) before
 * its definition; reconcile re-emitted it below the use instead of here. */
extern void OvlFunc_936_200b90c(void);

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_936_2008030(void) {
    __Func_80955b0(12, 2, 3);
}

INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_2008040.s");
INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_20080ac.s");
INCLUDE_ASM("asm/maps/kalay/Kalay_GetEntrances.s");

int Kalay_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200c6b8[];

void *Kalay_GetExits(void) {
    return (void *)gOvl_0200c6b8;
}

INCLUDE_ASM("asm/maps/kalay/Kalay_GetActors.s");

extern void __CutsceneStart();
extern void __Func_801776c();
extern void __CutsceneEnd();

void OvlFunc_936_20081e4(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29df, 1);
    __CutsceneEnd();
}

void OvlFunc_936_200820c(void)
{
  int new_var;
  unsigned short new_var2;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __CutsceneStart();
  new_var = 0;
  new_var2 = 0xc;
  __MapActor_SetPos(new_var2, new_var, (long) (new_var4 = new_var));
  __SetFlag(0xfd6);
  new_var6 = 0xb5;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_808f1c0(new_var5, 3);
  __Func_8091a58(0xb5, 0);
  __CutsceneEnd();
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState__ge __asm__("gState");
extern unsigned char _EVENT_63[], _EVENT_66[], _EVENT_99[], _EVENT_9a[], _EVENT_9b[], _EVENT_9c[];
extern unsigned char Lm936_4bf4[] __asm__(".Lm936_4bf4");
extern unsigned char gScript_882__0200ce88[];
extern unsigned char gScript_882__0200cedc[];
extern unsigned char Lm936_4f24[] __asm__(".Lm936_4f24");
extern unsigned char Lm936_4f54[] __asm__(".Lm936_4f54");
extern unsigned char Lm936_4f9c[] __asm__(".Lm936_4f9c");
extern unsigned char Lm936_4be8[] __asm__(".Lm936_4be8");

int Kalay_GetEvents(void)
{
    GlobalState *p = &gState__ge;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_63) return (int)Lm936_4bf4;
    if (ev == (int)_EVENT_66) return (int)gScript_882__0200ce88;
    if (ev == (int)_EVENT_99) return (int)gScript_882__0200cedc;
    if (ev == (int)_EVENT_9a) return (int)Lm936_4f24;
    if (ev == (int)_EVENT_9b) return (int)Lm936_4f54;
    if (ev == (int)_EVENT_9c) return (int)Lm936_4f9c;
    return (int)Lm936_4be8;
}

void OvlFunc_936_20082c8(void) {
    __CutsceneStart();
    __MessageID(0x1a7c);
    __Func_8093054(0x13, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_20082e8.s");

void OvlFunc_936_2008374(void) {
    __CutsceneStart();
    __MessageID(0x25b3);
    __Func_8093054(0xa, 0);
    __CutsceneEnd();
}

extern void *__MapActor_GetActor(int);
extern void __Func_80b0278(int, int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);

void OvlFunc_936_2008394(void)
{
    unsigned char *p;
    unsigned int v;
    p = (unsigned char *)__MapActor_GetActor(0);
    v = (*(unsigned short *)(p + 6) + 0xffffe000) << 16;
    if (v > (0x80 << 24)) {
        __Func_80b0278(0x16, 0x16);
    } else {
        __CutsceneStart();
        __MessageID(0x1acf);
        __ActorMessage(0x16, 0);
        __CutsceneEnd();
    }
}

INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_20083d8.s");

void OvlFunc_936_2008420(void)
{
  unsigned char *p;
  unsigned int v;
  p = (unsigned char *) __MapActor_GetActor(0);
  v = ((*((unsigned short *) (p + 6))) + 0xffffe000) << 16;
  if (v > (0xc0 << 24))
  {
    __Func_80b0278(0x18, 0x18);
  }
  else
  {
    __CutsceneStart();
    __MessageID(0x1ad5);
 do { __ActorMessage(0x18, 0); __CutsceneEnd(); } while (0);
  }
}

struct TableEntry {
    void *unk0;
    unsigned short unk4;
    unsigned short unk6;
};
extern struct TableEntry Lm936_50e0[] __asm__(".Lm936_50e0");

void OvlFunc_936_2008464(void) {
    /* iwram_3001ebc is a file-scope unsigned int scalar (:270); this fn needs the
       array view of the same symbol. Callees are left implicit, matching the
       standalone match (implicit decls are block-scoped, no sibling leak). */
    extern unsigned char iwram_3001ebc__arr[] __asm__("iwram_3001ebc");
    unsigned int map;
    unsigned int i;
    unsigned char *actor;
    short *p;
    int v;
    int arg1, arg2;
    int a = 0x8000;
    int b = 0x4000;
    int c = -8;

    while (a == 0) {}

    map = *(unsigned int *)iwram_3001ebc__arr;
    __CutsceneStart();

    for (i = 8; i <= 0x41; i++) {
        actor = (unsigned char *)__MapActor_GetActor(i);
        if (actor != 0) {
            *(actor + 0x55) = 0;
        }
    }

    p = (short *)(map + (0xb6 << 1));
    v = *p - 1;
    __PlaySound(0x9e);

    arg1 = Lm936_50e0[v].unk4;
    arg2 = Lm936_50e0[v].unk6;
    __Func_8010560(Lm936_50e0[v].unk0, arg1, arg2);

    __MapActor_SetSpeed(0, a, b);

    ((unsigned char *)__MapActor_GetActor(0))[0x55] = 0;

    __MapActor_SetAnim(0, 2);
    __Func_8092208(0, 2, c);
    __CutsceneWait(10);
    __Func_8091e9c(*p);
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}
void OvlFunc_936_2008504(void) {
    int size;
    unsigned char *actor;
    int a = 0x8000;
    int b = 0x4000;
    int c = -8;

    do { } while (a == 0);

    __CutsceneStart();
    __PlaySound(0xbc);
    size = 2;
    __CopyMapTiles(0x24, 0x17, 0x2b, 0xc, size, size);
    __WaitFrames(5);
    __CopyMapTiles(0x27, 0x17, 0x2b, 0xc, size, size);
    __WaitFrames(5);
    __MapActor_SetSpeed(0, a, b);
    actor = (unsigned char *)__MapActor_GetActor(0);
    actor[0x55] = 0;
    __MapActor_SetAnim(0, 2);
    __MapActor_TravelBy(0, 0, c);
    __CutsceneWait(10);
    __Func_8091e9c(2);
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_2008590.s");
INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_200958c.s");
INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_20095b4.s");
INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_20095e0.s");


void OvlFunc_936_20095f8(void) {
    unsigned char *p;

    p = __MapActor_GetActor(0);
    p[0x23] = p[0x23] & 0xfe;
}


void OvlFunc_936_2009610(void)
{
  int new_var;
  unsigned short new_var2;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __StopTask(OvlFunc_936_200b90c);
  __WaitFrames(1);
  new_var = 0;
  new_var2 = 0x1a;
  __MapActor_SetPos(new_var2, new_var, (long) (new_var4 = new_var));
  __SetFlag(0x916);
  new_var6 = 0xb5;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_808f1c0(new_var5, 3);
  __Func_8091a58(0xb5, 0);
}

INCLUDE_ASM("asm/maps/kalay/Kalay_MapInit.s");
INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_20096bc.s");

extern unsigned int gState;

void OvlFunc_936_20097e8(void) {
    unsigned int r3;
    unsigned int r2;
    short val;

    if (__GetFlag(0x941)) {
        __SetFlag(0x321);
        __SetFlag(0x913);
        __SetFlag(0x912);
        __SetFlag(0x915);
    }

    if (__GetFlag(0x94 << 4)) {
        __SetFlag(0x321);
    }

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    val = *(short *)((char *)r3 + r2);

    if (val != 0) {
        if (__GetFlag(0x912)) {
            return;
        }
    } else {
        return;
    }

    OvlFunc_936_200a008();
}

INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_2009858.s");
INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_20098a4.s");
INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_2009930.s");

extern void OvlFunc_936_2009ea4(unsigned int);

void OvlFunc_936_2009e6c(void)
{
    OvlFunc_936_2009ea4(0x1b);
    OvlFunc_936_2009ea4(0x1c);
    OvlFunc_936_2009ea4(0x1d);
    OvlFunc_936_2009ea4(0x1e);
    OvlFunc_936_2009ea4(0x20);
    OvlFunc_936_2009ea4(0x1f);
    OvlFunc_936_2009ea4(0x21);
    OvlFunc_936_2009ea4(0x22);
}

INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_2009ea4.s");
INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_2009ed8.s");
INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_2009f14.s");
INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_200a008.s");
INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_200a6c0.s");

extern unsigned int iwram_3001ebc;

unsigned int OvlFunc_936_200b184(unsigned int arg0, unsigned int arg1)
{
    unsigned int *base;
    unsigned int *r2;
    unsigned int i;
    unsigned int *entry;

    base = (unsigned int *)iwram_3001ebc;
    i = 8;
    r2 = (unsigned int *)((char *)base + 0x34);
    do {
        entry = (unsigned int *)*r2++;
        if ((int)arg0 == (*(int *)((char *)entry + 8) >> 20)) {
            if ((int)arg1 == (*(int *)((char *)entry + 0x10) >> 20))
                return (unsigned int)entry;
        }
        i++;
    } while (i <= 0x41);
    return 0;
}

INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_200b1b8.s");
typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_936__0200c268[12];

/* Local layout; the game's struct Actor / u8..s32 arrive via actor.h below (:524)
   so this fn uses plain types + a private struct name to avoid the redefinition. */
struct Actor936 {
    unsigned char _pad[8];
    int pos_x;
    unsigned char _pad2[12];
    int field_18;
    int field_1c;
};

void OvlFunc_936_200b2a4(void)
{
    extern void *__MapActor_GetActor(int);
    extern int __GetFlag(int);
    extern void __SetFlag(int);
    extern void __CutsceneStart(void);
    extern void __CutsceneEnd(void);
    extern void __CutsceneWait(int);
    extern void __CopyMapTiles(int, int, int, int, int, int);
    extern void __Func_8010704(int, int, int, int, int, int);
    extern void __MapActor_SetPos(int, int, int);
    extern void __MapActor_SetBehavior(int, void *);
    extern void OvlFunc_936_20095b4(void);

    struct Actor936 *actor8;
    struct Actor936 *actor9;
    struct Actor936 *actor11;
    int flag;
    unsigned int i;
    unsigned int five;
    unsigned int one;
    int pos_x = 0x96 << 16;
    int pos_y = 0xb6 << 18;
    unsigned int a4;
    unsigned int a5;

    do { } while (pos_x == 0);

    actor8 = (struct Actor936 *)__MapActor_GetActor(8);
    actor9 = (struct Actor936 *)__MapActor_GetActor(9);
    flag = __GetFlag(0x302);
    if (!flag) {
        if ((actor8->pos_x >> 19) <= 0x1d) {
            actor11 = (struct Actor936 *)__MapActor_GetActor(0xb);
            __CutsceneStart();
            __Func_8010704(7, 0x2c, 1, 1, flag, 1);
            for (i = 0x43, one = 1, five = 5; i <= 0x4a; i++) {
                __CopyMapTiles(i, 0x3a, 0x4e, 0x29, one, five);
                __CutsceneWait(4);
                if (i == 0x46) {
                    __SetFlag(0x302);
                }
            }
            i = 2;
            __CopyMapTiles(0x10, 0x6d, 0xd, 0x6d, 3, i);
            __CutsceneWait(0x28);
            actor11->field_18 = 0x1999;
            actor11->field_1c = 0x1999;
            __MapActor_SetPos(0xb, pos_x, pos_y);
            __MapActor_SetBehavior(0xb, gScript_936__0200c268);
            five = 1;
            __CopyMapTiles(0x43, 0x40, 0x47, 0x2c, five, i);
            __CopyMapTiles(0x43, 0x40, 0x48, 0x2c, five, i);
            __CopyMapTiles(0x43, 0x44, 0x49, 0x2b, five, i);
            __CopyMapTiles(0x43, 0x44, 0x4a, 0x2b, five, i);
            __CopyMapTiles(0x43, 0x40, 0x4b, 0x2c, five, i);
            __CopyMapTiles(0x43, 0x42, 0x4c, 0x2c, five, i);
            __CopyMapTiles(0x43, 0x40, 0x4d, 0x2c, five, i);
            __CopyMapTiles(0x43, 0x40, 0x4e, 0x2c, five, i);
            __CopyMapTiles(0x43, 0x40, 0x4f, 0x2c, five, i);
            __CopyMapTiles(0x43, 0x42, 0x50, 0x2c, five, i);
            __CopyMapTiles(2, 0, 9, 0x2a, i, i);
            __CutsceneWait(0x28);
            __CopyMapTiles(0x44, 0x40, 0x47, 0x2c, five, i);
            __CopyMapTiles(0x44, 0x40, 0x48, 0x2c, five, i);
            __CopyMapTiles(0x44, 0x44, 0x49, 0x2b, five, i);
            __CopyMapTiles(0x44, 0x44, 0x4a, 0x2b, five, i);
            __CopyMapTiles(0x44, 0x40, 0x4b, 0x2c, five, i);
            __CopyMapTiles(0x44, 0x42, 0x4c, 0x2c, five, i);
            __CopyMapTiles(0x44, 0x40, 0x4d, 0x2c, five, i);
            __CopyMapTiles(0x44, 0x40, 0x4e, 0x2c, five, i);
            __CopyMapTiles(0x44, 0x40, 0x4f, 0x2c, five, i);
            __CopyMapTiles(0x44, 0x42, 0x50, 0x2c, five, i);
            __CopyMapTiles(4, 0, 9, 0x2a, i, i);
            __CutsceneWait(0x28);
            i = 10;
            __CopyMapTiles(7, 0xb, 7, 0x2a, i, 8);
            __CopyMapTiles(0x47, 0xc, 0x47, 0x2b, i, 13);
            i = 0x2c;
            __Func_8010704(6, 0xd, 0xc, 0xc, 6, i);
            __CutsceneWait(0x28);
            OvlFunc_936_20095b4();
            __Func_8010704(0, 1, 1, 1, 7, i);
            __CutsceneEnd();
        }
    }
    if (!__GetFlag(0x303)) {
        if ((actor9->pos_x >> 19) <= 0x57) {
            __CutsceneStart();
            for (i = 0x43, one = 1, five = 5; i <= 0x4a; i++) {
                __CopyMapTiles(i, 0x3a, 0x6b, 0x29, one, five);
                __CutsceneWait(4);
                if (i == 0x46) {
                    __SetFlag(0x303);
                }
            }
            five = 2;
            __CopyMapTiles(0x2d, 0x6d, 0x2a, 0x6d, 3, five);
            __CutsceneWait(0x28);
            i = 1;
            __CopyMapTiles(0x43, 0x40, 0x66, 0x2c, i, five);
            __CopyMapTiles(0x43, 0x40, 0x67, 0x2c, i, five);
            __CopyMapTiles(0x43, 0x40, 0x68, 0x2c, i, five);
            __CopyMapTiles(0x43, 0x42, 0x69, 0x2c, i, five);
            __CopyMapTiles(0x43, 0x40, 0x6a, 0x2c, i, five);
            __CopyMapTiles(0x43, 0x40, 0x6b, 0x2c, i, five);
            __CopyMapTiles(0x43, 0x40, 0x6c, 0x2c, i, five);
            __CopyMapTiles(0x43, 0x42, 0x6d, 0x2c, i, five);
            __CutsceneWait(0x28);
            __CopyMapTiles(0x44, 0x40, 0x66, 0x2c, i, five);
            __CopyMapTiles(0x44, 0x40, 0x67, 0x2c, i, five);
            __CopyMapTiles(0x44, 0x40, 0x68, 0x2c, i, five);
            __CopyMapTiles(0x44, 0x42, 0x69, 0x2c, i, five);
            __CopyMapTiles(0x44, 0x40, 0x6a, 0x2c, i, five);
            __CopyMapTiles(0x44, 0x40, 0x6b, 0x2c, i, five);
            __CopyMapTiles(0x44, 0x40, 0x6c, 0x2c, i, five);
            __CopyMapTiles(0x44, 0x42, 0x6d, 0x2c, i, five);
            __CutsceneWait(0x28);
            i = 8;
            __CopyMapTiles(0x26, 0xe, 0x26, 0x2c, i, 4);
            __CopyMapTiles(0x66, 0xe, 0x66, 0x2c, i, 12);
            a4 = 0x25;
            a5 = 0x2b;
            __Func_8010704(0x25, 0xd, 0xa, 0xc, a4, a5);
            __CutsceneWait(0x28);
            OvlFunc_936_20095b4();
            __CutsceneEnd();
        }
    }
}
INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_200b6f8.s");
INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_200b768.s");
INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_200b864.s");

void OvlFunc_936_200b90c(void)
{
  int *actor;
  short *r7;
  int r5;
  int t;
  unsigned int a;
  unsigned int b;
  actor = (int *) __MapActor_GetActor(0x1a);
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
  r7[15] = t >> 3;
  a = __Random();
  b = __Random();
  *((int *) (((char *) actor) + 0x30)) = ((*((int *) (((char *) actor) + 0x30))) + (((a << 9) >> 16) + ((b << 9) >> 16))) + 0x400;
}

#include "actor.h"

extern void OvlFunc_936_200b90c();
extern void __Func_8010704(int, int, int, int, int, int);
extern void __Actor_SetSpriteFlags(struct Actor *, int);
extern void __SetFlag(int);

void OvlFunc_936_200b970(void)
{
  struct Actor *actor;
  unsigned int a;

  actor = __MapActor_GetActor(0xb);
  a = 9;
  __Func_8010704(0, 0, 1, 1, a, 0xe);
  __Func_8010704(0, 0, 1, 1, a, 0x2d);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    actor->pos.y += -0x200000;
    actor->flags = 2;
  }
  __SetFlag(0x201);
}

int OvlFunc_936_200b9d4(int *actor)
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

INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_200ba3c.s");

INCLUDE_ASM("asm/maps/kalay/imports.s");
