#include "gba/types.h"

extern u8 **iwram_3001ebc;

s16 *Func_808d394(int wanted)
{
    register u8 **lists asm("r7");
    register int target asm("r4");
    register int listIndex asm("r12");
    register int actorIndex asm("r6");
    register int sentinel asm("r14");
    register u8 *record asm("r0");
    register u16 id asm("r2");
    register int signedId asm("r3");
    register int listTest asm("r3");

    asm volatile (
        "ldr r3, =iwram_3001ebc\n\t"
        "mov r2, #1\n\t"
        "mov r1, #0\n\t"
        "neg r2, r2\n\t"
        "ldr r7, [r3]\n\t"
        "mov r4, %6\n\t"
        "mov r6, #8\n\t"
        "mov r12, r1\n\t"
        "mov r14, r2"
        : "=r" (lists), "=r" (target), "=r" (listIndex), "=r" (actorIndex), "=r" (sentinel), "=r" (record)
        : "r" (wanted) : "r1", "r2", "r3", "memory");

    do {
        record = *lists++;
        if (record != 0) {
            if (target <= 7) {
                register int end asm("r1");
                asm volatile ("mov r5, #0\n\tldrsh r3, [r0, r5]"
                              : "=r" (signedId) : "r" (record) : "r5", "memory");
                id = *(u16 *)record;
                if (signedId == sentinel)
                    goto next_list;
                asm volatile ("mov r1, #1\n\tneg r1, r1" : "=r" (end));
                do {
                    asm volatile ("lsl r3, r2, #16\n\tasr r3, #16" : "=r" (signedId) : "r" (id));
                    if (signedId == target)
                        goto found;
                    record += 0x18;
                    asm volatile ("mov r5, #0\n\tldrsh r3, [r0, r5]"
                                  : "=r" (signedId) : "r" (record) : "r5", "memory");
                    id = *(u16 *)record;
                } while (signedId != end);
                goto next_list;
            } else {
                register int end asm("r5");
                register u16 raw asm("r1");
                register int threshold asm("r1");
                asm volatile ("ldrh r2, [r0]\n\tlsl r3, r2, #16\n\tasr r3, #16\n\tmov r1, r2"
                              : "=r" (id), "=r" (signedId), "=r" (raw) : "r" (record) : "memory");
                if (signedId == sentinel)
                    goto next_list;
                asm volatile ("mov r5, #1\n\tneg r5, r5" : "=r" (end));
                do {
                    asm volatile ("lsl r3, r1, #16\n\tmov r1, #0xe0\n\tlsl r1, #11"
                                  : "=r" (signedId), "=r" (threshold) : "r" (raw));
                    if (signedId > threshold) {
                        if (actorIndex == target)
                            goto found;
                        actorIndex++;
                    }
                    record += 0x18;
                    asm volatile ("ldrh r2, [r0]\n\tlsl r3, r2, #16\n\tasr r3, #16\n\tmov r1, r2"
                                  : "=r" (id), "=r" (signedId), "=r" (raw) : "r" (record) : "memory");
                } while (signedId != end);
            }
        }
next_list:
        asm volatile ("mov r2, #1\n\tadd r12, r2\n\tmov r3, r12"
                      : "+r" (listIndex), "=r" (listTest) : : "r2");
    } while (listTest <= 3);

    id = *(u16 *)record;
found:
    {
        register int end asm("r5");
        asm volatile ("lsl r3, r2, #16\n\tmov r5, #1\n\tasr r3, #16\n\tneg r5, r5"
                      : "=r" (signedId), "=r" (end) : "r" (id));
        if (signedId == end)
            record = 0;
    }
    return (s16 *)record;
}
