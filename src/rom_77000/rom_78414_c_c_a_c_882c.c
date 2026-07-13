#include "unit.h"

extern unsigned char *GetItemInfo(unsigned int itemId);

unsigned char *Func_807882c(struct Unit *unit, unsigned int type)
{
    register unsigned char *data asm("r6") = (unsigned char *)unit;
    register unsigned int wantedType asm("r8") = type;
    register int slot asm("r7") = 0;
    register int offset asm("r5") = 0xd8;
    register unsigned int equipped asm("r10") = 0x200;

    asm("" : "+r"(data));

    do {
        if ((*(volatile unsigned short *)(offset + (int)data) & equipped) != 0) {
            unsigned char *info = GetItemInfo(
                *(volatile unsigned short *)(offset + (int)data));

            if (info[2] == wantedType)
                return info;
        }
        slot++;
        offset += 2;
    } while (slot <= 0xe);

    return 0;
}
