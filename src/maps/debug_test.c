/* rom_7fc618 (overlay file 972): consolidated TU */

#include "nonmatching.h"

extern unsigned char gOvl_020081a8[];
extern unsigned char gOvl_020081d8[];
extern unsigned char gOvl_020081ec[];
extern unsigned char gOvl_02008264[];

extern void __Func_80955b0(int a, int b, int c);
extern void __ClearFlag(int a);

unsigned int OvlFunc_972_2008030(void) {
    return (unsigned int)gOvl_020081a8;
}

unsigned int OvlFunc_972_2008038(void) {
    return 0;
}

unsigned int OvlFunc_972_200803c(void) {
    return (unsigned int)gOvl_020081d8;
}

unsigned int OvlFunc_972_2008044(void) {
    return (unsigned int)gOvl_020081ec;
}

void OvlFunc_972_200804c(void)
{
	__Func_80955b0(8, 0, 0);
	__ClearFlag(0x30);
}

void OvlFunc_972_2008064(void)
{
	__Func_80955b0(9, 1, 0);
	__ClearFlag(0x44);
}

void OvlFunc_972_200807c(void)
{
	__Func_80955b0(0xa, 2, 0);
	__ClearFlag(0x58);
}

void OvlFunc_972_2008094(void)
{
	__Func_80955b0(0xb, 3, 0);
	__ClearFlag(0x6c);
}

unsigned int OvlFunc_972_20080ac(void) {
    return (unsigned int)gOvl_02008264;
}

unsigned int OvlFunc_972_20080b4(void) {
    return 0;
}

INCLUDE_ASM("asm/maps/debug_test/debug_test_data.s");
