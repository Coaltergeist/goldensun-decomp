#include "unit.h"

extern struct Unit *__GetUnit(int unitId);
extern void __GiveItemTo(int unitId, int itemId);
extern void __EquipItem(int unitId, int inventorySlot);

/* アイテムを渡し、所持品にある同じアイテムを装備する。 */
void OvlFunc_common1_850(int unitId, int itemId)
{
    struct Unit *unit;
    int inventorySlot;

    unit = __GetUnit(unitId);
    __GiveItemTo(unitId, itemId);
    for (inventorySlot = 0; inventorySlot <= 14; inventorySlot++) {
        if (unit->inventory[inventorySlot] == itemId)
            __EquipItem(unitId, inventorySlot);
    }
}
