#include "unit.h"

#define GetItemStock Func_80a3d9c

/* 指定アイテムの個数を返す */
int GetItemStock(int unitId, int itemId)
{
    struct Unit *unit;
    register int wanted __asm__("r6");
    register u16 *item __asm__("r0");
    register int mask __asm__("r4");
    register int quantity __asm__("r5");
    register int i __asm__("r1");
    register unsigned int value __asm__("r2");
    register unsigned int work __asm__("r3");

    wanted = itemId;
    __asm__ volatile ("" : "+r" (wanted));
    unit = _GetUnit(unitId);
    mask = 0x1ff;
    __asm__ volatile ("" : "+r" (mask));
    quantity = 0;
    __asm__ volatile ("" : "+r" (quantity));
    i = 0;
    __asm__ volatile ("" : "+r" (i));
    item = unit->inventory;
    __asm__ volatile ("" : "+r" (item));

    do {
        value = *item;
        work = value;
        __asm__ volatile ("" : "+r" (value), "+r" (work));
        item++;
        __asm__ volatile ("" : "+r" (item));
        if (work != 0) {
            work = mask;
            work &= value;
            __asm__ volatile ("" : "+r" (work));
            if (work == wanted) {
                work = 0xf8;
                __asm__ volatile ("" : "+r" (work));
                work <<= 8;
                __asm__ volatile ("" : "+r" (work));
                work &= value;
                __asm__ volatile ("" : "+r" (work));
                quantity = work >> 11;
                quantity++;
                break;
            }
        }
        i++;
    } while (i <= 14);

    return quantity;
}
