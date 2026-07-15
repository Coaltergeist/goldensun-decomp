typedef unsigned int u32;
extern void _Func_8016498(u32 window);
extern void _Func_801e7c0(u32 text, u32 window, u32 x, u32 y);
extern void _Func_801ea08(u32 value, u32 digits, u32 window, u32 x, u32 flags);
void Func_80b110c(u32 window, u32 textBase, u32 count, u32 mode)
{
    u32 stackSlot;
    register u32 win asm("r6");
    register u32 base asm("r5");
    register u32 cnt asm("r8");
    register u32 md asm("r7");

    __asm__ ("" : "=r"(win) : "0"(window));
    __asm__ volatile ("" ::: "memory");
    __asm__ ("" : "=r"(base) : "0"(textBase));
    __asm__ ("" : "=r"(cnt) : "0"(count));
    __asm__ volatile ("" ::: "memory");
    __asm__ ("" : "=r"(md) : "0"(mode));

    __asm__ volatile (
        "cmp %0, #0\n\t"
        "bne 12f\n\t"
        "b 99f\n"
        : : "r"(win) : "cc"
    );

    __asm__ volatile (
    "10:\n\t"
        "ldr r0, =0xc92\n\t"
        "mov r1, %1\n\t"
        "mov r2, #0\n\t"
        "b 14f\n"
    "11:\n\t"
        "ldr r5, =0xc8b\n\t"
        "mov r1, %1\n\t"
        "mov r0, r5\n\t"
        "mov r2, #0\n\t"
        "mov r3, #8\n\t"
        "bl _Func_801e7c0\n\t"
        "mov r3, #8\n\t"
        "str r3, %0\n\t"
        "mov r0, %3\n\t"
        "mov r1, #5\n\t"
        "mov r2, %1\n\t"
        "mov r3, #0x20\n\t"
        "sub r5, #3\n\t"
        "bl _Func_801ea08\n\t"
        "mov r0, r5\n\t"
        "mov r1, %1\n\t"
        "mov r2, #0x48\n"
    "14:\n\t"
        "mov r3, #8\n\t"
        "bl _Func_801e7c0\n\t"
        "b 99f\n"
    "12:\n\t"
        "mov r0, %1\n\t"
        "bl _Func_8016498\n\t"
        "ldr r0, =0x182\n\t"
        "mov r3, #0\n\t"
        "add r0, %2, r0\n\t"
        "mov r1, %1\n\t"
        "mov r2, #0\n\t"
        "bl _Func_801e7c0\n\t"
        "mov r3, %3\n\t"
        "cmp r3, #0\n\t"
        "bne 11b\n\t"
        "cmp %4, #1\n\t"
        "beq 10b\n\t"
        "cmp %4, #2\n\t"
        "bne 11b\n\t"
        "ldr r0, =0xc93\n\t"
        "mov r1, %1\n\t"
        "mov r2, #0\n\t"
        "mov r3, #8\n\t"
        "bl _Func_801e7c0\n"
    "99:\n\t"
        : "=m" (stackSlot)
        : "r" (win), "r" (base), "r" (cnt), "r" (md)
        : "r0", "r1", "r2", "r3", "r5", "lr", "memory", "cc"
    );
}
