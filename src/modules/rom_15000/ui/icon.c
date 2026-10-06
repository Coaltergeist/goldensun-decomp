/* ui/icon.c -- consolidated TU. */
#include "nonmatching.h"

extern unsigned char L2a2e0[] __asm__(".L2a2e0");
extern unsigned char gItemIcons[] __asm__("gItemIcons");

unsigned int NumItemIcons(void) {
    return (L2a2e0 - gItemIcons) >> 2;
}

extern unsigned char L2e108[] __asm__(".L2e108");
extern unsigned char gMoveIcons[] __asm__("gMoveIcons");

unsigned int NumMoveIcons(void) {
    return ((int *)L2e108) - ((int *)gMoveIcons);
}

INCLUDE_ASM("asm/modules/rom_15000/ui/icon/LoadOldUIIcon.s");
INCLUDE_ASM("asm/modules/rom_15000/ui/icon/LoadOldMoveIcon.s");
INCLUDE_ASM("asm/modules/rom_15000/ui/icon/LoadItemIconID.s");
INCLUDE_ASM("asm/modules/rom_15000/ui/icon/DrawInventoryIcon.s");
INCLUDE_ASM("asm/modules/rom_15000/ui/icon/LoadInventoryIcon.s");
INCLUDE_ASM("asm/modules/rom_15000/ui/icon/LoadStatusIcon.s");
INCLUDE_ASM("asm/modules/rom_15000/ui/icon/LoadUIBanner.s");
INCLUDE_ASM("asm/modules/rom_15000/ui/icon/LoadItemIcon.s");
INCLUDE_ASM("asm/modules/rom_15000/ui/icon/LoadMoveIcon.s");
INCLUDE_ASM("asm/modules/rom_15000/ui/icon/LoadMoveIconID.s");
INCLUDE_ASM("asm/modules/rom_15000/ui/icon/DecompressStatusIcon.s");
INCLUDE_ASM("asm/modules/rom_15000/ui/icon/LoadPortrait.s");

void Func_801a5a0(void) {}

INCLUDE_ASM("asm/modules/rom_15000/ui/icon/LoadIcon.s");
