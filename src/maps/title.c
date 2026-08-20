/* rom_779188 (overlay file 879): consolidated TU — GS1 title-screen overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/title/exports.s");

extern unsigned char gOvl_020085f8[];

unsigned int Title_GetEntrances(void) {
    return (unsigned int)gOvl_020085f8;
}

unsigned int Title_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008628[];

void *Title_GetExits(void) {
    return (void *)gOvl_02008628;
}

extern unsigned char gOvl_0200862c[];

void *Title_GetActors(void) {
    return (void *)gOvl_0200862c;
}

extern unsigned char gOvl_02008644[];

void *Title_GetEvents(void) {
    return (void *)gOvl_02008644;
}

INCLUDE_ASM("asm/maps/title/Title_MapInit.s");
INCLUDE_ASM("asm/maps/title/OvlFunc_879_20081c0.s");
INCLUDE_ASM("asm/maps/title/OvlFunc_879_2008238.s");
INCLUDE_ASM("asm/maps/title/OvlFunc_879_20082e8.s");
INCLUDE_ASM("asm/maps/title/OvlFunc_879_2008454.s");

INCLUDE_ASM("asm/maps/title/imports.s");
