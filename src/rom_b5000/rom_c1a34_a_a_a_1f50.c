#include "unit.h"

int Func_80c1f50(int characterId)
{
    register struct Unit *unit asm("r2");
    int i;
    int j;
    int battleSlotState;

    for (i = 0; i <= 5; i++) {
        unit = _GetUnit(i + 0x80);
        battleSlotState = unit->battleSlotState;
        if (battleSlotState == 1 && unit->unitType == characterId) {
            j = 0;
            if (unit->unk00[0] == 0) {
                unit->unk00[0] = 0x31;
                unit->unk00[battleSlotState] = j;
                return;
            }
            do {
                j++;
                if (j > 0xd)
                    return;
            } while (unit->unk00[j] != 0);
            unit->unk00[j] = 0x31;
            unit->unk00[j + 1] = 0;
            return;
        }
    }
    return;
}
