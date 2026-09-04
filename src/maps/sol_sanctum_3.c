/* rom_78dc80 (overlay file 892): consolidated TU — sol_sanctum_3 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/sol_sanctum_3/exports.s");

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

extern unsigned char iwram_3001ebc[];

void __SetFlag(int);
int __GetFlag(int);
void __Func_8091ff0(int);
void __Func_8012330(int, int, int);
void __StartEarthquake(void);

static inline void Func_8012330_pos(int x, int y, int z) {
    __Func_8012330(x << 9, y << 9, z << 9);
}

int SolSanctum3_MapInit(void) {
    unsigned char *base;

    base = *(unsigned char **)iwram_3001ebc;
    *(unsigned int *)(base + (0xe0 << 1)) = (0xe0 << 1) + 0x44;
    __SetFlag(0x144);
    if (__GetFlag(0x814) != 0) {
        __Func_8091ff0(0x8d);
        Func_8012330_pos(0x80, 0x80, 0x80);
        __StartEarthquake();
    }
    return 0;
}

INCLUDE_ASM("asm/maps/sol_sanctum_3/imports.s");
INCLUDE_ASM("asm/maps/sol_sanctum_3/sol_sanctum_3_data.s");
