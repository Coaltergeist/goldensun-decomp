/* ui/ui.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/ui/ui/rom_178b0.s");

INCLUDE_ASM("asm/ui/ui/rom_17e88_a.s");

extern int BufferString(unsigned int, int);
extern void Func_8018850(int, unsigned int, unsigned int, int);

void Func_8018790(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned int r5 = arg1;
    unsigned int r6 = arg2;
    Func_8018850(BufferString(arg0, 0), r5, r6, 0);
}

INCLUDE_ASM("asm/ui/ui/rom_17e88_c.s");

INCLUDE_ASM("asm/ui/ui/rom_18cac.s");

INCLUDE_ASM("asm/ui/ui/rom_1908c_a.s");

extern void DecompressString(unsigned int param_1, unsigned int param_2, int param_3);

void DecompressString2(unsigned int param_1, unsigned int param_2) {
    DecompressString(param_1, param_2, 0x7fffffff);
}

INCLUDE_ASM("asm/ui/ui/rom_1908c_c_a_a.s");

int *Func_80197b4(int *p) {
    if (*p != 0)
        *p = 0;
    return p;
}

INCLUDE_ASM("asm/ui/ui/rom_1908c_c_a_c.s");

/* Func_8019ba0; forwards its incoming stringID (r0) unchanged to
 * BufferString(stringID, 1). The param must be int (not u16): the ROM does NOT
 * zero-extend r0, so a u16 param's lsl#16/lsr#16 narrowing diverges. */

int Func_8019ba0(int stringID) {
    return BufferString(stringID, 1);
}

INCLUDE_ASM("asm/ui/ui/rom_1908c_c_c.s");

INCLUDE_ASM("asm/ui/ui/rom_19d2c.s");
