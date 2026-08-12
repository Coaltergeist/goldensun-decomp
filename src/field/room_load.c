/* field/room_load.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/field/room_load/rom_8b674_a_a.s");

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

INCLUDE_ASM("asm/field/room_load/rom_8b674_c_a.s");

extern int store(int);

/* Func_808b9f8 @ 0x0808b9f8  [asm/rom_8a000/rom_8b674_c.s]
 * Zero 0x42 words walking DOWN from *iwram_3001ebc + 0x118 (0x8c<<1).
 * Loop decrements the counter BEFORE the store (sub; str; sub; cmp; bge).
 */

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

/* GetFieldActor @ 0x0808ba1c  (was Func_808ba1c)  [asm/rom_8a000/rom_8b674_c.s]
 * Bounds-checked actor-table lookup off *iwram_3001ebc (table deref'd EAGERLY,
 * before the bounds check). pop {r1}; bx r1 = returns a value.
 */

unsigned int GetFieldActor(unsigned int actorID)
{
    unsigned int base = iwram_3001ebc;
    unsigned int ofs;

    if (actorID > 0xbf)
        return 0;
    ofs = (actorID << 2) + 0x14;
    return *(unsigned int *)(base + ofs);
}
