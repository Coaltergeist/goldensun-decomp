// fakematch
/* rom_79b154 (overlay file 907): consolidated TU — bilibin map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/bilibin/exports.s");

INCLUDE_ASM("asm/maps/bilibin/OvlFunc_907_2008030.s");
INCLUDE_ASM("asm/maps/bilibin/Bilibin_GetEntrances.s");
INCLUDE_ASM("asm/maps/bilibin/Bilibin_GetSpecialExits.s");

extern unsigned char gOvl_0200942c[];

void *Bilibin_GetExits(void) {
    return (void *)gOvl_0200942c;
}

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_907_200810c(void) {
    __Func_80955b0(9, 3, 0);
}

INCLUDE_ASM("asm/maps/bilibin/Bilibin_GetActors.s");

extern void __CutsceneStart();
extern void __Func_801776c();
extern void __CutsceneEnd();

void OvlFunc_907_2008170(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29dd, 1);
    __CutsceneEnd();
}

extern unsigned char _EVENT_1e[], _EVENT_23[], _EVENT_20[];
extern unsigned char Lm907_1744[] __asm__(".Lm907_1744");
extern unsigned char Lm907_1a2c[] __asm__(".Lm907_1a2c");
extern unsigned char Lm907_1bc4[] __asm__(".Lm907_1bc4");
extern unsigned char Lm907_1738[] __asm__(".Lm907_1738");
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;

int Bilibin_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_1e) return (int)Lm907_1744;
    if (ev == (int)_EVENT_23) return (int)Lm907_1a2c;
    if (ev == (int)_EVENT_20) return (int)Lm907_1bc4;
    return (int)Lm907_1738;
}

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

INCLUDE_ASM("asm/maps/bilibin/OvlFunc_907_2008240.s");

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

INCLUDE_ASM("asm/maps/bilibin/OvlFunc_907_2008328.s");
INCLUDE_ASM("asm/maps/bilibin/OvlFunc_907_2008404.s");

extern void __Func_8093c00(void);

void OvlFunc_907_2008578(void) {
    __Func_8093c00();
}

INCLUDE_ASM("asm/maps/bilibin/OvlFunc_907_2008584.s");
INCLUDE_ASM("asm/maps/bilibin/Bilibin_MapInit.s");
INCLUDE_ASM("asm/maps/bilibin/OvlFunc_907_20088f0.s");
INCLUDE_ASM("asm/maps/bilibin/OvlFunc_907_20089cc.s");
INCLUDE_ASM("asm/maps/bilibin/OvlFunc_907_2008ae0.s");
INCLUDE_ASM("asm/maps/bilibin/OvlFunc_907_2008cb4.s");

extern unsigned char *iwram_3001ebc;
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

INCLUDE_ASM("asm/maps/bilibin/OvlFunc_907_2008db4.s");
INCLUDE_ASM("asm/maps/bilibin/OvlFunc_907_2008ed8.s");
INCLUDE_ASM("asm/maps/bilibin/OvlFunc_907_2008f3c.s");
INCLUDE_ASM("asm/maps/bilibin/OvlFunc_907_2008fa0.s");

INCLUDE_ASM("asm/maps/bilibin/imports.s");
