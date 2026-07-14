#include "gba/types.h"

extern u8 *GetUnit(int unitId);
extern u8 *GetItemInfo(int itemId);

int CanRemoveItem(int unitId, int slot)
{
    u8 *unit = GetUnit(unitId);
    int offset = slot * 2 + 0xd8;
    u8 *itemInfo;
    register u32 item asm("r3") = *(u16 *)(unit + offset);
    register int itemId asm("r5") = 0x1ff;

    asm volatile("" : "+r"(item), "+r"(itemId));
    itemId &= item;
    itemInfo = GetItemInfo(itemId);

    if (itemId == 0)
        return -1;
    if (itemInfo[3] & 8)
        return -4;
    if ((*(u16 *)(unit + offset) & 0x200) && (itemInfo[3] & 2))
        return -3;
    return 0;
}
