typedef unsigned int u32;
typedef void (*FillFunc)(void);

extern void Func_80008d8(void);

void Func_80167e0(int amount)
{
    register u32 rowBytes asm("r8");
    register u32 dmaCount asm("r9");
    register u32 clearOffset asm("r10");
    register u32 dmaControl asm("r11");
    register u32 *source asm("r5");
    register u32 *destination asm("r6");
    register int rows asm("r7");

    asm volatile(
        "lsl r3, r0, #1\n\tadd r3, r0\n\t"
        "ldr r6, =0x6002520\n\tlsl r1, r3, #1\n\t"
        "lsl r3, #3\n\tmov r8, r3\n\tadd r5, r3, r6\n\t"
        "ldr r3, =0x6002500\n\tsub sp, #8\n\tstr r3, [sp]\n\t"
        "mov r3, #0x20\n\tmov r2, #0x18\n\tmov r4, #0x84\n\t"
        "sub r3, r1\n\tsub r2, r1\n\tlsl r4, #24\n\t"
        "lsl r3, #2\n\tmov r9, r2\n\tmov r11, r4\n\t"
        "mov r10, r3\n\tmov r7, #0x1d"
        : "=r"(rowBytes), "=r"(dmaCount), "=r"(clearOffset),
          "=r"(dmaControl), "=r"(source), "=r"(destination), "=r"(rows)
        : : "r0", "r1", "r2", "r3", "r4", "memory");

    do {
        asm volatile(
            "mov r2, r9\n\tmov r4, r11\n\t"
            "ldr r3, =0x040000d4\n\tmov r0, r5\n\tmov r1, r6\n\t"
            "orr r2, r4\n\tstmia r3!, {r0, r1, r2}\n\tsub r3, #0xc"
            : : "r"(dmaCount), "r"(dmaControl), "r"(source),
                "r"(destination)
            : "r0", "r1", "r2", "r3", "r4", "memory");

        asm volatile("ldr r0, [sp]\n\tldr r3, =Func_80008d8\n\t"
                     "add r0, r10\n\tmov r1, r8\n\t"
                     "mov r2, #0\n\tbl _call_via_r3"
                     : : "r"(clearOffset), "r"(rowBytes)
                     : "r0", "r1", "r2", "r3", "memory");

        asm volatile("ldr r3, [sp]\n\tsub r7, #1\n\tadd r3, #0x80\n\t"
                     "add r6, #0x80\n\tadd r5, #0x80\n\tstr r3, [sp]"
                     : "+r"(rows), "+r"(destination), "+r"(source)
                     : : "r3", "memory");
    } while (rows >= 0);
    asm volatile("add sp, #8" : : : "memory");
}
