#include "gba/io.h"

extern unsigned char *iwram_3001e74;
extern signed char Lc5c10[] __asm__(".Lc5c10");

void Func_80c1084(void)
{
    register unsigned char *base asm("r0") = iwram_3001e74;

    if (base != 0 && *(unsigned short *)(base + 0x650) != 0) {
        register vu16 *reg asm("r2");
        unsigned short *counter;
        unsigned short value;
        unsigned int idx2;
        unsigned int next;

        reg = &REG_BLDCNT;
        *reg = 0x3f90;
        reg++;
        *reg = 0x10;

        counter = (unsigned short *)(base + 0x64e);
        value = *counter;
        REG_BLDY = Lc5c10[value];

        idx2 = *counter;
        next = (idx2 + 1) & 0xf;
        if (idx2 > 0xe) {
            next |= 0x10;
        }
        *counter = next;
    }
}
