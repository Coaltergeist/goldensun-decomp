// fakematch
/* rpg/give_item.c -- give item to a party member (equip + stat/flag update). */
#include "nonmatching.h"

void Func_807a628(unsigned int arg0, unsigned int arg1in)
{
    register unsigned int arg1 __asm__("r8") = arg1in;
    unsigned short *unit;
    int i;
    extern unsigned char *GetUnit_2() __asm__("GetUnit");

    unit = (unsigned short *)GetUnit_2(arg0, arg1);
    GiveItemTo(arg0, arg1);
    i = 0;
    unit = (unsigned short *)((char *)unit + 0xd8);
    while (i <= 14) {
        if (*unit++ == arg1) {
            EquipItem(arg0, i);
        }
        i++;
    }
}

INCLUDE_ASM("asm/rpg/give_item/rom_7a664.s");
