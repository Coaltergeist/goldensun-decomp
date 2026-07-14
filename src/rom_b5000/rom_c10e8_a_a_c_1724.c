typedef unsigned short u16;

int UploadBGPalette(const u16 *source, u16 *destination,
                    int intensity, int count)
{
    register const u16 *source_ptr asm("r7");
    register u16 *destination_ptr asm("r6");
    register int scale asm("r0");
    register int remaining asm("r5");
    register int red_mask asm("r8");
    register int green_mask asm("r14");
    register int blue_mask asm("r12");

    asm volatile(
        "mov r7, r0\n\t"
        "mov r0, r2\n\t"
        "mov r2, #0x80\n\t"
        "lsl r2, #9\n\t"
        "mov r6, r1\n\t"
        "cmp r0, r2\n\t"
        "ble 1f\n\t"
        "mov r0, r2\n"
        "1:"
        : "=r"(source_ptr), "=r"(destination_ptr), "=r"(scale)
        :
        : "r1", "r2", "cc");

    if (count > 0) {
        asm volatile(
            "mov r1, #0x1f\n\t"
            "mov r8, r1\n\t"
            "mov r2, #0xf8\n\t"
            "mov r1, #0xf8\n\t"
            "lsl r2, #2\n\t"
            "lsl r1, #7\n\t"
            "mov r14, r2\n\t"
            "mov r12, r1\n\t"
            "mov r5, r3"
            : "=r"(red_mask), "=r"(green_mask), "=r"(blue_mask), "=r"(remaining)
            :
            : "r1", "r2", "r3");
        do {
            asm volatile(
                "ldrh r4, [r7]\n\t"
                "mov r2, r8\n\t"
                "mov r3, r4\n\t"
                "and r3, r2\n\t"
                "mov r1, r14\n\t"
                "mov r2, r4\n\t"
                "and r2, r1\n\t"
                "mul r3, r0\n\t"
                "mov r1, r12\n\t"
                "mul r2, r0\n\t"
                "and r1, r4\n\t"
                "mul r1, r0\n\t"
                "lsr r4, r3, #16\n\t"
                "mov r3, r8\n\t"
                "and r4, r3\n\t"
                "lsr r2, #16\n\t"
                "mov r3, r14\n\t"
                "and r2, r3\n\t"
                "orr r4, r2\n\t"
                "lsr r1, #16\n\t"
                "mov r2, r12\n\t"
                "and r1, r2\n\t"
                "orr r4, r1\n\t"
                "sub r5, #1\n\t"
                "strh r4, [r6]\n\t"
                "add r7, #2\n\t"
                "add r6, #2"
                : "+r"(source_ptr), "+r"(destination_ptr), "+r"(remaining)
                : "r"(scale), "r"(red_mask), "r"(green_mask), "r"(blue_mask)
                : "r1", "r2", "r3", "r4", "memory", "cc");
        } while (remaining != 0);
    }
    return 0;
}
