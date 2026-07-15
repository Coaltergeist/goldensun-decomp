#include "gba/types.h"

extern u8 *iwram_3001f2c;
extern u8 *_GetUnit(int);

void Func_80ae7fc(u8 *counts)
{
    u8 *state = iwram_3001f2c;
    int unitIndex;

    for (unitIndex = 0; unitIndex < state[0x219]; unitIndex++) {
        u8 *data = _GetUnit(*(u16 *)(state + 0x208 + unitIndex * 2));
        int group;
        register int count asm("r4");

        group = 0;
        count = 0;
        data += 0xf8;
        for (; group <= 3; group++, data += 4) {
            u32 extra = *(u32 *)(data + 0x10);
            int bit;
            for (bit = 0; bit <= 0x13; bit++) {
                u32 mask = 1u << bit;
                if ((extra & mask) != 0 || (*(u32 *)data & mask) != 0)
                    count++;
            }
        }
        counts[unitIndex] = count;
    }
}
