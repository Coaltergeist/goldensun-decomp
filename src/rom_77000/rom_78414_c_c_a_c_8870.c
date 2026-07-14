#include "gba/types.h"

extern u8 *GetItemInfo(int itemId);

int Func_8078870(void *unit, u32 type)
{
    register u8 *itemSlot asm("r5");
    register u32 wantedType asm("r7");
    register int slot asm("r6");
    register u32 equippedValue asm("r2");
    register u32 itemMaskValue asm("r3");
    register u32 equippedMask asm("r8");
    register u32 itemMask asm("r10");

    equippedValue = 0x80;
    asm volatile("" : "+r"(equippedValue));
    itemMaskValue = 0x1ff;
    asm volatile("" : "+r"(itemMaskValue));
    equippedValue <<= 2;
    itemSlot = unit;
    wantedType = type;
    slot = 0;
    equippedMask = equippedValue;
    itemMask = itemMaskValue;
    asm volatile("" : "+r"(itemSlot), "+r"(wantedType), "+r"(slot),
                           "+r"(equippedMask), "+r"(itemMask));
    itemSlot += 0xd8;
    do {
        register u32 equipped asm("r3") = *(volatile u16 *)itemSlot;

        asm volatile("" : "+r"(equipped));
        if (equipped & equippedMask) {
            if (GetItemInfo(*(volatile u16 *)itemSlot)[2] == wantedType) {
                register u32 item asm("r3") = *(volatile u16 *)itemSlot;
                register u32 result asm("r0") = itemMask;

                asm volatile("" : "+r"(item), "+r"(result));
                result &= item;
                return result;
            }
        }
        slot++;
        itemSlot += 2;
    } while (slot <= 14);
    return 0;
}
