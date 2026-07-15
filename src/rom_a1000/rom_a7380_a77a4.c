typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *iwram_3001f2c;

int Func_80a77a4(int index)
{
    register int param0 asm("r0") = index;
    register int idx4 asm("r10");
    register u8 *state asm("r5");
    register int result asm("r6");
    register int selected asm("r7");
    register int retval asm("r0");

    asm volatile(
        "mov r2, #0x1c\n\t"
        "add r2, r0\n\t"
        "ldr r3, =iwram_3001f2c\n\t"
        "lsl r0, #2\n\t"
        "mov r10, r0\n\t"
        "ldr r5, [r3]\n\t"
        "mov r3, r10\n\t"
        "add r3, #0x14\n\t"
        "ldr r0, [r5, r3]\n\t"
        "mov r6, #0\n\t"
        "mov r3, #1\n\t"
        "strb r3, [r0, #5]\n\t"
        "strh r6, [r0, #0xc]\n\t"
        "ldr r0, [r5, #0x10]\n\t"
        "sub sp, #4\n\t"
        "mov r8, r2\n\t"
        "ldrsb r7, [r5, r2]\n\t"
        "bl _Func_8016498\n\t"
        "mov r0, #0xb9\n\t"
        "lsl r0, #1\n\t"
        "bl _GetFlag\n\t"
        "cmp r0, #0\n\t"
        "beq 1f\n\t"
        "mov r3, #3\n\t"
        "ldr r0, [r5, #0x10]\n\t"
        "mov r1, #9\n\t"
        "str r3, [sp]\n\t"
        "mov r2, #1\n\t"
        "mov r3, #9\n\t"
        "bl _Func_801e41c\n\t"
        "1:\n\t"
        "mov r3, #1\n\t"
        "neg r3, r3\n\t"
        "cmp r7, r3\n\t"
        "bne 2f\n\t"
        "ldr r3, 5f\n\t"
        "mov r2, r8\n\t"
        "strb r3, [r5, r2]\n\t"
        "b 3f\n\t"
        "2:\n\t"
        "lsl r0, r7, #1\n\t"
        "add r0, r0, r7\n\t"
        "lsl r0, r0, #3\n\t"
        "sub r0, #0xa\n\t"
        "mov r1, #0x10\n\t"
        "bl Func_80a1ac0\n\t"
        "3:\n\t"
        "mov r2, #0x88\n\t"
        "lsl r2, #2\n\t"
        "add r3, r5, r2\n\t"
        "ldrh r3, [r3]\n\t"
        "cmp r3, #3\n\t"
        "bne 4f\n\t"
        "bl Func_80a7d68\n\t"
        "b 6f\n\t"
        ".align 2, 0\n\t"
        "5: .word 0\n\t"
        ".pool\n\t"
        "4:\n\t"
        "bl Func_80a7a34\n\t"
        "6:\n\t"
        "mov r6, r0"
        : "=r"(idx4), "=r"(state), "=r"(result), "=r"(selected)
        : "r"(param0)
        : "r0", "r1", "r2", "r3", "r4", "r8", "lr", "cc", "memory");

    asm volatile(
        "mov r3, r10\n\t"
        "add r3, #0x14\n\t"
        "ldr r0, [r5, r3]\n\t"
        "bl Func_80a17c4\n\t"
        "mov r0, #1\n\t"
        "bl WaitFrames\n\t"
        "add r0, r6, #0\n\t"
        "add sp, #4"
        : "=r"(retval)
        : "r"(state), "r"(idx4), "r"(result)
        : "r1", "r2", "r3", "r4", "lr", "memory");

    return retval;
}
