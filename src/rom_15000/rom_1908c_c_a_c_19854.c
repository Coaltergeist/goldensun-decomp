typedef unsigned short u16;

extern void Func170f8_NoArgs(void) asm("Func_80170f8");
extern void ClearUIRegion_NoArgs(void) asm("ClearUIRegion");

void Func_8019854(void *control_arg)
{
    register unsigned char *control asm("r5");
    register int width asm("r9");
    register int height asm("r11");
    register int inner_x asm("r6");
    register int inner_y asm("r7");
    register int outer_x asm("r8");
    register int outer_y asm("r10");
    register int state asm("r2");

    asm volatile(
        "mov r5, r0\n\t"
        "ldr r3, [r5]\n\t"
        "ldrh r1, [r3, #0xc]\n\t"
        "mov r9, r1\n\t"
        "ldrh r1, [r3, #0xe]\n\t"
        "mov r11, r1\n\t"
        "ldrh r1, [r3, #8]\n\t"
        "sub sp, #8\n\t"
        "ldrh r2, [r3, #0x12]\n\t"
        "str r1, [sp, #4]\n\t"
        "ldrh r3, [r3, #0xa]\n\t"
        "str r3, [sp]"
        : "=r"(control), "=r"(width), "=r"(height), "=r"(state)
        : "r"(control_arg)
        : "r1", "r3", "memory");
    if (state == 4) {
        asm volatile(
            "add r1, #2\n\t"
            "mov r6, r9\n\t"
            "mov r7, r11\n\t"
            "mov r8, r1\n\t"
            "sub r6, #1\n\t"
            "sub r7, #1\n\t"
            "add r3, #2\n\t"
            "mov r2, r8\n\t"
            "mov r0, r6\n\t"
            "mov r1, r7\n\t"
            "mov r10, r3"
            : "=r"(inner_x), "=r"(inner_y), "=r"(outer_x), "=r"(outer_y)
            : "r"(width), "r"(height)
            : "r0", "r1", "r2", "r3", "cc");
        Func170f8_NoArgs();
        asm volatile(
            "ldrh r3, [r5, #0x14]\n\t"
            "ldr r2, =0xffff\n\t"
            "add r3, r2\n\t"
            "strh r3, [r5, #0x14]\n\t"
            "lsl r3, #16\n\t"
            "lsr r2, r3, #16"
            : "=r"(state) : "r"(control) : "r3", "memory", "cc");
        if (state == 0) {
            asm volatile(
                "ldr r3, [r5]\n\t"
                "mov r0, r6\n\t"
                "strh r2, [r3, #0x12]\n\t"
                "mov r1, r7\n\t"
                "mov r2, r8\n\t"
                "mov r3, r10"
                : : "r"(control), "r"(inner_x), "r"(inner_y),
                    "r"(outer_x), "r"(outer_y), "r"(state)
                : "r0", "r1", "r2", "r3", "memory");
            ClearUIRegion_NoArgs();
            asm volatile(
                "mov r0, r9\n\t"
                "mov r1, r11\n\t"
                "ldr r2, [sp, #4]\n\t"
                "ldr r3, [sp]"
                : : "r"(width), "r"(height) : "r0", "r1", "r2", "r3", "memory");
            Func170f8_NoArgs();
        }
    }
    asm volatile("add sp, #8" : : : "memory");
}
