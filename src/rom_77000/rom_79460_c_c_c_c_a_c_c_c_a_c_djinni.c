#include "unit.h"

int GiveDjinni(int unitId, int element, unsigned int djinni)
{
    unsigned char *unit = (unsigned char *)GetUnit(unitId);
    int countOffset = element + 0x118;
    unsigned int flagsOffset;
    unsigned int mask;
    unsigned char count = unit[countOffset];
    register unsigned int checkedCount asm("r3") = count;

    asm("" : "+r"(checkedCount));

    if (checkedCount > 9)
        return -1;

    flagsOffset = element * 4 + 0xf8;
    mask = 1 << djinni;
    if ((*(unsigned int *)(unit + flagsOffset) & mask) != 0)
        return -1;

    unit[countOffset] = count + 1;
    *(unsigned int *)(unit + flagsOffset) |= mask;
    return 0;
}
