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

extern unsigned char iwram_3001ebc[];

int __GetFlag(int);
void __Func_8091ff0(int);
void __Func_8012330(int, int, int);
void __StartEarthquake(void);

static inline void Func_8012330_pos(int x, int y, int z) {
    __Func_8012330(x << 9, y << 9, z << 9);
}

int SolSanctum4_MapInit(void) {
    unsigned char *base;

    base = *(unsigned char **)iwram_3001ebc;
    *(unsigned int *)(base + (0xe0 << 1)) = (0xe0 << 1) + 0x44;
    *(unsigned int *)(base + (0xe0 << 1) + 8) = 0x10;
    if (__GetFlag(0x814) != 0) {
        __Func_8091ff0(0x8d);
        Func_8012330_pos(0x80, 0x80, 0x80);
        __StartEarthquake();
    }
    return 0;
}

INCLUDE_ASM("asm/maps/sol_sanctum_4/imports.s");
INCLUDE_ASM("asm/maps/sol_sanctum_4/sol_sanctum_4_data.s");
