#include "unit.h"

#define GetItemNum Func_80a3d6c

/* 所持アイテムの数を数える */
int GetItemNum(int unitId)
{
    struct Unit *unit;
    register u16 *item __asm__("r0");
    register int mask __asm__("r4");
    register int count __asm__("r5");
    register int i __asm__("r1");
    register u16 value __asm__("r2");
    register int masked __asm__("r3");

    unit = _GetUnit(unitId);
    mask = 0x1ff;
    __asm__ volatile ("" : "+r" (mask));
    count = 0;
    __asm__ volatile ("" : "+r" (count));
    item = unit->inventory;
    __asm__ volatile ("" : "+r" (item));
    i = 14;
    do {
        value = *item;
        masked = mask;
        masked &= value;
        item++;
        __asm__ volatile ("" : "+r" (item), "+r" (value), "+r" (masked));
        if (masked != 0)
            count++;
    } while (--i >= 0);

    return count;
}
