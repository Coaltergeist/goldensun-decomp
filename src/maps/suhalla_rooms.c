/* rom_7ec19c (overlay file 962): consolidated TU — suhalla_rooms map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/suhalla_rooms/exports.s");

extern unsigned char MapEntrance_ARRAY_962__02008c3c[];

void *SuhallaRooms_GetEntrances(void) {
    return (void *)MapEntrance_ARRAY_962__02008c3c;
}
extern unsigned char gOvl_02008da4[];

void *SuhallaRooms_GetSpecialExits(void) {
    return (void *)gOvl_02008da4;
}
extern unsigned char gOvl_02008dd4[];

void *SuhallaRooms_GetExits(void) {
    return (void *)gOvl_02008dd4;
}

extern unsigned char Lf28[] __asm__(".Lm962_f28");
extern unsigned char Le08[] __asm__(".Lm962_e08");

unsigned int *SuhallaRooms_GetActors(void)
{
    if (__GetFlag(0x96f))
        return (unsigned int *)Lf28;
    return (unsigned int *)Le08;
}

INCLUDE_ASM("asm/maps/suhalla_rooms/OvlFunc_962_200806c.s");
INCLUDE_ASM("asm/maps/suhalla_rooms/OvlFunc_962_2008100.s");
INCLUDE_ASM("asm/maps/suhalla_rooms/OvlFunc_962_200816c.s");
INCLUDE_ASM("asm/maps/suhalla_rooms/OvlFunc_962_20081d4.s");

extern unsigned char iwram_3001ebc[];

void OvlFunc_962_200821c(void)
{
    int r3;
    r3 = *(unsigned int *)iwram_3001ebc;
    r3 = r3 + 0xb6 * 2;
    __Func_8091e9c(*(short *)((char *)r3 + 0));
    __PlaySound(0x7b);
}

INCLUDE_ASM("asm/maps/suhalla_rooms/OvlFunc_962_2008240.s");

extern unsigned char L11ec[] __asm__(".Lm962_11ec");
extern unsigned char L1090[] __asm__(".Lm962_1090");

unsigned int *SuhallaRooms_GetEvents(void)
{
    if (__GetFlag(0x96f))
        return (unsigned int *)L11ec;
    return (unsigned int *)L1090;
}

INCLUDE_ASM("asm/maps/suhalla_rooms/SuhallaRooms_MapInit.s");
INCLUDE_ASM("asm/maps/suhalla_rooms/suhalla_rooms_data.s");

INCLUDE_ASM("asm/maps/suhalla_rooms/imports.s");
