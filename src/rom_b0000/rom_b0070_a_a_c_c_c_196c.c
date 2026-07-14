#include "unit.h"

extern u8 *_GetItemInfo(u32 item);
extern void Func_80b1f4c(int unitId, int slot, int arg3);

int Func_80b196c(int unitId, int slot)
{
    struct Unit *unit = _GetUnit(unitId);
    u32 itemId;

    if (slot == -1) {
        return 0;
    }

    itemId = unit->inventory[slot] & 0x1ff;

    if (_GetItemInfo(itemId)[2] == 6) {
        return 0;
    }

    if ((_GetItemInfo(itemId)[3] & 8) != 0) {
        return 0;
    }

    Func_80b1f4c(unitId, slot, -1);
    return 1;
}
