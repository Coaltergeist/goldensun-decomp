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

INCLUDE_ASM("asm/maps/tret_tree_ext/ovl_30_a_c_c_c_a_a.s");

extern void OvlFunc_919_200805c(int, int);

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

INCLUDE_ASM("asm/maps/tret_tree_ext/ovl_30_a_c_c_c_a_c_c_c_c_c_c_c.s");

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

INCLUDE_ASM("asm/maps/tret_tree_ext/ovl_30_c_a_c.s");

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

INCLUDE_ASM("asm/maps/tret_tree_ext/ovl_30_c_c.s");

INCLUDE_ASM("asm/maps/tret_tree_ext/imports.s");
