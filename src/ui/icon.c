/* ui/icon.c -- consolidated TU. */
#include "nonmatching.h"

extern unsigned char L2a2e0[] __asm__(".L2a2e0");
extern unsigned char L29ee4[] __asm__(".L29ee4");

unsigned int NumItemIcons(void) {
    return (L2a2e0 - L29ee4) >> 2;
}

extern unsigned char L2e108[] __asm__(".L2e108");
extern unsigned char L2de88[] __asm__(".L2de88");

unsigned int NumMoveIcons(void) {
    return ((int *)L2e108) - ((int *)L2de88);
}

INCLUDE_ASM("asm/ui/icon/rom_19ebc_a_c_c.s");

void Func_801a5a0(void) {}

INCLUDE_ASM("asm/ui/icon/rom_19ebc_c.s");
