/* field/moves/retreat.c */
#include "nonmatching.h"

void Func_809b0b0(unsigned int arg0)
{
    unsigned short *p;
    unsigned short *base;
    int n;
    unsigned int v;

    base = (unsigned short *)arg0;
    p = (unsigned short *)(arg0 + 0x64);
    n = *(short *)p;
    v = (unsigned int)((n * 5) << 4);
    base[3] = (unsigned short)(base[3] + v + 0x1000);
    if (v < 0x1000) {
        *p = *p + 1;
    }
}

INCLUDE_ASM("asm/field/moves/retreat/Func_809b0dc.s");

INCLUDE_ASM("asm/field/moves/retreat/Func_809b11c.s");

INCLUDE_ASM("asm/field/moves/retreat/Field_Retreat.s");
