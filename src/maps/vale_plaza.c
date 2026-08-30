/* rom_784360 (overlay file 884): consolidated TU — vale_plaza map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/vale_plaza/exports.s");

INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_2008030.s");

extern unsigned char gOvl_0200afa0[];

unsigned int ValePlaza_GetEntrances(void) {
    return (unsigned int)gOvl_0200afa0;
}

int ValePlaza_GetSpecialExits(void) {
    return 0;
}

extern unsigned char L3144[] __asm__(".Lm884_3144");
extern unsigned char L3108[] __asm__(".Lm884_3108");

unsigned int *ValePlaza_GetExits(void)
{
    if (__GetFlag(0x834))
        return (unsigned int *)L3144;
    return (unsigned int *)L3108;
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char L3380[] __asm__(".Lm884_3380");
extern unsigned char L3560[] __asm__(".Lm884_3560");
extern unsigned char L37d0[] __asm__(".Lm884_37d0");
extern unsigned char L3170[] __asm__(".Lm884_3170");

unsigned int ValePlaza_GetActors(void) {
    unsigned int r3;
    unsigned int r2;
    short *p;

    if (__GetFlag(0x834) != 0) {
        return (unsigned int)L3380;
    }
    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    p = (short *)r3;
    if (*p == 0xc) {
        return (unsigned int)L3560;
    }
    if (__GetFlag(0x87a) != 0) {
        return (unsigned int)L37d0;
    }
    return (unsigned int)L3170;
}

void OvlFunc_884_200810c(void) {
    __CutsceneStart();
    __Func_801776c(0x111f, 1);
    __PlaySound(0x7e);
    __Func_808c2dc(0x3e7, 0);
    __CutsceneWait(0xa);
    __Func_801776c(0x974, 1);
    __Func_8019a54();
    __ClearFlag(0xa1 << 1);
    __CutsceneEnd();
}

extern unsigned char L3cec[] __asm__(".Lm884_3cec");
extern unsigned char L3b3c[] __asm__(".Lm884_3b3c");
extern unsigned char L3b30[] __asm__(".Lm884_3b30");
extern unsigned char L3a64[] __asm__(".Lm884_3a64");
extern unsigned char gOvl_0200b938[];

unsigned int ValePlaza_GetEvents(void) {
    short *p;
    unsigned int r2;

    if (__GetFlag(0x87a) != 0) {
        return (unsigned int)L3cec;
    } else if (__GetFlag(0x815) != 0) {
        return (unsigned int)L3b3c;
    } else {
        r2 = 0xe1;
        r2 <<= 1;
        p = (short *)((char *)&gState + r2);
        if (*p == 0xc) {
            return (unsigned int)L3b30;
        } else if (__GetFlag(0x834) != 0) {
            return (unsigned int)L3a64;
        } else {
            return (unsigned int)gOvl_0200b938;
        }
    }
}

void OvlFunc_884_20081c4(void)
{
  unsigned long new_var2;
  unsigned long long new_var;
  __CutsceneStart();
  new_var = 2;
  __MessageID(0xf3c);
  do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __MapActor_TurnToFaceActor(0x17, 0, new_var2);
  __Func_8093054(0x17, 0);
  __CutsceneEnd();
}

void OvlFunc_884_20081f0(void)
{
  unsigned long new_var2;
  unsigned long long new_var;
  __CutsceneStart();
  new_var = 2;
  __MessageID(0xf3f);
  do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __MapActor_TurnToFaceActor(0x18, 0, new_var2);
  __Func_8093054(0x18, 0);
  __CutsceneEnd();
}

void OvlFunc_884_200821c(void)
{
  unsigned long new_var2;
  unsigned long long new_var;
  __CutsceneStart();
  new_var = 2;
  __MessageID(0xf44);
  do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __MapActor_TurnToFaceActor(0xf, 0, new_var2);
  __Func_8093054(0xf, 0);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_2008248.s");
INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_20083b4.s");
INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_2008444.s");
INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_20084d4.s");
INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_20085e8.s");
INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_2008634.s");
INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_2008674.s");

extern unsigned char iwram_3001ebc[];

void OvlFunc_884_2008714(unsigned int arg0)
{
    unsigned char *base;

    if (__GetFlag(0x834)) {
        __Func_8095214();
    }
    base = *(unsigned char **)iwram_3001ebc;
    *(unsigned int *)(base + 0x1c0) = 0x100;
    *(unsigned int *)(base + 0x1c8) = 0x10;
    __Func_8091e9c(arg0);
}

extern unsigned char L3eb4[] __asm__(".Lm884_3eb4");
extern void __PlaySound(int);
extern void __Func_8010560(void *, int, int);
extern void __MapActor_TravelToAnim(int, int, int);

void OvlFunc_884_2008750(void)
{
    int anim = 0x117;
    do { } while (anim == 0);
    __PlaySound(0x9e);
    __Func_8010560(L3eb4, 0x2c, 7);
    __MapActor_TravelToAnim(0, 0xf8, anim);
    OvlFunc_884_2008714(1);
}

INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_2008780.s");


extern void __PlaySound(int);
extern void __Func_8010560(void *, int, int);
extern void __MapActor_TravelToAnim(int, int, int);

void OvlFunc_884_20087ec(void)
{
    int anim = 0x197;
    do { } while (anim == 0);
    __PlaySound(0x9e);
    __Func_8010560(L3eb4, 0x2b, 0xf);
    __MapActor_TravelToAnim(0, 0xe6, anim);
    OvlFunc_884_2008714(3);
}

INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_200881c.s");

extern void __PlaySound(int);
extern void __Func_8010560(void *, int, int);
extern void __MapActor_TravelToAnim(int, int, int);

void OvlFunc_884_200884c(void)
{
    int anim = 0x222;
    do { } while (anim == 0);
    __PlaySound(0x9e);
    __Func_8010560(L3eb4, 0x29, 0x20);
    __MapActor_TravelToAnim(0, 0xc8, anim);
    OvlFunc_884_2008714(5);
}


extern void __PlaySound(int);
extern void __Func_8010560(void *, int, int);
extern void __MapActor_TravelToAnim(int, int, int);

void OvlFunc_884_200887c(void)
{
    int anim = 0x263;
    do { } while (anim == 0);
    __PlaySound(0x9e);
    __Func_8010560(L3eb4, 0x23, 0x24);
    __MapActor_TravelToAnim(0, 0x66, anim);
    OvlFunc_884_2008714(6);
}

INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_20088ac.s");

extern void __PlaySound(int a);

void OvlFunc_884_20088dc(void) {
    __PlaySound(0x7b);
    OvlFunc_884_2008714(8);
}


void OvlFunc_884_20088f0(void)
{
    if (__GetFlag(0x815)) {
        __PlaySound(0x7b);
        OvlFunc_884_2008714(0xa);
    }
}

extern void __SetFlag(int);

void OvlFunc_884_2008910(void) {
    __SetFlag(0x90b);
}


void OvlFunc_884_2008920(void) {
    __SetFlag(0x90c);
}


void OvlFunc_884_2008930(void) {
    __SetFlag(0x90d);
}

INCLUDE_ASM("asm/maps/vale_plaza/ValePlaza_MapInit.s");
INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_2008bbc.s");
INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_2009084.s");
INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_2009274.s");
INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_20095b4.s");
INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_20097c8.s");

extern void __ActorMessage(unsigned int arg0, unsigned int arg1);
extern void __CutsceneWait(unsigned int arg0);

void OvlFunc_884_200a2c8(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}

extern void __Func_8092adc(unsigned int arg0, unsigned int arg1, unsigned int arg2);

void OvlFunc_884_200a2e0(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
	__Func_8092adc(arg0, arg1, 0);
	__CutsceneWait(arg2);
}

extern unsigned int iwram_3001e40;
extern void __Actor_SetColorswap(unsigned int a, unsigned int b);
extern void OvlFunc_884_200a440(unsigned int a);

void OvlFunc_884_200a2f8(unsigned int arg0)
{
    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        OvlFunc_884_200a440(arg0);
    }
}

extern volatile unsigned int iwram_3001e40__a1 __asm__("iwram_3001e40");
extern int _umodsi3_RAM(int, int);

void OvlFunc_884_200a334(arg0) int arg0;
{
    if (iwram_3001e40__a1 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40__a1 >> 1, 6));
    }
    if ((iwram_3001e40__a1 & 0xf) == 0) {
        OvlFunc_884_200a440(arg0);
    }
}

extern volatile unsigned int iwram_3001e40__a2 __asm__("iwram_3001e40");

void OvlFunc_884_200a370(arg0) int arg0;
{
    if (iwram_3001e40__a2 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40__a2 >> 1, 6));
    }
}

INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_200a39c.s");
INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_200a3ec.s");
INCLUDE_ASM("asm/maps/vale_plaza/OvlFunc_884_200a440.s");

extern void __Func_8096fb0(int a, int b);

void OvlFunc_884_200a564(void) {
    __Func_8096fb0(0x8c, 0);
}

extern void __Func_8097194(void);

void OvlFunc_884_200a574(void) {
    __Func_8097194();
}

extern void __MapActor_GetActor(int);

void OvlFunc_884_200a580(void) {
    __MapActor_GetActor(0xf);
    OvlFunc_884_200a334();
}


void OvlFunc_884_200a590(void) {
    __MapActor_GetActor(0x11);
    OvlFunc_884_200a334();
}


void OvlFunc_884_200a5a0(void) {
    __MapActor_GetActor(0x14);
    OvlFunc_884_200a370();
}

void OvlFunc_884_200a5b0(void) {
    __SetFlag(0xb0 << 1);
    __SetFlag(0x16d);
    __SetFlag(0x844);
    __SetFlag(0x845);
    __Func_8091e9c(0x28);
}

INCLUDE_ASM("asm/maps/vale_plaza/ovl_30_c_c_c_c_c_c_c_c.s");

INCLUDE_ASM("asm/maps/vale_plaza/imports.s");
