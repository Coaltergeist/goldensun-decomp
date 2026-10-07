// fakematch
/* rom_7a67d8 (overlay file 919): consolidated TU — tret_tree_ext map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/tret_tree_ext/exports.s");

extern void __Func_8091f14(int a, int b);

void OvlFunc_919_2008030(void) {
    __Func_8091f14(8, 0x3d);
}

extern unsigned char gOvl_0200835c[];

unsigned int TretTreeExt_GetEntrances(void) {
    return (unsigned int)gOvl_0200835c;
}

unsigned int TretTreeExt_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200844c[];

unsigned int TretTreeExt_GetExits(void) {
    return (unsigned int)gOvl_0200844c;
}
extern unsigned char gOvl_02008474[];

unsigned int TretTreeExt_GetActors(void) {
    return (unsigned int)gOvl_02008474;
}

extern int gState;
extern unsigned int iwram_3001ebc;
extern unsigned char *__MapActor_GetActor(int);
extern int __Func_8011f54(int layer, int x, int z);

void OvlFunc_919_200805c(int dx, int dz)
{
    unsigned char *map;
    int x;
    int z;
    unsigned char *address;
    int offset;
    unsigned char *actor;

    map = (unsigned char *)iwram_3001ebc;
    offset = 0xfa;
    address = (unsigned char *)&gState;
    offset <<= 1;
    address += offset;
    actor = __MapActor_GetActor(*(int *)address);
    dx = (unsigned int)dx << 20;
    dz = (unsigned int)dz << 20;
    if (actor != 0) {
        x = *(int *)(actor + 8);
        z = *(int *)(actor + 0x10);
        x += dx;
        z += dz;
        *(int *)(actor + 8) = x;
        *(int *)(actor + 0x10) = z;
        {
            int height = __Func_8011f54(*(unsigned char *)(actor + 0x22), x, z);
            *(int *)(actor + 0xc) = height;
            *(int *)(actor + 0x14) = height;
        }
    }
    actor = *(unsigned char **)(map + 0x1e0);
    if (actor != 0) {
        x = *(int *)(actor + 8);
        z = *(int *)(actor + 0x10);
        x += dx;
        z += dz;
        *(int *)(actor + 8) = x;
        *(int *)(actor + 0x10) = z;
        {
            int height = __Func_8011f54(*(unsigned char *)(actor + 0x22), x, z);
            *(int *)(actor + 0xc) = height;
            *(int *)(actor + 0x14) = height;
        }
    }
}

void OvlFunc_919_20080d8(void) {
    OvlFunc_919_200805c(0, 5);
}


void OvlFunc_919_20080e8(void) {
    OvlFunc_919_200805c(0, -5);
}


void OvlFunc_919_20080f8(void) {
    OvlFunc_919_200805c(0, 5);
}


void OvlFunc_919_2008108(void) {
    OvlFunc_919_200805c(0, -5);
}


void OvlFunc_919_2008118(void) {
    OvlFunc_919_200805c(0, 6);
}


void OvlFunc_919_2008128(void) {
    OvlFunc_919_200805c(0, -6);
}

extern unsigned int iwram_3001ebc;

void OvlFunc_919_2008138(void)
{
    unsigned int r5;
    unsigned short r3;

    r5 = iwram_3001ebc;
    __PlaySound(0x7b);
    r3 = 0xb6;
    r3 <<= 1;
    r5 += r3;
    __Func_8091e9c(*(short *)(r5 + 0));
}

extern void __Func_808fe38(int);
extern unsigned int iwram_3001ecc;

void OvlFunc_919_200815c(void)
{
    unsigned char *r2;
    unsigned char *r1;
    short v;

    __Func_808fe38(9);
    *(volatile unsigned short *)0x04000050 = 0x3f42;
    *(volatile unsigned short *)0x04000052 = 0xc04;
    r2 = (unsigned char *)iwram_3001ecc;
    r1 = r2 + 0x534;
    {
        int c = 0x3f3f;
        *(unsigned short *)r1 = c;
    }
    r1 = r2 + 0x536;
    v = 0x1f;
    *(unsigned short *)r1 = v;
    r2 += 0x52a;
    v = 0xa;
    *(unsigned short *)r2 = v;
}

extern unsigned char gOvl_020084a4[];

unsigned int TretTreeExt_GetEvents(void) {
    return (unsigned int)gOvl_020084a4;
}

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);

void OvlFunc_919_20081bc(void)
{
	__CutsceneStart();
	__CutsceneEnd();
}

void OvlFunc_919_20081cc(void) {}
void OvlFunc_919_20081d0(void) {}

extern void __Func_8005ee0(unsigned short *, unsigned short *);
extern unsigned short L590[2] __asm__(".Lm919_590");
extern unsigned short L5b0[] __asm__(".Lm919_5b0");
extern int gKeyHeld;
extern int gKeyRepeat;

void OvlFunc_919_20081d4(void) {
    L590[0] = gKeyHeld;
    L590[1] = gKeyRepeat;
    __Func_8005ee0(L590, L5b0);
}

extern void OvlFunc_919_20082e0(void);

int TretTreeExt_MapInit(void)
{
    unsigned int *r5 = &iwram_3001ebc;
    {
        unsigned char *r3;
        int r2;

        r2 = 0xe0;
        r3 = (unsigned char *)r5[0];
        r2 <<= 1;
        r3 += r2;
        *(int *)r3 = 0x100;
    }
    __Func_808fe38(9);
    *(volatile unsigned short *)0x04000050 = 0x3f42;
    *(volatile unsigned short *)0x04000052 = 0xc04;
    {
        unsigned char *r2;
        unsigned char *r1;
        short v;

        do {
            r2 = (unsigned char *)r5[4];
        } while (0);
        r1 = r2 + 0x534;
        {
            int c = 0x3f3f;
            *(unsigned short *)r1 = c;
        }
        r1 = r2 + 0x536;
        v = 0x1f;
        *(unsigned short *)r1 = v;
        r2 += 0x52a;
        v = 0xa;
        *(unsigned short *)r2 = v;
    }
    OvlFunc_919_20082e0();
    return 0;
}
extern int L610 __asm__(".Lm919_610");
extern short L614 __asm__(".Lm919_614");
extern short L616 __asm__(".Lm919_616");

void OvlFunc_919_200826c(void)
{
    unsigned short *ptr;
    unsigned int val;

    if (*(volatile unsigned short *)0x04000006 >= L610) {
        ptr = (unsigned short *)&L614;
    } else {
        ptr = (unsigned short *)&L616;
    }
    val = *ptr;
    *(volatile unsigned short *)0x0400001c = val;
}
extern unsigned int iwram_3001e70;
extern unsigned int iwram_3001e40;

void OvlFunc_919_20082a0(void)
{
    unsigned int *pe70 = &iwram_3001e70;
    int r1 = 0x82;
    unsigned char *r2 = (unsigned char *)*pe70;
    short *p614;
    short r2s;

    r1 <<= 1;
    r2 += r1;
    L610 = 0xc0 - *(short *)(r2 + 6);
    p614 = &L614;
    do {} while (0);
    r2s = *(short *)(r2 + 2);
    *p614 = r2s;
    L616 = r2s - (iwram_3001e40 >> 2);
}

extern void OvlFunc_919_200826c(void);
extern void OvlFunc_919_20082a0(void);

void OvlFunc_919_20082e0(void)
{
  void (*new_var2)(void);
  void (*new_var)(void);
  new_var2 = &OvlFunc_919_200826c;
  new_var = new_var2;
 do { } while (0);
  __SetIntrHandler(1, 0, *new_var);
  __StartTask(OvlFunc_919_20082a0, 0xc8 << 4);
}

INCLUDE_ASM("asm/maps/tret_tree_ext/tret_tree_ext_data.s");

INCLUDE_ASM("asm/maps/tret_tree_ext/imports.s");
