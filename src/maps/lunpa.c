// fakematch
/* rom_7c460c (overlay file 939): consolidated TU — lunpa map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/lunpa/Lunpa_GetEntrances.s");

unsigned int Lunpa_GetSpecialExits(void) {
    return 0;
}

INCLUDE_ASM("asm/maps/lunpa/Lunpa_GetExits.s");
INCLUDE_ASM("asm/maps/lunpa/Lunpa_GetActors.s");

void OvlFunc_939_20083c0(void)
{
  int new_var;
  unsigned short new_var2;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __CutsceneStart();
  new_var = 0;
  new_var2 = 0x14;
  __MapActor_SetPos(new_var2, new_var, (long) (new_var4 = new_var));
  __SetFlag(0xfd1);
  new_var6 = 0xb5;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_808f1c0(new_var5, 3);
  __Func_8091a58(0xb5, 0);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_20083f4.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2008468.s");
extern int __GetFlag(int);
extern int __GetFlag(int);
extern unsigned char *__MapActor_GetActor(int);
extern void __Func_8092304(int, int, int);
extern void __Func_808edac(int, int, int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __Func_80105d4(int, int, int, int, int, int);
extern void __MapActor_SetPos(int, int, int);
extern void __Actor_SetSpriteFlags(unsigned char *, int);
extern void __StartTask(void *, int);
extern void __ClearFlag(int);
extern void OvlFunc_939_2008468(void);

static inline void MapActor_SetPos8(int actor, int x, int y)
{
    __MapActor_SetPos(actor, x << 16, y << 15);
}

static inline void Func_808edac(int a, int b, int c)
{
    __Func_808edac(a, -b, -c);
}

void OvlFunc_939_200849c(void)
{
    unsigned char *actor;
    int x;
    int z;
    int r7;
    int r6;
    int r5;
    int a, b;
    int three;

    actor = __MapActor_GetActor(0);
    x = *(int *)(actor + 8) / 0x100000;
    z = *(int *)(actor + 0x10) / 0x100000;

    if (!__GetFlag(0xf27)) {
        if (x == 7 && z == 0x10) {
            __Func_8092304(0, 0, 0x10);
        }
        Func_808edac(0x66, 1, 1);
        a = 7;
        b = 0x10;
        __Func_8010704(0x1c, 0x1f, 1, 1, a, b);
    }

    r7 = 0x2e;
    __Func_80105d4(0x2f, 4, 1, 1, r7, 4);
    three = 3;
    __Func_8010704(0x22, 0x25, three, three, 0xd, three);
    MapActor_SetPos8(8, 0xe8, 0x90);
    actor = __MapActor_GetActor(8);
    *(int *)(actor + 0xc) = 0;

    if (__GetFlag(0x202)) {
        r6 = 1;
        r5 = 0xe;
        __Func_80105d4(0x29, 0x31, 3, 4, r6, r5);
        __Func_80105d4(0x2c, 0x31, 3, 4, 0x21, r5);
        __Func_80105d4(0x2f, 0x31, 3, 4, r6, r7);
    } else {
        __MapActor_SetPos(0x13, 0xe0 << 14, 0x86 << 17);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0x13), 0);
        actor = __MapActor_GetActor(0x13);
        if (actor != 0) {
            *(actor + 0x55) = 8;
            *(int *)(actor + 0xc) = 0x80 << 13;
            *(actor + 0x23) = 2;
            *(int *)(actor + 0x18) = 0x13333;
            *(int *)(actor + 0x1c) = 0xc0 << 9;
        }
    }

    __StartTask(OvlFunc_939_2008468, 0xc8 << 4);
    __ClearFlag(0x201);
}
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_20085f0.s");

extern void __CutsceneStart();
extern void __Func_801776c();
extern void __CutsceneEnd();

void OvlFunc_939_20086bc(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29e1, 1);
    __CutsceneEnd();
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState__a1 __asm__("gState");
extern unsigned char _EVENT_9f[], _EVENT_68[];
extern unsigned char Lm939_23b4[] __asm__(".Lm939_23b4");
extern unsigned char Lm939_21bc[] __asm__(".Lm939_21bc");
extern unsigned char Lm939_1fc4[] __asm__(".Lm939_1fc4");

int Lunpa_GetEvents(void)
{
    GlobalState *p = &gState__a1;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_9f) {
        __GetFlag(0x941);
        return (int)Lm939_23b4;
    }
    if (ev == (int)_EVENT_68) {
        if (__GetFlag(0x941)) return (int)Lm939_21bc;
    }
    return (int)Lm939_1fc4;
}

void OvlFunc_939_2008738(void) {
    __CutsceneStart();
    __MapActor_Emote(0x11, 0x81 << 1, 0x3c);
    __MessageID(0x1b9c);
    __Func_8093054(0x11, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2008764.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_20087f4.s");

void OvlFunc_939_2008844(void) {
    __CutsceneStart();
    __MessageID(0x1ba6);
    __Func_8093054(9, 0);
    __CutsceneEnd();
}

void OvlFunc_939_2008864(void) {
    __CutsceneStart();
    __MessageID(0x1baa);
    __Func_8093054(0xb, 0);
    __CutsceneEnd();
}

void OvlFunc_939_2008884(void) {
    __CutsceneStart();
    __MessageID(0x1bb0);
    __Func_8093054(0xf, 0);
    __CutsceneEnd();
}

void OvlFunc_939_20088a4(void)
{
  int new_var;
  int new_var2;
  __CutsceneStart();
  new_var = 0;
  __Func_80925cc(0xa, 3);
  __MessageID(0x24d1);
 do { new_var2 = new_var; __ActorMessage(0xa, new_var2); } while (0);
  __CutsceneEnd();
}

void OvlFunc_939_20088cc(void) {
    __CutsceneStart();
    __MessageID(0x24d3);
    __Func_8093054(0xc, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_20088ec.s");

extern unsigned char gState;
extern void __MessageID(int);
extern void __ActorMessage(int, int);

void OvlFunc_939_2008980(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState;
    r2 = 0x93;
    r2 <<= 2;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) != 0) {
        __MessageID(0x2412);
    } else if (__GetFlag(0x941) != 0) {
        __MessageID(0x24dd);
    } else {
        __MessageID(0x1bb6);
    }
    __ActorMessage(9, 0);
}

extern void __SetFlag(int);
extern void __Func_8097608(void);
extern void __MapActor_Face(int, int, int);
extern void __Func_809259c(int, int);
extern void __MapActor_Emote(int, int, int);
extern unsigned int iwram_3001ebc;

void OvlFunc_939_20089d4(void) {
    unsigned int r3;
    unsigned int r2;
    int x;
    unsigned long long t;
    unsigned int v;

    r3 = (unsigned int)&gState__a1;
    r2 = 0x93;
    r2 <<= 2;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0 && __GetFlag(0x941) && !__GetFlag(0x94d)) {
        x = 0x9af;
        __asm__("" : "+r"(x));
        x = __GetFlag(x);
        if (!x) {
            *(unsigned short *)(iwram_3001ebc + (0xbf << 1)) = x;
            __Func_8097608();
            __MapActor_Face(8, 0, 0);
            v = 8;
            __asm__ __volatile__("" : "+r"(v));
            __MapActor_Emote(v, 0x101, 0x3c);
            __MessageID(0x24db);
            __SetFlag(0x9af);
        } else {
            __MessageID(0x24e7);
        }
        __ActorMessage(8, 0);
        __Func_809259c(8, 1);
        __MessageID(0x24dc);
    } else {
        __MessageID(0x1bbf);
    }
    __ActorMessage(8, 0);
}

extern int _MSG_1bc0;

void OvlFunc_939_2008a90(void)
{
  unsigned long long t;
  unsigned long v;
  if (__GetFlag(0x941))
  {
    __MessageID(0x24e8);
  }
  else
  {
    __MessageID((int) (&_MSG_1bc0));
  }
  t = 9;
  do { t = (unsigned long) t; } while (0);
  v = t;
  __ActorMessage(v, 0);
}

INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2008ac4.s");
extern void __MapActor_WaitMovement(int);
extern void __MapActor_SetAnim(int, int);
extern void __MapActor_TravelBy(int, int, int);
void OvlFunc_939_2008b0c(void)
{
    int emote = 0x102;

    do { } while (emote == 0);

    __CutsceneStart();
    __MapActor_SetAnim(0, 1);
    __MessageID(0x24cf);
    __ActorMessage(1, 0);
    __MapActor_Emote(0, emote, 100);
    __MapActor_SetAnim(0, 2);
    __MapActor_TravelBy(0, 0, 0xc);
    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 1);
    __ClearFlag(0x243);
    __CutsceneEnd();
}
struct TableEntry {
    void *unk0;
    unsigned short unk4;
    unsigned short unk6;
};
extern struct TableEntry Lm939_250c[] __asm__(".Lm939_250c");

static inline void CallFunc(int unk4, int unk6, void *unk0) {
    __Func_8010560(unk0, unk4, unk6);
}

void OvlFunc_939_2008b6c(void)
{
    /* Block-scoped decls keep these prototypes out of the sibling C fns below.
       __MapActor_GetActor is declared file-scope above (unsigned char*, :39).
       iwram_3001ebc is an unsigned int scalar at file scope (:230); this fn
       needs the array view of the same symbol (single pointer load). */
    extern void __CutsceneStart(void);
    extern void __PlaySound(int);
    extern void __Func_8010560(void *, int, int);
    extern void __MapActor_SetSpeed(int, int, int);
    extern void __MapActor_SetAnim(int, int);
    extern void __Func_8092208(int, int, int);
    extern void __CutsceneWait(int);
    extern void __Func_8091e9c(int);
    extern void __MapTransitionOut(void);
    extern void __WaitMapTransition(void);
    extern void __CutsceneEnd(void);
    extern unsigned char iwram_3001ebc_arr[] __asm__("iwram_3001ebc");

    int speed_x = 0x8000;
    int speed_y = 0x4000;
    int step = -8;
    unsigned char *base;
    unsigned int i;
    int actor;
    short *p;
    int index;

    do { } while (speed_x == 0);

    base = *(unsigned char **)iwram_3001ebc_arr;
    __CutsceneStart();
    for (i = 8; i <= 0x41; i++) {
        actor = __MapActor_GetActor(i);
        if (actor != 0) {
            *(unsigned char *)(actor + 0x55) = 0;
        }
    }
    __PlaySound(0x9e);
    p = (short *)(base + (0xb6 << 1));
    index = *p - 4;
    CallFunc(Lm939_250c[index].unk4, Lm939_250c[index].unk6, Lm939_250c[index].unk0);

    __MapActor_SetSpeed(0, speed_x, speed_y);
    *(unsigned char *)(__MapActor_GetActor(0) + 0x55) = 0;
    __MapActor_SetAnim(0, 2);

    if (index != 6) {
        __Func_8092208(0, 2, step);
        __CutsceneWait(10);
    }
    __Func_8091e9c(*p);
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2008c10.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2008c74.s");

extern void __Func_8093c00(void);

void OvlFunc_939_2008d08(void) {
    __Func_8093c00();
}

void OvlFunc_939_2008d14(void) {
    if (__GetFlag(0x201))
        return;
    __PlaySound(0x53);
}

INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2008d30.s");
extern void __MapActor_TravelToAnim(int, int, int);
extern void __CutsceneWait(int);
extern void __MapActor_SetIdle(int);
extern void __Func_8092adc(int, int, int);
static inline void MapActor_Emote(int actor, int emote, int c) {
    __MapActor_Emote(actor, emote << 1, c);
}

void OvlFunc_939_2008eb0(void)
{
    unsigned int r3;
    unsigned int r2;
    int a6;

    r3 = (unsigned int)&gState;
    r2 = 0x93;
    r2 <<= 2;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0) {
        __CutsceneStart();
        MapActor_Emote(8, 0x80, 2);
        MapActor_Emote(9, 0x80, 0xf);
        __CutsceneWait(0x1e);
        __MapActor_TravelToAnim(8, 0x98, 0xa8);
        __MapActor_TravelToAnim(9, 0xa8, 0xa8);
        __MapActor_WaitMovement(8);
        __MapActor_WaitMovement(9);
        __MapActor_SetIdle(8);
        __MapActor_SetAnim(8, 0);
        __Func_8092adc(8, 0xc0 << 6, 0);
        __MapActor_SetIdle(9);
        __MapActor_SetAnim(9, 0);
        __Func_8092adc(9, 0xa0 << 7, 0);
        __MessageID(0x24da);
        __ActorMessage(8, 0);
        __SetFlag(0x90 << 2);
        a6 = 0xb;
        __Func_8010704(6, 0xb, 1, 1, 7, a6);
        __Func_8010704(6, 0xb, 1, 1, 8, a6);
        __Func_8010704(6, 0xb, 1, 1, 9, a6);
        __CutsceneEnd();
    }
}

void OvlFunc_939_2008f9c(void) {}

INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2008fa0.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2008ff0.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_200918c.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_20091d0.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2009240.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_20092a4.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_200931c.s");
extern void __MapTransitionIn(void);
extern void __Func_8096fb0(int, int);
extern void __Func_80970f8(int, int);
extern void __Func_809728c(void);
extern void __FieldMove(int);
extern void __Func_8097174(void);
void OvlFunc_939_20095bc(void)
{
    int y = 0x120;
    while (y == 0) {}

    __CutsceneStart();
    __MapTransitionIn();
    __MapActor_TravelToAnim(0, 0x98, 0xa8);
    __MapActor_WaitMovement(0);
    __CutsceneWait(0x14);
    __Func_8096fb0(0x92, 1);
    __Func_80970f8(0, 0);
    __Func_809728c();
    __FieldMove(1);
    __Func_8097174();
    __MapActor_TravelToAnim(0, 0x90, 0xb8);
    __MapActor_WaitMovement(0);
    __MapActor_TravelToAnim(0, 0x58, 0xb8);
    __MapActor_WaitMovement(0);
    __MapActor_TravelToAnim(0, 0x58, 0xc8);
    __MapActor_WaitMovement(0);
    __MapActor_TravelToAnim(0, 0x48, 0xc8);
    __MapActor_WaitMovement(0);
    __MapActor_TravelToAnim(0, 0x48, y);
    __MapActor_WaitMovement(0);
    __MapActor_TravelToAnim(0, 0x58, y);
    __MapActor_WaitMovement(0);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/lunpa/Lunpa_MapInit.s");

int OvlFunc_939_20097d8(int *actor)
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

INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2009840.s");
INCLUDE_ASM("asm/maps/lunpa/lunpa_data.s");
