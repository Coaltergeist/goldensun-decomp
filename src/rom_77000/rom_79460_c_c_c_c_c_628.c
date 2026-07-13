#include "unit.h"

extern int GiveItemTo(int unitId, unsigned int itemId);
extern void EquipItem(int unitId, int slot);

void Func_807a628(int unitId, unsigned int itemId)
{
    struct Unit *unit = GetUnit(unitId);
    int slot;

    GiveItemTo(unitId, itemId);
    for (slot = 0; slot <= 0xe; slot++) {
        if (unit->inventory[slot] == itemId)
            EquipItem(unitId, slot);
    }
}
