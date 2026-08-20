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

INCLUDE_ASM("asm/ui/icon/LoadOldUIIcon.s");
INCLUDE_ASM("asm/ui/icon/LoadOldMoveIcon.s");
INCLUDE_ASM("asm/ui/icon/LoadItemIconID.s");
INCLUDE_ASM("asm/ui/icon/DrawInventoryIcon.s");
INCLUDE_ASM("asm/ui/icon/LoadInventoryIcon.s");
INCLUDE_ASM("asm/ui/icon/LoadStatusIcon.s");
INCLUDE_ASM("asm/ui/icon/LoadUIBanner.s");
INCLUDE_ASM("asm/ui/icon/LoadItemIcon.s");
INCLUDE_ASM("asm/ui/icon/LoadMoveIcon.s");
INCLUDE_ASM("asm/ui/icon/LoadMoveIconID.s");
INCLUDE_ASM("asm/ui/icon/DecompressStatusIcon.s");
INCLUDE_ASM("asm/ui/icon/LoadPortrait.s");

void Func_801a5a0(void) {}

INCLUDE_ASM("asm/ui/icon/LoadIcon.s");
