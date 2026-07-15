typedef unsigned char u8;

extern u8 iwram_3001e70[];
extern void Func_80108e4(void);

void Func_80114a0(void)
{
    register int r5v asm("r5");
    register int r6v asm("r6");
    register int r7v asm("r7");
    register int r8v asm("r8");
    register int r9v asm("r9");
    register int r10v asm("r10");
    register int r11v asm("r11");

    __asm__ volatile (
        "ldr r3, =iwram_3001e70\n\t"
        "ldr r3, [r3]\n\t"
        "sub sp, #0x14\n\t"
        "mov r1, #0\n\t"
        "str r3, [sp, #0x10]\n\t"
        "str r1, [sp, #0xc]\n\t"
        "str r1, [sp, #8]\n\t"
        "ldr r3, [r3]\n\t"
        "cmp r3, #0\n\t"
        "beq 1f\n\t"
        "ldmia r3!, {r2}\n\t"
        "str r2, [sp, #0xc]\n\t"
        "ldr r3, [r3, #4]\n\t"
        "str r3, [sp, #8]\n\t"
        "1:\n\t"
        "ldr r1, [sp, #0xc]\n\t"
        "mov r2, #0xff\n\t"
        "lsl r2, #24\n\t"
        "add r3, r1, r2\n\t"
        "ldr r1, [sp, #8]\n\t"
        "ldr r2, =0xfec00000\n\t"
        "asr r3, #25\n\t"
        "str r3, [sp, #0xc]\n\t"
        "add r3, r1, r2\n\t"
        "asr r3, #25\n\t"
        "str r3, [sp, #8]\n\t"
        "mov r3, #0\n\t"
        "str r3, [sp, #4]\n\t"
        "mov r9, r3\n\t"
        "2:\n\t"
        "ldr r2, [sp, #4]\n\t"
        "mov r1, #0\n\t"
        "ldr r6, [sp, #8]\n\t"
        "mov r10, r1\n\t"
        "mov r11, r2\n\t"
        "3:\n\t"
        "mov r3, r6\n\t"
        "mov r1, #0xf\n\t"
        "and r3, r1\n\t"
        "mov r5, #0\n\t"
        "mov r8, r6\n\t"
        "lsl r7, r3, #4\n\t"
        "4:\n\t"
        "ldr r2, [sp, #0xc]\n\t"
        "add r1, r2, r5\n\t"
        "mov r3, r1\n\t"
        "mov r2, #0xf\n\t"
        "and r3, r2\n\t"
        "add r4, r7, r3\n\t"
        "mov r2, #0x9c\n\t"
        "lsl r3, r4, #1\n\t"
        "lsl r2, #1\n\t"
        "add r3, r2\n\t"
        "ldr r2, [sp, #0x10]\n\t"
        "ldrh r4, [r2, r3]\n\t"
        "mov r3, #0\n\t"
        "add r4, r11\n\t"
        "str r3, [sp]\n\t"
        "mov r0, r9\n\t"
        "mov r2, r8\n\t"
        "mov r3, r4\n\t"
        "bl Func_80108e4\n\t"
        "cmp r0, #0\n\t"
        "bne 5f\n\t"
        "add r5, #1\n\t"
        "cmp r5, #1\n\t"
        "bls 4b\n\t"
        "mov r3, #1\n\t"
        "add r10, r3\n\t"
        "mov r1, r10\n\t"
        "add r6, #1\n\t"
        "cmp r1, #1\n\t"
        "bls 3b\n\t"
        "ldr r2, [sp, #4]\n\t"
        "mov r3, #0xa0\n\t"
        "lsl r3, #1\n\t"
        "mov r1, #1\n\t"
        "add r2, r3\n\t"
        "add r9, r1\n\t"
        "str r2, [sp, #4]\n\t"
        "mov r2, r9\n\t"
        "cmp r2, #1\n\t"
        "bls 2b\n\t"
        "5:\n\t"
        "add sp, #0x14\n\t"
        : "=r"(r5v), "=r"(r6v), "=r"(r7v), "=r"(r8v), "=r"(r9v),
          "=r"(r10v), "=r"(r11v)
        :
        : "r0", "r1", "r2", "r3", "r4", "memory", "cc"
    );
}
