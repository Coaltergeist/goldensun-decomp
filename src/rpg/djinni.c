// fakematch
/* rpg/djinni.c */
#include "nonmatching.h"

extern unsigned char *GetUnit(unsigned int unit);
extern void Func_8079ae8();

extern unsigned char L8926c[] __asm__(".L8926c");

unsigned char *GetDjinniInfo(unsigned int arg0, unsigned int arg1) {
    unsigned int r3;
    r3 = 0;
    if (arg0 <= 3 && arg1 <= 0x13) {
        r3 = arg0 * 20 + arg1;
    }
    return L8926c + r3 * 12;
}

INCLUDE_ASM("asm/rpg/djinni/rom_79460_c_c_c_c_a_c_c_c_a_c.s");

extern unsigned int Func_807a2bc(unsigned int, unsigned int, unsigned int);

unsigned int Func_807a350(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    unsigned char *r5;
    unsigned int r6;
    unsigned int r7;
    unsigned int r8;
    unsigned int r10;

    r7 = arg0;
    r6 = arg1;
    r10 = arg2;
    r5 = (unsigned char *)GetUnit(r7);
    r8 = Func_807a2bc(r7, r6, r10);
    if (r8 != 0) {
        unsigned int idx_byte;
        unsigned int idx_word;
        unsigned int mask;

        idx_byte = r6 + 0x11c;
        r5[idx_byte] += 0xff;

        idx_word = (r6 << 2) + 0x108;
        mask = 1 << r10;
        *(unsigned int *)(r5 + idx_word) &= ~mask;

        Func_8079ae8(r7);
    }
    return r8;
}

INCLUDE_ASM("asm/rpg/djinni/rom_79460_c_c_c_c_a_c_c_c_c.s");


unsigned short Func_807a5b0(void) {
    extern unsigned int GetDjinniInfo_0() __asm__("GetDjinniInfo");
    unsigned int ptr = GetDjinniInfo_0();
    return *(unsigned short *)ptr;
}

INCLUDE_ASM("asm/rpg/djinni/rom_79460_c_c_c_c_c_a.s");

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

INCLUDE_ASM("asm/rpg/djinni/rom_79460_c_c_c_c_c_c.s");
