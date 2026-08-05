/* rom_78ac38 (overlay file 889): consolidated TU — vale_river_eruption map overlay. */

#include "nonmatching.h"

extern unsigned char gOvl_02008cf0[];

unsigned int ValeRiverEruption_GetEntrances(void) {
    return (unsigned int)gOvl_02008cf0;
}

unsigned int ValeRiverEruption_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008d38[];

void *ValeRiverEruption_GetExits(void) {
    return (void *)gOvl_02008d38;
}
extern unsigned char gOvl_02008d44[];

void *ValeRiverEruption_GetActors(void) {
    return (void *)gOvl_02008d44;
}
extern unsigned char gOvl_02008e94[];

void *ValeRiverEruption_GetEvents(void) {
    return (void *)gOvl_02008e94;
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern void OvlFunc_889_2008074(void);

int ValeRiverEruption_MapInit(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0xf) {
        OvlFunc_889_2008074();
    }
    return 0;
}

INCLUDE_ASM("asm/maps/vale_river_eruption/ovl_30_c_c_c.s");
