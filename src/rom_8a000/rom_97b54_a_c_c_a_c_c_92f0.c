#include "gba/types.h"
#include "math.h"

void Func_80992f0(unsigned char *actor)
{
    short *counter = (short *)(actor + 0x64);
    fx32 s = sin((int)*counter << 9);
    fx32 result = fx32_multiply(0x40000, s);

    *(int *)(actor + 8) = *(int *)(actor + 0x38) + result;

    *counter = *counter + 1;
    *counter = (*counter + 0x80) % 0x80;
}
