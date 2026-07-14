typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *iwram_3001e8c;
extern void Func_801de5c(void *destination, void *source, void *vram);
extern void Func_801de5c_NoArgs(void) asm("Func_801de5c");

void Func_8017c1c(void *destination, u8 *position, int x, int y)
{
    register int saved_y asm("r6");
    register u8 *saved_position asm("r5");
    register int saved_x asm("r7");
    register u8 *base asm("r4");
    u32 offset;

    asm volatile(
        "mov r6, r3\n\t"
        "ldr r3, =iwram_3001e8c\n\t"
        "mov r5, r1\n\t"
        "mov r7, r2\n\t"
        "ldr r4, [r3]"
        : "=r"(saved_y), "=r"(saved_position), "=r"(saved_x),
          "=r"(base)
        :
        : "r3", "memory");

    if (destination == 0) {
        asm volatile(
            "ldr r3, =0x12b2\n\t"
            "add r1, r4, r3\n\t"
            "ldrh r3, [r1]\n\t"
            "mov r2, #0xeb\n\t"
            "lsl r2, #4\n\t"
            "lsl r3, #1\n\t"
            "add r3, r2\n\t"
            "add r0, r4, r2\n\t"
            "ldr r2, 1f\n\t"
            "strh r2, [r4, r3]\n\t"
            "ldrh r3, [r1]\n\t"
            "ldr r2, 2f\n\t"
            "add r3, #1\n\t"
            "and r3, r2\n\t"
            "strh r3, [r1]"
            : "+r"(destination)
            : "r"(base)
            : "r1", "r2", "r3", "memory");
    }

    {
        register u32 calculated asm("r1");
        asm volatile(
            "ldrh r3, [r5, #0xe]\n\t"
            "ldrh r2, [r5, #0xc]\n\t"
            "add r3, r6\n\t"
            "add r3, #1\n\t"
            "lsl r3, #5\n\t"
            "add r2, r7\n\t"
            "add r3, r2\n\t"
            "add %0, r3, #1"
            : "=r"(calculated)
            : "r"(saved_position), "r"(saved_y), "r"(saved_x)
            : "r2", "r3");
        offset = calculated;
    }
    if (offset < 0x280) {
        asm volatile(
            "ldr r3, =0x06002000\n\t"
            "lsl r1, #1\n\t"
            "add r2, r1, r3\n\t"
            "add r1, r4, r1\n\t"
            "b .L17c1c_call\n\t"
            ".align 2, 0\n"
            "1:\t.word 0\n"
            "2:\t.word 0x1ff\n\t"
            ".pool\n"
            ".L17c1c_call:"
            : "+r"(offset)
            : "r"(destination), "r"(base)
            : "r2", "r3", "memory");
        Func_801de5c_NoArgs();
    }
}

asm(".short 0");
