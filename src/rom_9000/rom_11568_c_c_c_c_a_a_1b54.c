typedef unsigned short u16;
typedef unsigned int u32;

extern unsigned char *iwram_3001ec0;

int Func_8011b54(short tile_x_arg, short tile_y_arg,
                 short value_arg, short count_arg)
{
    register int tile_x asm("r0");
    register int tile_y asm("r6");
    register int value asm("r7");
    register int count asm("r2");
    register unsigned char *base asm("r4");
    register u16 *used asm("r5");
    register unsigned int index asm("r1");

    asm volatile(
        "lsl r2, #16\n\t"
        "lsl r3, #16\n\t"
        "asr r7, r2, #16\n\t"
        "asr r2, r3, #16\n\t"
        "ldr r3, =iwram_3001ec0\n\t"
        "ldr r4, [r3]\n\t"
        "mov r5, r4\n\t"
        "lsl r1, #16\n\t"
        "add r5, #0xb0\n\t"
        "asr r6, r1, #16\n\t"
        "ldrh r1, [r5]\n\t"
        "lsl r0, #16\n\t"
        "asr r0, #16"
        : "=r"(tile_x), "=r"(tile_y), "=r"(value), "=r"(count),
          "=r"(base), "=r"(used), "=r"(index)
        :
        : "r3", "memory", "cc");
    if (index > 3)
        return -1;
    {
        register unsigned char *entry asm("r1");
        register u32 source asm("r0");
        asm volatile(
            "mov r3, #0x2c\n\t"
            "mul r1, r3\n\t"
            "lsl r0, #16\n\t"
            "lsl r3, r6, #16\n\t"
            "lsr r3, #16\n\t"
            "lsr r0, #12\n\t"
            "add r0, r3\n\t"
            "mov r3, #0xa0\n\t"
            "add r1, r4, r1\n\t"
            "lsl r3, #19\n\t"
            "lsl r0, #1\n\t"
            "lsl r2, #16\n\t"
            "mov r4, #0x80\n\t"
            "add r0, r3\n\t"
            "lsr r2, #16\n\t"
            "mov r3, #0\n\t"
            "lsl r4, #24\n\t"
            "strh r3, [r1, #4]\n\t"
            "strh r3, [r1, #6]\n\t"
            "strh r2, [r1, #0xa]\n\t"
            "str r0, [r1]\n\t"
            "strh r7, [r1, #8]"
            : "=r"(entry), "=r"(source), "+r"(count)
            : "r"(tile_x), "r"(tile_y), "r"(value), "r"(base), "r"(index)
            : "r3", "r4", "memory", "cc");
        asm volatile(
            "ldr r3, =0x040000d4\n\t"
            "add r1, #0xc\n\t"
            "orr r2, r4\n\t"
            "stmia r3!, {r0, r1, r2}\n\t"
            "sub r3, #0xc"
            : "+r"(entry), "+r"(source), "+r"(count)
            : : "r3", "memory", "cc");
    }
    ++*used;
    return 0;
}
