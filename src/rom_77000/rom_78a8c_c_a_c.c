#include "unit.h"

extern const u8 *GetItemInfo(unsigned int itemId);

int CountUnitItemQuantity(int unitId, u32 itemId)
{
    struct Unit *unit;
    int quantity;
    int index;
    unsigned int offset;

    unit = GetUnit(unitId);
    quantity = 0;
    itemId &= 0x1ff;
    index = 0;
    offset = 0xd8;

    do {
        if ((*(u16 *)(offset + (unsigned int)unit) & 0x1ff) == itemId) {
            if ((GetItemInfo(itemId)[3] & 0x10) != 0) {
                quantity = (*(u16 *)(offset + (unsigned int)unit) >> 11) + 1;
                break;
            }
            quantity++;
        }
        index++;
        offset += 2;
    } while (index <= 0xe);

    return quantity;
}
