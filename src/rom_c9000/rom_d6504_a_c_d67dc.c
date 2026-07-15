typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u32 iwram_3001e74[];
extern u16 iwram_3001ad0[];
extern int gPhysVec[];

extern void _AnimTransitionIn(int a, int file, int c);
extern void WaitFrames(int n);

void Func_80d67dc(void)
{
    asm volatile(
        "ldr r3, .Le74ptr_%=\n\t"
        "mov r1, #0x80\n\t"
        "ldr r6, [r3, #0x7c]\n\t"
        "ldr r2, [r3, #0]\n\t"
        "ldr r3, .Lconst1_%=\n\t"
        "lsl r1, r1, #19\n\t"
        "strh r3, [r1, #0]\n\t"
        "mov r8, r1\n\t"
        "ldr r1, .Lad0ptr_%=\n\t"
        "mov r3, #0x20\n\t"
        "strh r3, [r1, #6]\n\t"
        "mov r3, #0xc9\n\t"
        "lsl r3, r3, #3\n\t"
        "add r2, r2, r3\n\t"
        "ldrh r1, [r2, #0]\n\t"
        "mov r0, #1\n\t"
        "mov r2, #0x18\n\t"
        "sub sp, #4\n\t"
        "bl _AnimTransitionIn\n\t"
        "mov r5, #0\n\t"
        "mov r4, sp\n\t"
        "str r5, [r4, #0]\n\t"
        "ldr r3, .Lsad_%=\n\t"
        "mov r0, r4\n\t"
        "mov r1, r6\n\t"
        "ldr r2, .Lcnt1_%=\n\t"
        "stmia r3!, {r0, r1, r2}\n\t"
        "sub r3, #0xc\n\t"
        "str r5, [r4, #0]\n\t"
        "b .Lafterpool1_%=\n\t"
        ".align 2\n"
        ".Lconst1_%=: .word 1\n"
        ".Le74ptr_%=: .word iwram_3001e74\n"
        ".Lad0ptr_%=: .word iwram_3001ad0\n"
        ".Lsad_%=: .word 0x040000d4\n"
        ".Lcnt1_%=: .word 0x85001000\n"
        ".Lafterpool1_%=:\n\t"
        "mov r0, r4\n\t"
        "ldr r1, .Ldst2_%=\n\t"
        "ldr r2, .Lcnt2_%=\n\t"
        "stmia r3!, {r0, r1, r2}\n\t"
        "sub r3, #0xc\n\t"
        "mov r0, #1\n\t"
        "bl WaitFrames\n\t"
        "ldr r2, .Lbldalpha_addr_%=\n\t"
        "ldr r3, .Lbldalpha_val_%=\n\t"
        "strh r3, [r2, #0]\n\t"
        "ldr r3, .Lbldcnt_val_%=\n\t"
        "sub r2, #2\n\t"
        "strh r3, [r2, #0]\n\t"
        "ldr r3, .Ldispcnt_val_%=\n\t"
        "mov r1, r8\n\t"
        "ldr r2, .Lgphysvec_%=\n\t"
        "strh r3, [r1, #0]\n\t"
        "mov r3, #0x78\n\t"
        "str r3, [r2, #16]\n\t"
        "add sp, #4\n\t"
        "b .Lafterpool2_%=\n\t"
        ".align 2\n"
        ".Lbldalpha_val_%=: .word 0x0000100e\n"
        ".Lbldcnt_val_%=: .word 0x00003f46\n"
        ".Ldispcnt_val_%=: .word 0x00007741\n"
        ".Ldst2_%=: .word 0x06004000\n"
        ".Lcnt2_%=: .word 0x85001000\n"
        ".Lbldalpha_addr_%=: .word 0x04000052\n"
        ".Lgphysvec_%=: .word gPhysVec\n"
        ".Lafterpool2_%=:\n\t"
        :
        :
        : "r0", "r1", "r2", "r3", "r4", "r5", "r6", "r8", "memory", "lr"
    );
}
