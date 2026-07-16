typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern volatile u32 iwram_3001e40;
extern u32 __Random(void);
extern int _divsi3_RAM(int numerator, int denominator);
extern void OvlFunc_968_2008118(s32 x, s32 y, s32 z, s32 velocityX, s32 velocityY, s32 velocityZ, u32 flags, void *spawn);

void OvlFunc_968_200c520(s32 arg0in, s32 arg1in)
{
    register s32 a0 asm("r0") = arg0in;
    register s32 a1 asm("r1") = arg1in;
    register s32 baseX asm("r7");
    register s32 baseY asm("r10");
    register s32 ptrReg asm("r8");

    asm volatile(
        "ldr r3, =0xb333\n\t"
        "sub sp, #0x38\n\t"
        "add r2, sp, #0x10\n\t"
        "str r3, [r2, #8]\n\t"
        "str r3, [r2, #0xc]\n\t"
        "mov r8, r2\n\t"
        "mov r7, %3\n\t"
        "mov r10, %4\n\t"
        "bl __Random\n\t"
        "mov r3, #0xf8\n\t"
        "lsl r0, r0, #12\n\t"
        "lsl r3, r3, #8\n\t"
        "lsr r0, r0, #16\n\t"
        "add r0, r0, r3\n\t"
        "mov r2, r8\n\t"
        "ldr r3, =iwram_3001e40\n\t"
        "strh r0, [r2, #0x22]\n\t"
        "ldr r6, [r3]\n\t"
        "mov r3, #3\n\t"
        "and r6, r3\n\t"
        "cmp r6, #0\n\t"
        "bne 91f\n\t"
        "bl __Random\n\t"
        "lsl r0, r0, #1\n\t"
        "lsr r5, r0, #16\n\t"
        "cmp r5, #0\n\t"
        "beq 92f\n\t"
        "bl __Random\n\t"
        "mov r5, r0\n\t"
        "bl __Random\n\t"
        "mov r3, r0\n\t"
        "lsl r0, r3, #2\n\t"
        "add r0, r0, r3\n\t"
        "lsr r0, r0, #16\n\t"
        "mov r3, #0xe0\n\t"
        "lsl r3, r3, #11\n\t"
        "lsl r0, r0, #16\n\t"
        "add r0, r0, r3\n\t"
        "mov r1, #0xa\n\t"
        "bl _divsi3_RAM\n\t"
        "lsl r5, r5, #1\n\t"
        "mov r3, r10\n\t"
        "lsr r5, r5, #16\n\t"
        "lsl r5, r5, #4\n\t"
        "lsl r2, r3, #19\n\t"
        "mov r3, #0x88\n\t"
        "lsl r3, r3, #16\n\t"
        "add r5, r7, r5\n\t"
        "lsl r5, r5, #16\n\t"
        "str r3, [sp, #8]\n\t"
        "mov r3, r8\n\t"
        "str r0, [sp, #4]\n\t"
        "str r3, [sp, #0xc]\n\t"
        "mov r0, r5\n\t"
        "mov r1, #0\n\t"
        "mov r3, #0\n\t"
        "str r6, [sp]\n\t"
        "bl OvlFunc_968_2008118\n\t"
        "b 91f\n\t"
        "92:\n\t"
        "bl __Random\n\t"
        "mov r3, r0\n\t"
        "lsl r0, r3, #4\n\t"
        "add r0, r0, r3\n\t"
        "ldr r3, =0xfffc0000\n\t"
        "lsl r2, r7, #19\n\t"
        "add r2, r2, r3\n\t"
        "mov r3, #0x88\n\t"
        "lsl r3, r3, #16\n\t"
        "lsr r0, r0, #16\n\t"
        "add r0, r7, r0\n\t"
        "str r3, [sp, #8]\n\t"
        "mov r3, r8\n\t"
        "str r3, [sp, #0xc]\n\t"
        "lsl r0, r0, #16\n\t"
        "mov r1, #0\n\t"
        "mov r3, #0\n\t"
        "str r5, [sp]\n\t"
        "str r5, [sp, #4]\n\t"
        "bl OvlFunc_968_2008118\n\t"
        "91:\n\t"
        "add sp, #0x38\n\t"
        : "=r"(baseX), "=r"(baseY), "=r"(ptrReg)
        : "r"(a0), "r"(a1)
        : "r0", "r1", "r2", "r3", "r5", "r6", "lr", "cc", "memory"
    );
}
