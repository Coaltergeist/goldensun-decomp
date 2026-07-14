typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed int s32;

extern void Func_8097948_NoArgs(void) asm("Func_8097948");

void Func_80978c4(void)
{
    register u8 *base asm("r5");
    register u16 *angle asm("r6");
    register u32 zero asm("r7");
    register u8 *x asm("r4");
    register u8 *y asm("r0");
    register u8 *z asm("r5");
    register s32 component asm("r3");
    register u32 byte_offset asm("r2");

    asm volatile("ldr r3, =iwram_3001ea8\n\t"
                 "ldr r2, =654\n\t"
                 "ldr r5, [r3]\n\t"
                 "add r6, r5, r2\n\t"
                 "ldrh r0, [r6]\n\t"
                 "sub sp, sp, #12\n\t"
                 "mov r7, #0\n\t"
                 "lsl r0, r0, #16\n\t"
                 "add r1, sp, #8\n\t"
                 "add r2, sp, #4\n\t"
                 "mov r3, sp\n\t"
                 "str r7, [sp, #8]\n\t"
                 "str r7, [sp, #4]\n\t"
                 "str r7, [sp]"
                 : "=r"(base), "=r"(angle), "=r"(zero)
                 : : "r0", "r1", "r2", "r3");
    Func_8097948_NoArgs();

    asm volatile("ldr r3, [sp, #8]" : "=r"(component));
    asm volatile("ldr r2, =651" : "=r"(byte_offset));
    x = base + byte_offset;
    *x = (component >> 18) + 4;
    asm volatile("ldr r3, [sp, #4]" : "=r"(component));
    byte_offset++;
    y = base + byte_offset;
    *y = (component >> 18) + 4;
    asm volatile("ldr r3, [sp]" : "=r"(component));
    byte_offset++;
    z = base + byte_offset;
    *z = (component >> 18) + 4;

    *angle += 4;
    *x &= 0x1f;
    *y &= 0x1f;
    *z &= 0x1f;
    if (*angle >= 360)
        *angle = zero;
    asm volatile("add sp, sp, #12");
}
