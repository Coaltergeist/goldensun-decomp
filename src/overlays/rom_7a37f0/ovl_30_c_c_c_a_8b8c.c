typedef signed short s16;
typedef unsigned int u32;

s16 *OvlFunc_916_2008b8c(s16 *entry, int x, int y)
{
    register int saved_x asm("r5") = x;
    register int sentinel_value asm("r4") = 1;
    register int saved_y asm("r1") = y;
    register int offset asm("r2") = 0;
    register int current asm("r3");

    asm volatile ("" : "+r"(saved_x), "+r"(sentinel_value), "+r"(saved_y));
    current = *(s16 *)((u32)entry + (u32)offset);
    asm volatile ("" : "+r"(current));
    sentinel_value = -sentinel_value;
    if (current != sentinel_value) {
        register int sentinel asm("r8") = sentinel_value;

        do {
            register int right asm("r4");
            register int bottom asm("r2");
            register int direction asm("r3");
            register int left asm("r12") = right;
            register int top asm("r14") = bottom;

            asm volatile (
                "mov r3, #2\n"
                "ldrsh r4, [r0, r3]\n"
                "mov r6, #4\n"
                "ldrsh r2, [r0, r6]\n"
                "mov r6, #6\n"
                "ldrsh r3, [r0, r6]"
                : "=r"(right), "=r"(bottom), "=r"(direction)
                : "r"(entry)
                : "r6"
            );
            left = right;
            top = bottom;

            if (direction == 0)
                right += 3;
            else
                bottom += 3;
            if (saved_x >= left && saved_x <= right &&
                saved_y >= top && saved_y <= bottom)
                return entry;
            entry += 6;
        } while (entry[0] != sentinel);
    }
    return 0;
}
