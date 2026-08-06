/* rom_78dc80 (overlay file 892): consolidated TU — sol_sanctum_3 map overlay. */

#include "nonmatching.h"

extern unsigned char gOvl_020080c8[];

unsigned int SolSanctum3_GetEntrances(void) {
    return (unsigned int)gOvl_020080c8;
}

unsigned int SolSanctum3_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008110[];

void *SolSanctum3_GetExits(void) {
    return (void *)gOvl_02008110;
}
extern unsigned char gOvl_0200811c[];

void *SolSanctum3_GetActors(void) {
    return (void *)gOvl_0200811c;
}
extern unsigned char gOvl_02008134[];

void *SolSanctum3_GetEvents(void) {
    return (void *)gOvl_02008134;
}

INCLUDE_ASM("asm/maps/sol_sanctum_3/ovl_30_c_c.s");
