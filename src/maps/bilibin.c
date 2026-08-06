// fakematch
/* rom_79b154 (overlay file 907): consolidated TU — bilibin map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/bilibin/exports.s");

INCLUDE_ASM("asm/maps/bilibin/ovl_30_a.s");

extern unsigned char gOvl_0200942c[];

void *Bilibin_GetExits(void) {
    return (void *)gOvl_0200942c;
}

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_907_200810c(void) {
    __Func_80955b0(9, 3, 0);
}

INCLUDE_ASM("asm/maps/bilibin/ovl_30_c_a_a_c_a_a_a.s");

extern void __CutsceneStart();
extern void __Func_801776c();
extern void __CutsceneEnd();

void OvlFunc_907_2008170(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29dd, 1);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/bilibin/ovl_30_c_a_a_c_a_a_c.s");

void OvlFunc_907_20081ec(void)
{
  int r0;
  __CutsceneStart();
 do { } while (0);
  r0 = 0x1472;
  __Func_801776c(r0, 1);
  __CutsceneEnd();
}

void OvlFunc_907_2008208(void)
{
  __CutsceneStart();
 do { __Func_801776c(0x146e, 1); } while (0);
  __CutsceneEnd();
}

void OvlFunc_907_2008224(void)
{
  int r1;
 do { __CutsceneStart(); r1 = 1; } while (0);
  __Func_801776c(0x1470, r1);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/bilibin/ovl_30_c_a_a_c_a_c_c_c.s");

void OvlFunc_907_2008288(void) {
    __CutsceneStart();
    __MessageID(0x13b3);
    __Func_8093054(0xc, 0);
    __CutsceneEnd();
}

void OvlFunc_907_20082a8(void) {
    __CutsceneStart();
    __MessageID(0x13b7);
    __Func_8093054(0xe, 0);
    __CutsceneEnd();
}

void OvlFunc_907_20082c8(void) {
    __CutsceneStart();
    __MessageID(0x16bf);
    __Func_8093054(0x15, 0);
    __CutsceneEnd();
}

void OvlFunc_907_20082e8(void) {
    __CutsceneStart();
    __MessageID(0x16c8);
    __Func_8093054(0x10, 0);
    __CutsceneEnd();
}

void OvlFunc_907_2008308(void) {
    __CutsceneStart();
    __MessageID(0x16cc);
    __Func_8093054(0x12, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/bilibin/ovl_30_c_a_a_c_c_c_c_c_c.s");

extern void __Func_8093c00(void);

void OvlFunc_907_2008578(void) {
    __Func_8093c00();
}

INCLUDE_ASM("asm/maps/bilibin/ovl_30_c_a_c_a.s");

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern unsigned char *iwram_3001ebc;
extern GlobalState gState;
extern void OvlFunc_907_2008fa0(void);

void OvlFunc_907_2008d10(void)
{
    unsigned char *actor;
    unsigned int off;
    unsigned int field;
    unsigned int bound;
    unsigned int y;

    *(int *)((unsigned char *)iwram_3001ebc + 0x1c0) = 0x204;
    OvlFunc_907_2008fa0();

    off = 0xe1;
    off <<= 1;
    field = *(unsigned short *)((char *)&gState + off);
    bound = 0x80;
    field -= 3;
    field <<= 16;
    bound <<= 9;

    if (field <= bound) {
        if (__GetFlag(0x109) == 0) {
            actor = (unsigned char *)__MapActor_GetActor(0);
            __CutsceneStart();
            y = 0x80;
            y <<= 13;
            {
                register int rq __asm__("r0") = *(int *)(actor + 8);
                __asm__ volatile ("" : : "r" (rq));
                *(int *)(actor + 0xc) = y;
                __Func_80933f8(rq, y, *(int *)(actor + 0x10), 0);
            }
            __Func_800fe9c();
            __CutsceneEnd();
            __WaitFrames(1);
        }
    }
}

extern unsigned int iwram_3001ebc__a1 __asm__("iwram_3001ebc");

unsigned int OvlFunc_907_2008d80(unsigned int arg0, unsigned int arg1)
{
    unsigned int *base;
    unsigned char *r2;
    unsigned int i;

    base = (unsigned int *)iwram_3001ebc__a1;
    i = 8;
    r2 = (unsigned char *)base + 0x34;
    for (; i <= 0x41; i++) {
        unsigned int *p = *(unsigned int **)r2;
        r2 += 4;
        if (arg0 == ((int)*(unsigned int *)((char *)p + 8) >> 20) &&
            arg1 == ((int)*(unsigned int *)((char *)p + 0x10) >> 20))
            return (unsigned int)p;
    }
    return 0;
}

INCLUDE_ASM("asm/maps/bilibin/ovl_30_c_c.s");

INCLUDE_ASM("asm/maps/bilibin/imports.s");
