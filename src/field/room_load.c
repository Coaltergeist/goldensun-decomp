/* field/room_load.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/field/room_load/InitMapActors.s");

extern unsigned int iwram_3001ebc;

int FindMapActorSlot(void)
{
    unsigned int *base;
    int r0;
    int r2;
    unsigned int *p;

    base = (unsigned int *)iwram_3001ebc;
    r0 = 7;
    r2 = 8;
    p = (unsigned int *)((char *)base + 0x34);
    do {
        if (*p++ != 0) {
            r0 = r2;
        }
        r2++;
    } while (r2 <= 0x41);
    r0++;
    if (r0 == 0x42) {
        r0 = -1;
    }
    return r0;
}


unsigned int GetMapActorSlot(unsigned int arg0) {
    return iwram_3001ebc + (arg0 << 2) + 0x14;
}

INCLUDE_ASM("asm/field/room_load/Func_808b868.s");
INCLUDE_ASM("asm/field/room_load/Func_808b8e8.s");
INCLUDE_ASM("asm/field/room_load/Func_808b98c.s");

extern int store(int);

void Func_808b9f8(void)
{
    unsigned int base = iwram_3001ebc;
    unsigned int ofs;
    unsigned int zero;
    unsigned int *p;
    int i;

    ofs = 0x8c << 1;
    zero = 0;
    i = 0x41;
    p = (unsigned int *)(base + ofs);
    do {
        i--;
        *p = zero;
        p--;
    } while (i >= 0);
}
