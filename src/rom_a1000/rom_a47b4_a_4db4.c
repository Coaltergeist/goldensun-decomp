extern void _Func_801ea08(void);
extern void _UIDrawText(void);
extern const char gPositive[] asm(".Laf224");
extern const char gNonPositive[] asm(".Laf228");

void Func_80a4db4(int value_argument, int unused, int text_argument,
                  int x_argument, int style)
{
    register int value asm("r5");
    register int text asm("r7");
    register int x asm("r6");
    register int width asm("r2");
    register int magnitude asm("r3");

    __asm__ volatile (
        "sub sp, #4\n\t"
        "mov r6, r3\n\t"
        "ldr r3, [sp, #0x14]\n\t"
        "mov r5, r0\n\t"
        "str r3, [sp]\n\t"
        "mov r1, #3\n\t"
        "mov r3, r6\n\t"
        "mov r7, r2\n\t"
        "bl _Func_801ea08"
        : "=r" (x), "=r" (value), "=r" (text)
        :
        : "r0", "r1", "r2", "r3", "cc", "memory");
    __asm__ volatile ("mov %0, #1\n\tmov %1, r5"
                      : "=r" (width), "=r" (magnitude));
    if (value < 0)
        magnitude = -value;
    if (magnitude > 9)
        width = 2;
    magnitude = value;
    if (value < 0)
        magnitude = -value;
    if (magnitude > 99)
        width = 3;

    if (value > 0) {
        __asm__ volatile (
            "lsl r2, %0, #3\n\tsub r2, r6, r2\n\t"
            "ldr r0, =.Laf224\n\tadd r2, #0x10\n\t"
            "mov r1, r7\n\tldr r3, [sp, #0x14]\n\t"
            "bl _UIDrawText"
            : : "r" (width), "r" (text), "r" (x)
            : "r0", "r1", "r2", "r3", "cc", "memory");
    } else {
        __asm__ volatile (
            "lsl r2, %0, #3\n\tsub r2, r6, r2\n\t"
            "ldr r0, =.Laf228\n\tadd r2, #0x10\n\t"
            "mov r1, r7\n\tldr r3, [sp, #0x14]\n\t"
            "bl _UIDrawText"
            : : "r" (width), "r" (text), "r" (x)
            : "r0", "r1", "r2", "r3", "cc", "memory");
    }
    __asm__ volatile ("add sp, #4" : : : "memory");
}
