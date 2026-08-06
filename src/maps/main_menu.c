/* rom_7795e8 (overlay file 880): consolidated TU — GS1 main-menu overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/main_menu/exports.s");

extern unsigned char gOvl_02009658[];

unsigned int MainMenu_GetEntrances(void) {
    return (unsigned int)gOvl_02009658;
}

unsigned int MainMenu_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gScript_958__02009688[];

void *MainMenu_GetExits(void) {
    return (void *)gScript_958__02009688;
}

extern unsigned char gOvl_0200968c[];

void *MainMenu_GetActors(void) {
    return (void *)gOvl_0200968c;
}

extern unsigned char gOvl_020096a4[];

void *MainMenu_GetEvents(void) {
    return (void *)gOvl_020096a4;
}

INCLUDE_ASM("asm/maps/main_menu/main_menu_body.s");

INCLUDE_ASM("asm/maps/main_menu/imports.s");
