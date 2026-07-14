#include "gba/types.h"

extern int Func_80796c4(s16 *unitIds);
extern int GiveItemTo(int unitId, int itemId);

int GiveItem(int itemId)
{
    s16 unitIds[10];
    register int savedItemId asm("r8") = itemId;
    s16 *unit;
    int count;
    int i;

    count = Func_80796c4(unitIds);
    i = 0;
    asm volatile("" : "+r"(savedItemId));
    unit = unitIds;
    if (i < count) {
        do {
            register int unitId asm("r5") = *unit;
            register int itemArgument asm("r1") = savedItemId;
            register int unitArgument asm("r0");

            asm volatile("" : "+r"(unitId));
            asm volatile("" : "+r"(itemArgument));
            unit++;
            unitArgument = unitId;
            asm volatile("" : "+r"(unitArgument));
            if (GiveItemTo(unitArgument, itemArgument) >= 0)
                return unitId;
            i++;
        } while (i < count);
    }
    return -1;
}
