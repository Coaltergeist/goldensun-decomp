#include "unit.h"

int Func_80a3ddc(struct Unit *unit, u16 *list)
{
    register u16 *baseList __asm__("r5");
    register u16 *p __asm__("r3");
    register int zero1 __asm__("r2");
    register u16 *bound __asm__("r12");
    register int zero2 __asm__("r3");
    register int count __asm__("r7");
    register int hold __asm__("r12");
    register u16 *src __asm__("r0");
    register int idx __asm__("r6");
    register u16 *dst __asm__("r4");
    register int i __asm__("r1");
    register int z __asm__("r3");
    register int raw __asm__("r2");
    register int val __asm__("r3");

    baseList = list;
    p = baseList;
    __asm__ volatile ("ldr\t%0, =0" : "=r" (zero1));
    p = p + 31;
    bound = baseList;

    do {
        *p = zero1;
        p--;
    } while ((int)p >= (int)bound);

    __asm__ volatile ("ldr\t%0, =0" : "=r" (zero2));
    count = 0;
    __asm__ volatile ("" : "+r" (count));
    hold = zero2;
    src = unit->inventory;
    idx = 0;
    dst = baseList;
    i = 14;

    do {
        z = hold;
        __asm__ volatile ("strh\t%0, [%1, %2]" : : "r" (z), "r" (idx), "r" (baseList) : "memory");
        raw = *src;
        val = raw;
        __asm__ volatile ("" : "+r" (val));
        src++;
        if (val != 0) {
            *dst = raw;
            count++;
            dst++;
            __asm__ volatile ("b\t1f\n\t.pool\n1:");
        }
        i--;
        idx += 2;
    } while (i >= 0);

    return count;
}
