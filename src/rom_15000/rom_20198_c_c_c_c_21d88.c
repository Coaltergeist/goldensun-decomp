typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned char u8;

extern void Func_8021cb8_NoArgs(void) asm("Func_8021cb8");
extern int Func_8021c64(unsigned int target, unsigned int index);
extern int Func_8021c64_NoArgs(void) asm("Func_8021c64");

void Func_8021d88(int base, int index, u32 value)
{
    register u32 saved_value asm("r8");
    register int offset asm("r5");
    register u8 *entry asm("r6");
    register int saved_base asm("r4");

    asm volatile(
        "mov r3, r1\n\t"
        "lsl r5, r3, #3\n\t"
        "sub r5, r3\n\t"
        "mov r4, r0\n\t"
        "mov r8, r2\n\t"
        "lsl r5, #2\n\t"
        "mov r2, #0x82\n\t"
        "add r6, r4, r5\n\t"
        "lsl r3, #4\n\t"
        "lsl r2, #1\n\t"
        "sub sp, #4\n\t"
        "add r6, r2\n\t"
        "mov r1, r8\n\t"
        "mov r2, r3\n\t"
        "str r4, [sp]"
        : "=r"(saved_value), "=r"(offset), "=r"(entry),
          "=r"(saved_base)
        :
        : "r1", "r2", "r3", "memory");
    Func_8021cb8_NoArgs();

    asm volatile(
        "mov r2, #0x8e\n\t"
        "lsl r2, #1\n\t"
        "ldr r4, [sp]\n\t"
        "add r3, r5, r2\n\t"
        "mov r2, r8\n\t"
        "str r2, [r4, r3]"
        : "=r"(saved_base)
        : "r"(offset), "r"(saved_value)
        : "r2", "r3", "memory");
    asm volatile(
        "ldr r3, =0x80002000\n\t"
        "str r3, [r6, #4]"
        :
        : "r"(entry)
        : "r3", "memory");
    *(u32 *)(entry + 8) = 0;

    offset += 0x110;
    asm volatile(
        "ldrh r0, [r4, r5]\n\t"
        "mov r1, r8"
        :
        : "r"(saved_base), "r"(offset), "r"(saved_value)
        : "r0", "r1", "memory");
    Func_8021c64_NoArgs();
    asm volatile(
        "ldr r3, 1f\n\t"
        "ldrh r2, [r6, #8]\n\t"
        "and r0, r3\n\t"
        "ldr r3, =0xfffffc00\n\t"
        "and r3, r2\n\t"
        "orr r3, r0\n\t"
        "strh r3, [r6, #8]\n\t"
        "add sp, #4\n\t"
        "b .L8021d88_epilogue\n\t"
        ".align 2, 0\n"
        "1:\t.word 0x3ff\n\t"
        ".pool\n"
        ".L8021d88_epilogue:"
        :
        : "r"(entry)
        : "r0", "r2", "r3", "memory");
}
