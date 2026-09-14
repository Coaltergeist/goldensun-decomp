/* rom_7d4af4 (overlay file 949): consolidated TU — tolbi map overlay. */

#include "nonmatching.h"
#include "api.h"

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
extern unsigned int iwram_3001e8c;
extern int OvlFunc_949_200807c(void *, void *, int, int);

int OvlFunc_949_2008170(unsigned char *arg0)
{
    unsigned char *p0;
    unsigned char *p1;
    unsigned char *target;
    int iVar3;
    int iVar4;

    p0 = (unsigned char *)iwram_3001e8c;
    p1 = *(unsigned char **)((char *)&iwram_3001e8c + 0x30);
    iVar4 = 0;
    iVar3 = 0x12;

    if (*(unsigned short *)(arg0 + 0x64) & 1) {
        target = (unsigned char *)__MapActor_GetActor(0x11);
    } else {
        target = (unsigned char *)__MapActor_GetActor(0x10);
    }
    if (OvlFunc_949_200807c(arg0, target, 0x20, 0) == 0) {
        target = (unsigned char *)__MapActor_GetActor(0);
        if ((*(short *)(p1 + (0xbc << 1)) != 0) || (*(unsigned char *)(p0 + 0xea4) != 0)) {
            iVar3 = 0x1a;
            if (*(unsigned short *)(arg0 + 0x64) & 2) {
                iVar4 = 1;
            }
        }
        OvlFunc_949_200807c(arg0, target, iVar3, iVar4);
    }
    return 0;
}

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

void OvlFunc_949_2008224(void)
{
    unsigned char *p;

    p = (unsigned char *)__MapActor_GetActor(8);
    if (p != 0) {
        p[0x59] = 0;
    }
    __Actor_SetSpriteFlags(__MapActor_GetActor(8), 0);
    API_Func_8012078(0, 0x2200000, 0x1200000, 0xfd);
    __SetFlag(0x200);
}



extern void __Func_8010704(int, int, int, int, int, int);

void OvlFunc_949_2008260(void)
{
    int s1;
    int s2;

    s1 = 3;
    s2 = 0x1a;
    __Func_8010704(3, 0x20, 1, 1, s1, s2);
    API_Func_808edac(0x66, 0x380000, 0x1a80000);
}





void OvlFunc_949_200828c(void)
{
    int s1;
    int s2;

    s1 = 3;
    s2 = 0x1a;
    __Func_8010704(2, 0x19, 1, 1, s1, s2);
    API_Func_808edac(0x66, -1, -1);
}


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
    __CutsceneStart();
    __MessageID((int)(&_MSG_1fa0));
    API_Func_8092adc(0x19, 0xc000, 0);
    __ActorMessage(0x19, 0);
    API_Func_8092adc(0x19, 0x8000, 0);
    __ActorMessage(0x19, 0);
    __CutsceneEnd();
}

extern void __Func_809259c(int, int);

void OvlFunc_949_2008568(void) {
    __CutsceneStart();
    API_Func_8092adc(0x1a, 0x4000, 0);
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

extern void __Func_808f1c0(int, int);
extern void __Func_8091a58(int, int);

void OvlFunc_949_20085dc(void)
{
    __CutsceneStart();
    if (!API_GetFlag(0x8bf)) {
        API_SetFlag(0x8bf);
        __MessageID(0x2368);
        __ActorMessage(0x13, 0);
        __Func_808f1c0(0xe9, 3);
        __ActorMessage(0x13, 0);
        API_MapActor_SetAnim(0, 1);
        __Func_8091a58(0xe9, 0);
    } else {
        __MessageID(0x236a);
        __ActorMessage(0x13, 0);
    }
    __CutsceneEnd();
}

struct Data1d00 {
    void *a;
    unsigned short b;
    unsigned short c;
};
extern struct Data1d00 L1d00[] __asm__(".Lm949_1d00");



extern void __Func_8091e9c(int x);
extern int *iwram_3001ebc;
extern void __PlaySound(int);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);

void OvlFunc_949_2008644(void)
{
    char *iwram;
    unsigned int i;
    unsigned char *actor;
    short *r6;
    int r5;

    iwram = (char *)iwram_3001ebc;
    __CutsceneStart();
    for (i = 8; i <= 0x41; i++) {
        actor = (unsigned char *)__MapActor_GetActor(i);
        if (actor != 0) {
            actor[0x55] = 0;
        }
    }
    r6 = (short *)(iwram + (0xb6 << 1));
    r5 = *r6;
    r5--;
    __PlaySound(0x9e);
    CallFunc_8010560(L1d00[r5].b, L1d00[r5].c, L1d00[r5].a);
    API_MapActor_SetSpeed(0, 0x8000, 0x4000);
    ((unsigned char *)__MapActor_GetActor(0))[0x55] = 0;
    API_MapActor_SetAnim(0, 2);
    if (r5 != 6) {
        API_Func_8092208(0, 2, -8);
        API_CutsceneWait(10);
    }
    __Func_8091e9c(*r6);
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/tolbi/OvlFunc_949_20086e8.s");
extern int gScript_949__02008ec0;
extern int gScript_949__02008f90;
extern void OvlFunc_949_20086e8(void);
extern void OvlFunc_949_2008ca8(void);
extern void __MapActor_SetPos(int, int, int);
extern void __MapActor_SetBehavior(int, ...);









int Tolbi_MapInit(void) {
    int *p;
    char *iwram = (char *)iwram_3001ebc;
    char *actor;
    void *fn;
    int zero = 0;
    short *flags;

    p = (int *)(iwram + (0xe0 << 1));
    *p = (0xe0 << 1) - 0xc0;

    MapActor_SetPos17(0xb0, 0xb0, 0x10);
    __MapActor_SetBehavior(0x10, &gScript_949__02008ec0);
    actor = (char *)__MapActor_GetActor(0x10);
    flags = (short *)(actor + 0x64);
    fn = OvlFunc_949_2008170;
    {
        int one = 1;
        *flags = one;
    }
    *(void **)(actor + 0x6c) = fn;

    MapActor_SetPos17(0xb8, 0xa0, 0x11);
    __MapActor_SetBehavior(0x11, &gScript_949__02008f90);
    actor = (char *)__MapActor_GetActor(0x11);
    *(short *)(actor + 0x64) = zero;
    *(void **)(actor + 0x6c) = fn;

    actor = (char *)__MapActor_GetActor(0xe);
    *(void **)(actor + 0x6c) = OvlFunc_949_20086e8;

    if (__GetFlag(0x8c1)) {
        MapActor_SetPos17(0x9e, 0xa4, 0x1c);
    }
    if (__GetFlag(0x201)) {
        OvlFunc_949_2008ca8();
    }
    if (__GetFlag(0x80 << 2)) {
        OvlFunc_949_2008224();
        __MapActor_SetAnim(8, 4);
    }
    if (__GetFlag(0x95 << 4)) {
        MapActor_SetPos18(0x82, 0x8c, 0x14);
        MapActor_SetPos18(0x82, 0x8c, 0x15);
        MapActor_SetPos18(0x82, 0x8c, 0x16);
        MapActor_SetPos18(0x82, 0x8c, 0x18);
        MapActor_SetPos18(0x82, 0x8c, 0x19);
        MapActor_SetPos18(0x82, 0x8c, 0x1a);
        MapActor_SetPos18(0x82, 0x8c, 0x1b);
    } else if (__GetFlag(0x962)) {
        MapActor_SetPos17_15(0x8c, 0xa0, 0x1b);
        MapActor_Func_8092adc(0x80, 0x1b, 0);
        __MapActor_SetAnim(0x1b, 1);
    }

    return 0;
}


extern int __Func_8091c7c(int, int);

void OvlFunc_949_2008894(void)
{
    extern unsigned char iwram_3001ebc_arr[] __asm__("iwram_3001ebc");
    unsigned short *p;

    __CutsceneStart();
    API_MapActor_TravelToAnimWait(0, 0x130, 0x138);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(0x1c, 0x4000, 0);
    __CutsceneWait(0x14);
    __MessageID(0xe3d);
    __ShowActorMessage_NoWait(0x1c, 0);
    if (!__Func_8091c7c(0, 0)) {
        p = (unsigned short *)(*(char **)iwram_3001ebc_arr + (0xec << 1));
        *p = *p + 1;
        __ActorMessage(0x1c, 0);
        API_MapActor_SetSpeed(0x1c, 0x10000, 0x8000);
        API_MapActor_TravelToAnimWait(0x1c, 0x140, 0x130);
        API_MapActor_TravelToAnimWait(0x1c, 0x13c, 0x148);
        API_Func_8092adc(0x1c, 0xa000, 0);
        API_SetFlag(0x8c1);
    } else {
        __ActorMessage(0x1c, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_949_2008954(void) {
    __Func_8091e9c(0x1e);
    __CutsceneEnd();
}


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
