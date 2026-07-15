typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *iwram_3001f2c;
extern void _Func_8016498(void);
extern void _Func_801e41c(void);
extern void Func_80a2324(void);
extern void Func_80a21b0(void);
extern void _Func_801e7c0(void);

int Func_80a56c8(void *win, u32 unused, s32 param_3)
{
    register void *win_r0 asm("r0") = win;
    register s32 param3_r2 asm("r2") = param_3;
    register void *p3 asm("r5");
    register void *w asm("r6");
    register u8 *global asm("r10");
    register s32 count5 asm("r7");

    asm volatile(
        "ldr r3, 6f\n\t"
        "ldr r3, [r3]\n\t"
        "mov r5, r2\n\t"
        "sub sp, #4\n\t"
        "mov r6, r0\n\t"
        "mov r10, r3\n\t"
        "bl _Func_8016498\n\t"
        "mov r3, #0xb\n\t"
        "str r3, [sp]\n\t"
        "mov r2, #0xb\n\t"
        "mov r3, #0x10\n\t"
        "mov r0, r6\n\t"
        "mov r1, #0\n\t"
        "bl _Func_801e41c\n\t"
        "ldr r2, [r5, #8]\n\t"
        "lsl r3, r2, #2\n\t"
        "add r7, r3, r2\n\t"
        "ldr r3, [r5, #0x14]\n\t"
        "sub r3, r7\n\t"
        "lsl r3, #24\n\t"
        "lsr r3, #24\n\t"
        "mov r8, r3\n\t"
        "cmp r3, #5\n\t"
        "bls 1f\n\t"
        "mov r2, #5\n\t"
        "mov r8, r2\n\t"
        "1:\n\t"
        "mov r3, #0x22\n\t"
        "str r3, [sp]\n\t"
        "mov r2, r6\n\t"
        "mov r0, #5\n\t"
        "mov r1, r7\n\t"
        "mov r3, #0x74\n\t"
        "bl Func_80a2324\n\t"
        "mov r2, #0xf\n\t"
        "ldr r3, [r5, #8]\n\t"
        "ldr r1, [r5, #0x14]\n\t"
        "mov r0, r6\n\t"
        "str r2, [sp]\n\t"
        "mov r2, #5\n\t"
        "bl Func_80a21b0\n\t"
        "mov r3, r8\n\t"
        "mov r6, #0\n\t"
        "cmp r3, #0\n\t"
        "bls 2f\n\t"
        "lsl r3, r7, #1\n\t"
        "mov r2, #0xe4\n\t"
        "add r3, r10\n\t"
        "lsl r2, #1\n\t"
        "ldr r7, 3f\n\t"
        "add r5, r3, r2\n\t"
        "4:\n\t"
        "ldrh r3, [r5]\n\t"
        "mov r0, r7\n\t"
        "and r0, r3\n\t"
        "ldr r3, 5f\n\t"
        "add r0, r3\n\t"
        "mov r3, r10\n\t"
        "ldr r1, [r3, #0x20]\n\t"
        "lsl r3, r6, #4\n\t"
        "add r3, #8\n\t"
        "mov r2, #0x18\n\t"
        "bl _Func_801e7c0\n\t"
        "add r3, r6, #1\n\t"
        "lsl r3, #24\n\t"
        "lsr r6, r3, #24\n\t"
        "add r5, #2\n\t"
        "cmp r8, r6\n\t"
        "bhi 4b\n\t"
        "b 2f\n\t"
        ".align 2, 0\n\t"
        "3:\n\t"
        ".word 0x1ff\n\t"
        "6:\n\t"
        ".word iwram_3001f2c\n\t"
        "5:\n\t"
        ".word 0x182\n\t"
        "2:\n\t"
        "mov r0, #1\n\t"
        "add sp, #4\n\t"
        : "=r"(p3), "=r"(w), "=r"(global), "=r"(count5), "+r"(win_r0), "+r"(param3_r2)
        :
        : "r1", "r3", "r8", "lr", "cc", "memory");
    return (int)win_r0;
}
