typedef signed short s16;
typedef unsigned short u16;

extern void CopyMapTiles(int tile, int x, int arg1, int arg2,
                         int width, int height);
extern void WaitFrames(int frames);

void Func_8010560(s16 *entries, int arg1, int arg2)
{
    register s16 *base asm("r7") = entries;
    register s16 *record asm("r6");
    register int tile asm("r12");
    register int saved_arg1 asm("r10");
    register int saved_arg2 asm("r8");
    register int sentinel asm("r9");
    register int delay asm("r5");
    register int compare_value asm("r3");

    __asm__ volatile (
        "ldrh r0, [r7]\n\t"
        "ldr r3, =0xffff\n\t"
        "mov r12, r0"
        : "=r" (tile), "=r" (compare_value)
        : "r" (base)
        : "r0", "memory");
    __asm__ volatile ("sub sp, #8" : : : "memory");
    __asm__ volatile (
        "mov r10, r1\n\t"
        "mov r8, r2"
        : "=r" (saved_arg1), "=r" (saved_arg2));
    __asm__ volatile ("" : "+r" (base), "+r" (tile),
                       "+r" (saved_arg1), "+r" (saved_arg2));

    if (tile != compare_value) {
        sentinel = compare_value;
        __asm__ volatile ("" : "+r" (sentinel));
        record = base + 1;
        do {
            __asm__ volatile (
                "mov r2, #0\n\t"
                "ldrsh r1, [r6, r2]\n\t"
                "mov r4, #2\n\t"
                "ldrsh r3, [r6, r4]\n\t"
                "mov r4, #4\n\t"
                "ldrsh r2, [r6, r4]\n\t"
                "mov r4, #6\n\t"
                "ldrsh r5, [r6, r4]\n\t"
                "lsl r3, #16\n\t"
                "lsl r2, #16\n\t"
                "lsr r3, #16\n\t"
                "lsr r2, #16\n\t"
                "lsl r1, #16\n\t"
                "lsl r5, #16\n\t"
                "str r3, [sp]\n\t"
                "str r2, [sp, #4]\n\t"
                "lsr r1, #16\n\t"
                "mov r2, r10\n\t"
                "mov r3, r8\n\t"
                "lsr r5, #16\n\t"
                "bl CopyMapTiles"
                : "=r" (delay)
                : "r" (record), "r" (saved_arg1), "r" (saved_arg2),
                  "r" (tile)
                : "r0", "r1", "r2", "r3", "r4", "cc", "memory");
            base += 5;
            __asm__ volatile ("" : "+r" (base));
            WaitFrames(delay);
            __asm__ volatile (
                "ldrh r0, [r7]\n\t"
                "mov r12, r0"
                : "=r" (tile)
                : "r" (base)
                : "r0", "memory");
            record += 5;
        } while (tile != sentinel);
    }
    __asm__ volatile ("add sp, #8" : : : "memory");
}
