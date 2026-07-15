typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u32 gScript_969__0200e004;
extern u32 ColorDeltaBlue asm(".L600c");
extern u32 ColorDeltaGreen asm(".L6008");

void OvlFunc_924_2008d58(void)
{
    u32 buf;
    register u32 r7_save asm("r7");

    asm volatile(
        "ldr r3, 4f\n\t"
        "mov r5, sp\n\t"
        "add r5, r5, #2\n\t"
        "strh r3, [r5]\n\t"
        "ldr r3, 5f\n\t"
        "mov r1, #5\n\t"
        "ldr r0, [r3]\n\t"
        "bl _umodsi3_RAM\n\t"
        "cmp r0, #0\n\t"
        "bne 1f\n\t"
        "ldr r3, 6f\n\t"
        "ldr r2, [r3]\n\t"
        "mov r1, #0x1f\n\t"
        "add r2, r2, #4\n\t"
        "and r2, r2, r1\n\t"
        "str r2, [r3]\n\t"
        "mov r6, #0\n\t"
        "mov r7, r5\n\t"
        "b 2f\n\t"
        ".align 2\n\t"
        "4: .word 0\n\t"
        "5: .word iwram_3001e40\n\t"
        "6: .word gScript_969__0200e004\n\t"
        "2:\n\t"
        "mov r3, #0x6e\n\t"
        "sub r3, r6\n\t"
        "mov r2, #0xa0\n\t"
        "lsl r2, #19\n\t"
        "lsl r3, #1\n\t"
        "add r3, r2\n\t"
        "ldrh r2, [r3]\n\t"
        "mov r3, #0x1f\n\t"
        "and r3, r2\n\t"
        "strh r3, [r7]\n\t"
        "ldrh r5, [r7]\n\t"
        "cmp r6, #2\n\t"
        "bhi 3f\n\t"
        "lsl r0, r5, #2\n\t"
        "mov r1, #10\n\t"
        "bl _divsi3_RAM\n\t"
        "sub r5, r0\n\t"
        "3:\n\t"
        "mov r2, #0x6f\n\t"
        "sub r2, r6\n\t"
        "mov r3, #0xa0\n\t"
        "lsl r3, #19\n\t"
        "lsl r2, #1\n\t"
        "add r2, r3\n\t"
        "ldr r3, =.L600c\n\t"
        "ldr r3, [r3]\n\t"
        "lsl r1, r3, #10\n\t"
        "ldr r3, =.L6008\n\t"
        "ldr r3, [r3]\n\t"
        "lsl r3, #5\n\t"
        "orr r1, r3\n\t"
        "orr r5, r1\n\t"
        "add r6, #1\n\t"
        "strh r5, [r2]\n\t"
        "cmp r6, #5\n\t"
        "bls 2b\n\t"
        "ldr r3, =gScript_969__0200e004\n\t"
        "ldr r3, [r3]\n\t"
        "ldr r2, =0x50000d2\n\t"
        "orr r3, r1\n\t"
        "strh r3, [r2]\n\t"
        "1:\n\t"
        : "=m"(buf), "=r"(r7_save)
        :
        : "r0", "r1", "r2", "r3", "r5", "r6", "lr", "memory");
}
