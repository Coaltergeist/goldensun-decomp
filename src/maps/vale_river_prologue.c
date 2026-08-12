// fakematch
/* rom_77dd1c (overlay file 882): consolidated TU — vale_river_prologue map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/vale_river_prologue/exports.s");

INCLUDE_ASM("asm/maps/vale_river_prologue/ovl_30_a_a.s");

extern unsigned char gOvl_0200d0e4[];

unsigned int ValeRiverPrologue_GetEntrances(void) {
    return (unsigned int)gOvl_0200d0e4;
}

int ValeRiverPrologue_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200d27c[];

void *ValeRiverPrologue_GetExits(void) {
    return (void *)gOvl_0200d27c;
}
extern unsigned char gOvl_0200d2b8[];

void *ValeRiverPrologue_GetActors(void) {
    return (void *)gOvl_0200d2b8;
}
extern unsigned char gOvl_0200d558[];

void *ValeRiverPrologue_GetEvents(void) {
    return (void *)gOvl_0200d558;
}

INCLUDE_ASM("asm/maps/vale_river_prologue/ovl_30_c_c_a_a.s");

extern int __GetFlag(int);
extern void __Func_8095214(void);
extern void __Func_8091e9c(unsigned int);
extern unsigned int iwram_3001ebc;

void OvlFunc_882_200815c(unsigned int arg0) {
    int res;
    unsigned char *base;

    res = __GetFlag(0x834);
    if (res != 0) {
        __Func_8095214();
    }
    base = (unsigned char *)iwram_3001ebc;
    *(int *)(base + 0x1c0) = 0x100;
    *(int *)(base + 0x1c8) = 0x10;
    __Func_8091e9c(arg0);
}

INCLUDE_ASM("asm/maps/vale_river_prologue/ovl_30_c_c_a_c_a.s");

extern void __PlaySound(int);

void OvlFunc_882_20081d0(void) {
    __PlaySound(0x7b);
    OvlFunc_882_200815c(1);
}


void OvlFunc_882_20081e4(void) {
    __PlaySound(0x7b);
    OvlFunc_882_200815c(3);
}


void OvlFunc_882_20081f8(void) {
    __PlaySound(0x7b);
    OvlFunc_882_200815c(4);
}

extern void OvlFunc_882_200bfb0(void);

void OvlFunc_882_200820c(void)
{
    __PlaySound(0x7b);
    if (__GetFlag(0x841) != 0 && __GetFlag(0x842) == 0)
        OvlFunc_882_200bfb0();
    OvlFunc_882_200815c(2);
}

void __CutsceneWait(int);
void __Func_8010560(void *, int, int);
void __MapActor_TravelToAnim(int, int, int);
extern unsigned char L578a[] __asm__(".Lm882_578a");

void OvlFunc_882_2008240(void)
{
    __PlaySound(0x9e);
    __Func_8010560(L578a, 0x36, 0x20);
    __MapActor_TravelToAnim(0, 0x196, 0x2d7);
    __CutsceneWait(3);
    OvlFunc_882_200815c(5);
}

extern unsigned char L57a0[] __asm__(".Lm882_57a0");
extern void OvlFunc_882_200950c(void);

void OvlFunc_882_2008278(void)
{
    unsigned int f = 0x206;
    __asm__ ("" : "+r" (f));
    if (!__GetFlag(f)) {
        __PlaySound(0x9e);
        __Func_8010560(L57a0, 0x2d, 0x27);
    }
    if (!__GetFlag(0x835) && !__GetFlag(0x831)) {
        OvlFunc_882_200950c();
        __SetFlag(0x206);
    } else {
        unsigned int w = 0x83;
        {
            register unsigned int rq __asm__("r0") = 0;
            __asm__ volatile ("" : : "r" (rq));
            w <<= 1;
            __MapActor_TravelToAnim(rq, w, 0x325);
        }
        __CutsceneWait(3);
        OvlFunc_882_200815c(6);
    }
}


void OvlFunc_882_20082e4(void) {
    if (__GetFlag(0x205)) {
        goto loc_c0;
    }
    __PlaySound(0x9e);
    __Func_8010560(L578a, 0x32, 0x2c);

loc_c0:
    __MapActor_TravelToAnim(0, 0xaa << 1, 0xde << 2);
    __CutsceneWait(3);
    OvlFunc_882_200815c(7);
}


void OvlFunc_882_2008328(void)
{
    __PlaySound(0x9e);
    {
        unsigned char *rq = L57a0;
        __Func_8010560(rq, 0x31, 0x45);
    }
    __MapActor_TravelToAnim(0, 0xa3 << 1, 0x466);
    __CutsceneWait(3);
    OvlFunc_882_200815c(8);
}

extern unsigned char L57b6[] __asm__(".Lm882_57b6");

void OvlFunc_882_2008360(void)
{
    __PlaySound(0x9e);
    {
        unsigned char *rq = L57b6;
        __Func_8010560(rq, 0x34, 0x4c);
    }
    __MapActor_TravelToAnim(0, 0xbb << 1, 0x4d6);
    __CutsceneWait(3);
    OvlFunc_882_200815c(9);
}

INCLUDE_ASM("asm/maps/vale_river_prologue/ovl_30_c_c_c_a_c_c_c_a.s");

extern void __Func_8010704(int a, int b, int c, int d, int e, int f);

void OvlFunc_882_2008ec4(void)
{
	unsigned int b = 0x15;
	register unsigned int a __asm__("r8") = 0x39;
	unsigned int z;

	__Func_8010704(0x1d, 0x40, 1, 1, b, a);
	z = 0x3a;
	__Func_8010704(0x1d, 0x40, 1, 1, b, z);
	__Func_8010704(0x1d, 0x40, 1, 1, 0x16, z);
	b = 0x14;
	__Func_8010704(0x1d, 0x40, 1, 1, b, z);
	__Func_8010704(0x1c, 0x14, 1, 1, b, a);
}

INCLUDE_ASM("asm/maps/vale_river_prologue/ovl_30_c_c_c_a_c_c_c_c.s");

extern void __CutsceneStart(void);
extern void __Func_80925cc(int, int);
extern void __MessageID(int);
extern void __CutsceneEnd(void);

void OvlFunc_882_2009684(void)
{
    if (__GetFlag(0x837) == 0 && __GetFlag(0x836) != 0)
    {
        __CutsceneStart();
        __Func_80925cc(0x16, 2);
        __CutsceneWait(0x14);
        __MessageID(0xe71);
        OvlFunc_882_200973c();
        __CutsceneEnd();
    }
}

extern void __ActorMessage(int, int);
extern void __MapActor_Face(int, int, int);
extern void __Func_8092adc(int, int, int);
extern int _MSG_ed0;

void OvlFunc_882_20096cc(void) {
    unsigned int w;
    if (__GetFlag(0x841)) {
        __CutsceneStart();
        __MapActor_Face(0x16, 0, 0);
        __CutsceneWait(0x14);
        __MessageID((int) (&_MSG_ed0));
        __ActorMessage(0x16, 0);
        w = 0xe0;
        {
            register unsigned int rq __asm__("r0") = 0x16;
            __asm__ volatile ("" : : "r" (rq));
            w <<= 8;
            __Func_8092adc(rq, w, 0xa);
        }
        __CutsceneEnd();
    } else if (!__GetFlag(0x837)) {
        __CutsceneStart();
        __MessageID(0xe6e);
        OvlFunc_882_200973c();
        __CutsceneEnd();
    }
}

extern void __SetFlag(int);
extern void __ShowActorMessage_NoWait(int, int);
extern void __MapActor_TurnToFaceActor(int, int, int);
extern int __Func_8091c7c(int, int);
extern void __ActorMessage_Wait(int, int, int);
extern void __MapActor_Surprise(int, int);
extern void __MapActor_SetAnim(int, int);
extern void __MapActor_DoAnim(int, int);
extern int __MapActor_GetActor(int);
extern void __MapActor_TravelTo(int, int, int);
extern void __MapActor_WaitMovement(int);
extern void __MapActor_SetPos(int, int, int);
extern void __Func_80917d0(int, int);
extern int _MSG_e70;

void OvlFunc_882_200973c(void) {
    int r5v;
    int a;
    unsigned int w;
    unsigned int z;

    {
        register unsigned int zp __asm__("r1") = 0;
        __asm__ volatile ("" : : "r" (zp));
        __ShowActorMessage_NoWait(0x16, zp);
    }
    __MapActor_TurnToFaceActor(0, 0x16, 0);
    r5v = 0;
    if (__Func_8091c7c(0, 0) == 0) {
        __MessageID(0xee5);
        r5v = 1;
    } else {
        __MessageID(0xee6);
    }
    __CutsceneWait(0x14);
    z = 0x28;
    __asm__ volatile ("" : : "r" (z));
    __ActorMessage_Wait(0x16, 0, z);
    w = 0x80;
    {
        register unsigned int rq __asm__("r0") = 0x16;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 1;
        __MapActor_Surprise(rq, w);
    }
    __MapActor_SetAnim(0x15, 3);
    __MapActor_SetAnim(0x16, 1);
    __CutsceneWait(0x28);
    __MapActor_Face(0x16, 0, 0);
    __CutsceneWait(0x14);
    __MapActor_DoAnim(0x16, 3);
    if (r5v != 0) {
        __MessageID((int) (&_MSG_e70));
    } else {
        __MessageID(0xee7);
    }
    __ActorMessage(0x16, 0);
    __MapActor_SetAnim(0x16, 2);
    a = __MapActor_GetActor(0);
    if (a != 0) {
        __MapActor_TravelTo(0x16, *(short *)(a + 0xa), *(short *)(a + 0x12));
    }
    __MapActor_WaitMovement(0x16);
    __MapActor_SetPos(0x16, 0, 0);
    __Func_80917d0(1, 1);
    __SetFlag(0x837);
}

INCLUDE_ASM("asm/maps/vale_river_prologue/ovl_30_c_c_c_c_a_a_a_c_c.s");

extern unsigned int iwram_3001e40;

void OvlFunc_882_200be18(void)
{
    void *actor = __MapActor_GetActor(0x1b);
    char *p = *(char **)((char *)actor + 0x50);

    if (iwram_3001e40 & 1) {
        *(unsigned char *)(p + 0x23) = 2;
    } else {
        *(unsigned char *)(p + 0x23) = 0x40;
    }
}

INCLUDE_ASM("asm/maps/vale_river_prologue/ovl_30_c_c_c_c_a_a_c.s");

extern unsigned char iwram_3001ebc__a1[] __asm__("iwram_3001ebc");

void OvlFunc_882_200c234(void)
{
    unsigned int *p;
    __CutsceneStart();
    p = *(unsigned int **)iwram_3001ebc__a1;
    *(unsigned int *)((char *)p + 0x1c0) = 0x200;
    *(unsigned int *)((char *)p + 0x1c8) = 0x40;
    __SetFlag(0x87c);
    __StartMapBattle(0xc, 2);
    __SetFlag(0x900);
    __CutsceneEnd();
}

extern unsigned char iwram_3001ebc__a2[] __asm__("iwram_3001ebc");

void OvlFunc_882_200c278(void)
{
    unsigned int *p;
    __CutsceneStart();
    p = *(unsigned int **)iwram_3001ebc__a2;
    *(unsigned int *)((char *)p + 0x1c0) = 0x200;
    *(unsigned int *)((char *)p + 0x1c8) = 0x40;
    __SetFlag(0x87f);
    __StartMapBattle(0xc, 3);
    __SetFlag(0x900);
    __CutsceneEnd();
}

extern unsigned int L57fc __asm__(".Lm882_57fc");
extern int _umodsi3_RAM(unsigned int, unsigned int);
extern void OvlFunc_882_200c41c(unsigned int);

void OvlFunc_882_200c2bc(unsigned int arg0)
{
    unsigned int *p;
    unsigned int idx;

    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    p = &iwram_3001e40;
    idx = L57fc * 8 + 0x10;
    if (_umodsi3_RAM(*p, idx) == 0) {
        OvlFunc_882_200c41c(arg0);
    }
}

extern volatile unsigned int iwram_3001e40__a2 __asm__("iwram_3001e40");

void OvlFunc_882_200c304(int arg0)
{
    unsigned int t;

    if (iwram_3001e40__a2 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40__a2 >> 1, 6));
    }
    t = L57fc * 8 + 0x10;
    if (_umodsi3_RAM(iwram_3001e40__a2, t) == 0) {
        OvlFunc_882_200c41c(arg0);
    }
}

extern volatile unsigned int iwram_3001e40__a3 __asm__("iwram_3001e40");
extern void __Actor_SetColorswap(int a, int b);

void OvlFunc_882_200c34c(arg0) int arg0;
{
    if (iwram_3001e40__a3 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40__a3 >> 1, 6));
    }
}

INCLUDE_ASM("asm/maps/vale_river_prologue/ovl_30_c_c_c_c_a_c_c_c.s");

extern void __Func_8096fb0(int, int);

void OvlFunc_882_200c550(void) {
    __Func_8096fb0(0x8c, 0);
}

void OvlFunc_882_200c560(void) {
    __Func_8097194();
}

extern unsigned char L57f8[] __asm__(".Lm882_57f8");

void OvlFunc_882_200c56c(void) {
  OvlFunc_882_200c304(__MapActor_GetActor(0x20));
  OvlFunc_882_200c304(__MapActor_GetActor(0x21));
  OvlFunc_882_200c304(__MapActor_GetActor(0x1e));
  if (*(int *)L57f8 == 0) {
    OvlFunc_882_200c304(__MapActor_GetActor(0x1d));
  }
}


void OvlFunc_882_200c5a8(void)
{
	__MapActor_GetActor(0x13);
	OvlFunc_882_200c34c();
}

INCLUDE_ASM("asm/maps/vale_river_prologue/ovl_30_c_c_c_c_c_c_c_a.s");

void OvlFunc_882_200c5fc(void)
{
  int arg0;
 do { __CutsceneStart(); } while (0);
  arg0 = 0xee4;
  __Func_801776c(arg0, 1);
  __CutsceneEnd();
}

extern int _MSG_1120;

void OvlFunc_882_200c618(void)
{
 do { __CutsceneStart(); } while (0);
  __Func_801776c((int)&_MSG_1120, 1);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vale_river_prologue/ovl_30_c_c_c_c_c_c_c_c_c.s");

INCLUDE_ASM("asm/maps/vale_river_prologue/imports.s");
