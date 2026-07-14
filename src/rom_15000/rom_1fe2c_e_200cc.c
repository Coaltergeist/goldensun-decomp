typedef unsigned char u8;

extern u8 *iwram_3001f2c;
extern void UpdateSprite_NoArgs(void) asm("_UpdateSprite");

void Func_80200cc(void)
{
    register int index asm("r8");
    register int scale_value asm("r9");
    register int y_base asm("r10");
    register short *coordinates asm("r6");
    register void **sprites asm("r7");
    register int *scale asm("r4");
    register int *position asm("r5");
    register int loop_index asm("r2");

    asm volatile(
        "mov r2, #0\n\t"
        "mov r8, r2\n\t"
        "mov r2, #0x80\n\t"
        "lsl r2, #9\n\t"
        "ldr r3, =iwram_3001f2c\n\t"
        "mov r9, r2\n\t"
        "mov r2, #0xfa\n\t"
        "lsl r2, #17\n\t"
        "ldr r3, [r3]\n\t"
        "mov r10, r2\n\t"
        "mov r2, #0x8d\n\t"
        "lsl r2, #2\n\t"
        "sub sp, #0x1c\n\t"
        "add r6, r3, r2\n\t"
        "sub r2, #0x10\n\t"
        "add r4, sp, #4\n\t"
        "add r5, sp, #0xc\n\t"
        "add r7, r3, r2"
        : "=r"(index), "=r"(scale_value), "=r"(y_base),
          "=r"(coordinates), "=r"(sprites), "=r"(scale), "=r"(position)
        : : "r2", "r3", "memory", "cc");
    do {
        register void *sprite asm("r0");
        asm volatile("ldmia r7!, {r0}" : "=r"(sprite), "+r"(sprites) : : "memory");
        if (sprite != 0) {
            asm volatile(
                "mov r3, r9\n\t"
                "str r3, [sp, #4]\n\t"
                "str r3, [r4, #4]\n\t"
                "mov r2, #0\n\t"
                "ldrsh r3, [r6, r2]\n\t"
                "lsl r3, #16\n\t"
                "str r3, [r5]\n\t"
                "mov r3, r10\n\t"
                "str r3, [r5, #4]\n\t"
                "mov r2, #8\n\t"
                "ldrsh r3, [r6, r2]\n\t"
                "lsl r3, #16\n\t"
                "add r3, r10\n\t"
                "str r3, [r5, #8]\n\t"
                "mov r3, #0\n\t"
                "str r3, [r5, #0xc]\n\t"
                "mov r3, #0x80\n\t"
                "mov r2, r4\n\t"
                "mov r1, r5\n\t"
                "lsl r3, #7\n\t"
                "str r4, [sp]"
                : : "r"(sprite), "r"(scale_value), "r"(y_base),
                    "r"(coordinates), "r"(scale), "r"(position)
                : "r1", "r2", "r3", "memory", "cc");
            UpdateSprite_NoArgs();
            asm volatile("ldr r4, [sp]" : "+r"(scale) : : "memory");
        }
        asm volatile(
            "mov r3, #1\n\t"
            "add r8, r3\n\t"
            "mov r2, r8\n\t"
            "add r6, #2"
            : "+r"(index), "+r"(coordinates), "=r"(loop_index) : : "r3", "cc");
    } while (loop_index <= 3);
    asm volatile("add sp, #0x1c" : : : "memory");
}
