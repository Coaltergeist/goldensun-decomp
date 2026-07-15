typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *Func_8077330(s32);

s32 Func_807a3a8(u32 param_1, u32 param_2, u32 param_3)
{
    register u32 in_r0 asm("r0") = param_1;
    register u32 in_r1 asm("r1") = param_2;
    register u32 in_r2 asm("r2") = param_3;
    register s32 out_r0 asm("r0");
    register s32 tmp_r7 asm("r7");

    asm volatile(
        "mov r8, r1\n"
        "mov r1, #0\n"
        "mov r10, r2\n"
        "mov r9, r1\n"
        "mov r3, #0\n"
        "cmp r0, #7\n"
        "bls 1f\n"
        "mov r3, #1\n"
        "1:\n"
        "mov r0, r3\n"
        "bl Func_8077330\n"
        "mov r1, #0x84\n"
        "mov r3, r0\n"
        "lsl r1, #1\n"
        "mov r2, #8\n"
        "add r2, r3\n"
        "add r7, r3, r1\n"
        "mov r12, r2\n"
        "ldr r2, [r7]\n"
        "mov r4, #0\n"
        "add r0, #9\n"
        "mov r5, #0\n"
        "mov r1, r12\n"
        "cmp r9, r2\n"
        "bge 6f\n"
        "ldrb r3, [r1]\n"
        "mov r14, r3\n"
        "mov r6, r9\n"
        "cmp r8, r14\n"
        "bne 2f\n"
        "ldrb r3, [r0]\n"
        "cmp r10, r3\n"
        "bne 2f\n"
        "sub r3, r2, #1\n"
        "mov r1, #1\n"
        "str r3, [r7]\n"
        "mov r9, r1\n"
        "b 3f\n"
        "2:\n"
        "ldr r2, [r7]\n"
        "add r4, #1\n"
        "add r0, #4\n"
        "add r1, #4\n"
        "add r5, #4\n"
        "cmp r4, r2\n"
        "bge 6f\n"
        "ldrb r3, [r1]\n"
        "mov r6, r5\n"
        "cmp r8, r3\n"
        "bne 2b\n"
        "ldrb r3, [r0]\n"
        "cmp r10, r3\n"
        "bne 2b\n"
        "sub r3, r2, #1\n"
        "str r3, [r7]\n"
        "mov r2, #1\n"
        "mov r9, r2\n"
        "3:\n"
        "mov r3, #0x80\n"
        "lsl r3, #1\n"
        "add r3, r12\n"
        "ldr r3, [r3]\n"
        "cmp r4, r3\n"
        "bge 6f\n"
        "mov r2, #0x80\n"
        "lsl r2, #1\n"
        "add r2, r12\n"
        "b 5f\n"
        "4:\n"
        "lsl r6, r4, #2\n"
        "5:\n"
        "mov r1, r12\n"
        "add r3, r6, #4\n"
        "ldr r3, [r1, r3]\n"
        "str r3, [r1, r6]\n"
        "ldr r3, [r2]\n"
        "add r4, #1\n"
        "cmp r4, r3\n"
        "blt 4b\n"
        "6:\n"
        "mov r0, r9\n"
        : "=r"(out_r0), "=r"(tmp_r7)
        : "r"(in_r0), "r"(in_r1), "r"(in_r2)
        : "r3", "r4", "r5", "r6", "r8", "r9", "r10", "r12", "r14", "cc",
          "memory");
    (void)tmp_r7;

    return out_r0;
}
