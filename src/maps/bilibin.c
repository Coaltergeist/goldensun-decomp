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

extern unsigned char *iwram_3001ebc;
extern unsigned char *__MapActor_GetActor(int);
extern short Lm907_1d0c[] __asm__(".Lm907_1d0c");
extern void *Lm907_1cf0[] __asm__(".Lm907_1cf0");

void __PlaySound(int);
void __Func_8010560(void *, int, int);
void __MapActor_SetSpeed(int, int, int);
void __MapActor_SetAnim(int, int);
void __MapActor_TravelBy(int, int, int);
void __Func_8092208(int, int, int);
void __Func_8092b08(int, int);
void __CutsceneWait(int);
void __Func_8091e9c(int);
void OvlFunc_907_2008328(void)
{
    unsigned char *map;
    int iVar5;
    unsigned int uVar4;
    unsigned char *actor;
    int spd1 = 0x8000;
    int spd2 = 0x4000;
    int neg4 = -4;
    int neg16 = -0x10;
    int val;
    int arg1, arg2;

    do { } while (spd1 == 0);

    map = iwram_3001ebc;
    __CutsceneStart();

    for (uVar4 = 8; uVar4 <= 0x41; uVar4++) {
        actor = (unsigned char *)__MapActor_GetActor(uVar4);
        if (actor != 0) {
            actor[0x55] = 0;
        }
    }

    val = *(unsigned short *)(map + 0x16c);
    iVar5 = (short)(val - 3);

    if (iVar5 == 6) {
        __PlaySound(0xbc);
    } else {
        __PlaySound(0x9e);
    }

    arg1 = Lm907_1d0c[iVar5 * 2];
    arg2 = Lm907_1d0c[iVar5 * 2 + 1];
    __Func_8010560(Lm907_1cf0[iVar5], arg1, arg2);
    __MapActor_SetSpeed(0, spd1, spd2);

    ((unsigned char *)__MapActor_GetActor(0))[0x55] = 0;

    *(int *)(iwram_3001ebc + 0x1c0) = 0x100;

    if (iVar5 == 6) {
        __MapActor_SetAnim(0, 2);
        __MapActor_TravelBy(0, 0, neg4);
    } else {
        __Func_8092208(0, 3, neg16);
    }

    if (iVar5 == 4) {
        __Func_8092b08(0, 3);
    } else {
        __Func_8092b08(0, 2);
    }

    __CutsceneWait(0x10);
    __Func_8091e9c(iVar5 + 3);
    __CutsceneEnd();
}
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

extern void OvlFunc_907_2008fa0(void);
extern int __GetFlag(int);
extern void __Func_80933f8(int, int, int, int);
extern void __Func_800fe9c(void);
extern void __WaitFrames(int);

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
            *(int *)(actor + 0xc) = y;
            __Func_80933f8(*(int *)(actor + 8), y, *(int *)(actor + 0x10), 0);
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
INCLUDE_ASM("asm/maps/bilibin/bilibin_data.s");

INCLUDE_ASM("asm/maps/bilibin/imports.s");
