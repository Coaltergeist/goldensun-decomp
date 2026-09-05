/* rom_7d4af4 (overlay file 949): consolidated TU — tolbi map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/tolbi/exports.s");

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_949_2008030(void) {
    __Func_80955b0(0x1f, 2, 4);
}

extern int Func_8000948(int);

int OvlFunc_949_2008040(int *a, int *b)
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

INCLUDE_ASM("asm/maps/tolbi/OvlFunc_949_200807c.s");
INCLUDE_ASM("asm/maps/tolbi/OvlFunc_949_2008170.s");

extern unsigned char gOvl_02009060[];

unsigned int Tolbi_GetEntrances(void) {
    return (unsigned int)gOvl_02009060;
}

int Tolbi_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020091f8[];

void *Tolbi_GetExits(void) {
    return (void *)gOvl_020091f8;
}
extern unsigned char gOvl_02009238[];

void *Tolbi_GetActors(void) {
    return (void *)gOvl_02009238;
}

INCLUDE_ASM("asm/maps/tolbi/OvlFunc_949_2008224.s");
INCLUDE_ASM("asm/maps/tolbi/OvlFunc_949_2008260.s");
INCLUDE_ASM("asm/maps/tolbi/OvlFunc_949_200828c.s");

extern void __MessageID(int);
extern void __ActorMessage(int, int);

void OvlFunc_949_20082b8(void) {
    __MessageID(0xe36);
    __ActorMessage(-1, 0);
}


void OvlFunc_949_20082d4(void) {
    __MessageID(0xe37);
    __ActorMessage(-1, 0);
}

INCLUDE_ASM("asm/maps/tolbi/OvlFunc_949_20082f0.s");
INCLUDE_ASM("asm/maps/tolbi/OvlFunc_949_20083d0.s");

extern unsigned char L1a9c[] __asm__(".Lm949_1a9c");
extern unsigned char L14a8[] __asm__(".Lm949_14a8");
extern unsigned int gScript_960__020097a8;

unsigned int * Tolbi_GetEvents(void) {
    if (__GetFlag(0x95 << 4)) {
        return (unsigned int *)L1a9c;
    } else {
        if (__GetFlag(0x962)) {
            return &gScript_960__020097a8;
        } else {
            return (unsigned int *)L14a8;
        }
    }
}

void OvlFunc_949_20084e8(void) {
    __CutsceneStart();
    __MessageID(0x1f92);
    __Func_8093054(0xf, 0);
    __CutsceneEnd();
}

void OvlFunc_949_2008508(void) {
    __CutsceneStart();
    __MessageID(0x1f9d);
    __Func_8093054(0x18, 0);
    __CutsceneEnd();
}

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_8092adc(int, int, int);
extern int _MSG_1fa0;

void OvlFunc_949_2008528(void) {
    int w1 = 0xc0 << 8;
    int w2 = 0x80 << 8;
    do { } while (w1 == 0);
    __CutsceneStart();
    __MessageID((int)(&_MSG_1fa0));
    __Func_8092adc(0x19, w1, 0);
    __ActorMessage(0x19, 0);
    __Func_8092adc(0x19, w2, 0);
    __ActorMessage(0x19, 0);
    __CutsceneEnd();
}

extern void __Func_809259c(int, int);

void OvlFunc_949_2008568(void) {
    int w = 0x80 << 7;
    do { } while (w == 0);
    __CutsceneStart();
    __Func_8092adc(0x1a, w, 0);
    __Func_809259c(0x1a, 2);
    __MessageID(0x1fa2);
    __ActorMessage(0x1a, 0);
    __CutsceneEnd();
}

void OvlFunc_949_200859c(void)
{
  int b;
  int a;
  __CutsceneStart();
  __MessageID(0x1fa3);
  b = 0;
  do { a = 0x1b; __ActorMessage(a, b); __CutsceneEnd(); } while (0);
}

void OvlFunc_949_20085bc(void) {
    __CutsceneStart();
    __MessageID(0x235f);
    __Func_8093054(0x18, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/tolbi/OvlFunc_949_20085dc.s");
INCLUDE_ASM("asm/maps/tolbi/OvlFunc_949_2008644.s");
INCLUDE_ASM("asm/maps/tolbi/OvlFunc_949_20086e8.s");
INCLUDE_ASM("asm/maps/tolbi/Tolbi_MapInit.s");
INCLUDE_ASM("asm/maps/tolbi/OvlFunc_949_2008894.s");

extern void __Func_8091e9c(int x);

void OvlFunc_949_2008954(void) {
    __Func_8091e9c(0x1e);
    __CutsceneEnd();
}

extern int *iwram_3001ebc;

void OvlFunc_949_2008964(void) {
    unsigned int r3;
    unsigned int r2;
    short r0;

    r3 = (unsigned int)iwram_3001ebc;
    r2 = 0xb6;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    r0 = *(short *)((char *)r3 + r2);
    __Func_8091e9c(r0);
}

INCLUDE_ASM("asm/maps/tolbi/OvlFunc_949_2008980.s");

struct Actor949
{
unsigned char pad1[0x23];
unsigned char f23;
unsigned char pad2[0x55 - 0x23 - 1];
unsigned char f55;
};

void OvlFunc_949_2008ca8(void)
{
  struct Actor949 *actor;
  unsigned long long t;
  unsigned long v;
  int s1;
  int s2;

  actor = (struct Actor949 *) __MapActor_GetActor(9);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    actor->f23 = 2;
    actor->f55 = 0;
  }
  t = 9;
  do { t = (unsigned long) t; } while (0);
  v = t;
  __MapActor_SetAnim(v, 5);
  s1 = 0x22;
  s2 = 0x10;
  __Func_8010704(0x24, 0x10, 1, 1, s1, s2);
  __SetFlag(0x201);
}

INCLUDE_ASM("asm/maps/tolbi/tolbi_data.s");

INCLUDE_ASM("asm/maps/tolbi/imports.s");
