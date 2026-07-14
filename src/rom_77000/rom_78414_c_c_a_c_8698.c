#include "gba/types.h"

extern u8 gState[];
extern int CheckItem(int unitId, int itemId);
extern int Func_80796c4(s16 *unitIds);

int CheckPartyItem(int itemId)
{
    register u8 *state asm("r3") = gState;
    register int stateOffset asm("r2") = 0xfa;
    register int savedItemId asm("r8") = itemId;
    int *leadUnit;
    int result;

    stateOffset <<= 1;
    asm("" : "+r"(stateOffset));
    leadUnit = (int *)(state + stateOffset);
    result = CheckItem(*leadUnit, savedItemId);

    {
        register int notFound asm("r3") = -1;

        asm volatile("" : "+r"(notFound));
        if (result != notFound)
            return *leadUnit;
    }
    {
        s16 unitIds[10];
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
                result = CheckItem(unitArgument, itemArgument);
                if (result != -1)
                    return unitId;
                i++;
            } while (i < count);
        }
    }
    return -1;
}
