typedef unsigned int u32;

extern void Func_800be70(u32 value, u32 index);
extern void WaitFrames(int frames);

void Func_800bf34(u32 *values, int count)
{
    register int saved_count asm("r11");
    register u32 offset asm("r7");

    asm volatile ("sub sp, #4\n\tstr r0, [sp]\n\tmov r11, r1"
                  : "=r" (saved_count) : : "memory");
    offset = 0;

    do {
        if (saved_count > 0) {
            register u32 *current asm("r5");
            register u32 second asm("r9");
            register u32 third asm("r10");
            register u32 fourth asm("r8");
            register int remaining asm("r6");

            asm volatile (
                "add r3, r7, #1\n\tmov r9, r3\n\t"
                "add r3, r7, #2\n\tmov r10, r3\n\t"
                "ldr r5, [sp]\n\t"
                "add r3, r7, #3\n\tmov r8, r3\n\t"
                "mov r6, r11"
                : "=r" (current), "=r" (second), "=r" (third),
                  "=r" (fourth), "=r" (remaining)
                : "r" (offset), "r" (saved_count)
                : "r3", "memory");

            do {
                Func_800be70(*current, offset);
                Func_800be70(*current, second);
                Func_800be70(*current, third);
                remaining--;
                Func_800be70(*current++, fourth);
            } while (remaining != 0);
        }
        asm volatile ("mov r0, #1\n\tadd r7, #4\n\tbl WaitFrames"
                      : "+r" (offset) : : "r0", "cc", "memory");
    } while (offset < 0x80);
    asm volatile ("add sp, #4" : : : "memory");
}
