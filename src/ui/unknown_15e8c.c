/* ui/unknown_15e8c.c */
#include "nonmatching.h"

INCLUDE_ASM("asm/ui/unknown_15e8c/rom_15e8c_a_a.s");

extern unsigned int iwram_3001e8c;

void Func_8015ec0(unsigned int arg0)
{
    unsigned char *base;
    unsigned int *slot;
    unsigned int *prev;

    base = (unsigned char *)iwram_3001e8c;
    if (arg0 < (unsigned int)(base + 0x698))
        return;
    if (arg0 >= (unsigned int)(base + 0xd98))
        return;
    slot = (unsigned int *)(base + 0xd9c);
    prev = (unsigned int *)*slot;
    *slot = arg0;
    *prev = arg0;
    *(unsigned int *)arg0 = 0;
}
void Func_8015ef4(void)
{
    unsigned int base;
    unsigned int *p;
    int i;

    base = iwram_3001e8c;
    p = (unsigned int *)(base + 0x698);
    *(unsigned int **)(base + 0xd98) = p;
    for (i = 0x3e; i >= 0; i--) {
        unsigned int *next = (unsigned int *)((char *)p + 0x1c);
        *p = (unsigned int)next;
        p = next;
    }
    *p = 0;
    *(unsigned int **)(base + 0xd9c) = p;
}

INCLUDE_ASM("asm/ui/unknown_15e8c/rom_15e8c_a_c_a.s");
