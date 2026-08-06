/* rom_799998 (overlay file 904): consolidated TU — goma_cave_1 map overlay. */

#include "nonmatching.h"

extern unsigned char gOvl_02008108[];

unsigned int GomaCave1_GetEntrances(void) {
    return (unsigned int)gOvl_02008108;
}

unsigned int GomaCave1_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008180[];

void *GomaCave1_GetExits(void) {
    return (void *)gOvl_02008180;
}
extern unsigned char gOvl_02008194[];

void *GomaCave1_GetActors(void) {
    return (void *)gOvl_02008194;
}
extern unsigned char gOvl_020081c4[];

void *GomaCave1_GetEvents(void) {
    return (void *)gOvl_020081c4;
}

INCLUDE_ASM("asm/maps/goma_cave_1/ovl_30_c_c.s");
