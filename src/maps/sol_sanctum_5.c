/* rom_78de18 (overlay file 894): consolidated TU — sol_sanctum_5 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/sol_sanctum_5/exports.s");

extern unsigned char gOvl_020080c0[];

unsigned int SolSanctum5_GetEntrances(void) {
    return (unsigned int)gOvl_020080c0;
}

unsigned int SolSanctum5_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008120[];

void *SolSanctum5_GetExits(void) {
    return (void *)gOvl_02008120;
}
extern unsigned char gOvl_02008130[];

void *SolSanctum5_GetActors(void) {
    return (void *)gOvl_02008130;
}
extern unsigned char gOvl_02008148[];

void *SolSanctum5_GetEvents(void) {
    return (void *)gOvl_02008148;
}

INCLUDE_ASM("asm/maps/sol_sanctum_5/SolSanctum5_MapInit.s");

INCLUDE_ASM("asm/maps/sol_sanctum_5/imports.s");
