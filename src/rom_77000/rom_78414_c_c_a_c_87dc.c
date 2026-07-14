#include "gba/types.h"

extern u8 *GetUnit(int unitId);
extern u8 *GetItemInfo(int itemId);

int GetEquippedItem(int unitId, u32 type)
{
    register u32 wantedType asm("r8") = type;
    register u8 *unit asm("r7") = GetUnit(unitId);
    register int slot asm("r6") = 0;
    register int offset asm("r5") = 0xd8;
    register u32 equippedMask asm("r10") = 0x200;

    while (slot < 15) {
        register u32 equipped asm("r3");

        equipped = *(volatile u16 *)(offset + (u32)unit);
        asm volatile("" : "+r"(equipped));
        if (equipped & equippedMask) {
            u16 itemId = *(volatile u16 *)(offset + (u32)unit);

            if (GetItemInfo(itemId)[2] == wantedType)
                break;
        }
        offset += 2;
        slot++;
    }
    if (slot == 15)
        slot = -1;
    return slot;
}
