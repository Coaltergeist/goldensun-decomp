/* field/unknown_809748c.c */
#include "nonmatching.h"

extern unsigned int iwram_3001ebc;
extern int Func_8091200(unsigned int a, unsigned int b);
extern void Func_8091254(unsigned int a);
extern void Func_809748c();

void Func_809748c(void) {
    unsigned int base;
    unsigned int p;

    base = iwram_3001ebc;
    p = base + 0x236;
    Func_8091200(p, 2);
    if (*(short *)((char *)base + 0xcb8) != 0) {
        Func_8091200(0x10001, 1);
    } else {
        Func_8091200(p, 1);
    }
    Func_8091254(8);
}

INCLUDE_ASM("asm/field/unknown_809748c/Func_80974d8.s");
