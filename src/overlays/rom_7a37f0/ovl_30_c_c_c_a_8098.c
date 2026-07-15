typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

extern u32 gBuffer[];
extern u8 ewram_2020000[];
extern u8 ewram_2020004[];

void OvlFunc_916_2008098(s32 a0, s32 a1, s32 width, s32 height, s32 a4, s32 a5, s32 a6)
{
    register s32 a0r asm("r0") = a0;
    register s32 a1r asm("r1") = a1;
    register s32 widthIn asm("r2") = width;
    register s32 heightIn asm("r3") = height;
    register s32 maskFOut asm("r7");

    asm volatile(
        "sub sp, #8\n\t"
        "lsl r1, #7\n\t"
        "ldr r4, [sp, #0x30]\n\t"
        "mov r10, r2\n\t"
        "add r1, r0\n\t"
        "ldr r2, .Lpool_gbuf_916\n\t"
        "lsl r1, #2\n\t"
        "add r3, r4, r3\n\t"
        "add r5, r1, r2\n\t"
        "cmp r4, r3\n\t"
        "bge .L126_916\n\t"
        "str r3, [sp, #4]\n\t"
        "mov r6, r10\n\t"
        "mov r3, #0x80\n\t"
        "sub r3, r6\n\t"
        "lsl r3, #2\n\t"
        "mov r11, r3\n\t"
        "ldr r3, [sp, #0x28]\n\t"
        "lsl r3, #4\n\t"
        "mov r9, r3\n\t"
        ".Lce_916:\n\t"
        "ldr r0, [sp, #0x2c]\n\t"
        "mov r1, r10\n\t"
        "add r2, r0, r1\n\t"
        "cmp r0, r2\n\t"
        "bge .L11c_916\n\t"
        "ldr r3, .Lpool_fff_916\n\t"
        "mov r7, #0xf\n\t"
        "mov r8, r3\n\t"
        "mov r3, r4\n\t"
        "and r3, r7\n\t"
        "add r3, r9\n\t"
        "lsl r3, #5\n\t"
        "ldr r6, .Lpool_vram1_916\n\t"
        "str r3, [sp]\n\t"
        "mov r14, r6\n\t"
        "mov r12, r2\n\t"
        ".Lee_916:\n\t"
        "ldr r6, [sp]\n\t"
        "ldmia r5!, {r1}\n\t"
        "mov r3, r0\n\t"
        "mov r2, r8\n\t"
        "and r3, r7\n\t"
        "and r1, r2\n\t"
        "add r3, r6, r3\n\t"
        "ldr r6, .Lpool_ewram0_916\n\t"
        "lsl r1, #3\n\t"
        "add r2, r1, r6\n\t"
        "ldr r2, [r2]\n\t"
        "lsl r3, #2\n\t"
        "mov r6, r14\n\t"
        "str r2, [r3, r6]\n\t"
        "ldr r6, .Lpool_ewram1_916\n\t"
        "add r2, r1, r6\n\t"
        "ldr r1, .Lpool_vram2_916\n\t"
        "ldr r2, [r2]\n\t"
        "add r3, r1\n\t"
        "add r0, #1\n\t"
        "str r2, [r3]\n\t"
        "cmp r0, r12\n\t"
        "blt .Lee_916\n\t"
        ".L11c_916:\n\t"
        "ldr r2, [sp, #4]\n\t"
        "add r4, #1\n\t"
        "add r5, r11\n\t"
        "cmp r4, r2\n\t"
        "blt .Lce_916\n\t"
        ".L126_916:\n\t"
        "add sp, #8\n\t"
        : "=r"(maskFOut)
        : "r"(a0r), "r"(a1r), "r"(widthIn), "r"(heightIn)
        : "r4", "r5", "r6", "r8", "r9", "r10", "r11", "r12", "lr", "memory", "cc"
    );
}

asm(
    ".align 2, 0\n\t"
    ".Lpool_gbuf_916: .word gBuffer\n\t"
    ".Lpool_fff_916: .word 0xfff\n\t"
    ".Lpool_vram1_916: .word 0x6002800\n\t"
    ".Lpool_ewram0_916: .word ewram_2020000\n\t"
    ".Lpool_ewram1_916: .word ewram_2020004\n\t"
    ".Lpool_vram2_916: .word 0x6002840"
);
