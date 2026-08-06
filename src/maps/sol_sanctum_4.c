/* rom_78dd40 (overlay file 893): consolidated TU — sol_sanctum_4 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/sol_sanctum_4/exports.s");

extern unsigned char gOvl_020080c0[];

unsigned int SolSanctum4_GetEntrances(void) {
    return (unsigned int)gOvl_020080c0;
}

unsigned int SolSanctum4_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008120[];

void *SolSanctum4_GetExits(void) {
    return (void *)gOvl_02008120;
}
extern unsigned char gOvl_02008130[];

void *SolSanctum4_GetActors(void) {
    return (void *)gOvl_02008130;
}
extern unsigned char gOvl_02008148[];

void *SolSanctum4_GetEvents(void) {
    return (void *)gOvl_02008148;
}

INCLUDE_ASM("asm/maps/sol_sanctum_4/ovl_30_c_c.s");

INCLUDE_ASM("asm/maps/sol_sanctum_4/imports.s");
