typedef unsigned int u32;

extern u32 *iwram_3001ef8;

void Func_80c0228(void)
{
    register int value asm("r0");
    register u32 color asm("r4");

    asm volatile(
        "ldr r3, =iwram_3001ef8\n\t"
        "ldr r3, [r3]\n\t"
        "ldr r0, [r3]\n\t"
        : "=r"(value) : : "r3", "memory");
    if ((u32)value <= 0x4f) {
        register int row asm("r2");
        register u32 base asm("r5");
        register u32 tilemap asm("r2");
        register int i asm("r1");

        asm volatile(
            "mov r3, #7\n\t"
            "ldr r2, =0xf081\n\t"
            "and r3, r0\n\t"
            "add r4, r3, r2\n\t"
            "mov r3, r0\n\t"
            "cmp r0, #0\n\t"
            "bge 1f\n\t"
            "add r3, r0, #7\n"
            "1:\n\t"
            "asr r3, #3\n\t"
            "mov r2, #0xd\n\t"
            "sub r2, r3"
            : "=r"(color), "=r"(row) : "r"(value) : "r3", "cc");
        asm volatile(
            "ldr r5, =0x6006000\n\t"
            "lsl r3, r2, #6\n\t"
            "mov r1, #0\n\t"
            "add r2, r3, r5"
            : "=r"(base), "=r"(tilemap), "=r"(i) : "r"(row) : "r3");
        do {
            asm volatile(
                "add r1, #1\n\t"
                "strh r4, [r2]\n\t"
                "add r2, #2"
                : "+r"(i), "+r"(tilemap) : "r"(color) : "memory", "cc");
        } while (i != 0x20);

        asm volatile(
            "mov r3, #0x80\n\t"
            "lsl r3, #4\n\t"
            "orr r4, r3\n\t"
            "mov r3, r0\n\t"
            "cmp r3, #0\n\t"
            "bge 1f\n\t"
            "add r3, #7\n"
            "1:\n\t"
            "asr r3, #3\n\t"
            "mov r2, r3\n\t"
            "add r2, #0xd"
            : "+r"(color), "=r"(row) : "r"(value) : "r3", "cc");
        if ((u32)row <= 0x14) {
            asm volatile(
                "ldr r0, =0x6006000\n\t"
                "lsl r3, r2, #6\n\t"
                "mov r1, #0\n\t"
                "add r2, r3, r0"
                : "=r"(tilemap), "=r"(i) : "r"(row) : "r0", "r3");
            do {
                asm volatile(
                    "add r1, #1\n\t"
                    "strh r4, [r2]\n\t"
                    "add r2, #2"
                    : "+r"(i), "+r"(tilemap) : "r"(color) : "memory", "cc");
            } while (i != 0x20);
        }
    }
}
