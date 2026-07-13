typedef unsigned char u8;
typedef unsigned int u32;

void MPlayJumpTableCopy(u32 *dst)
{
    register u32 *out asm("r0") = dst;
    register int count asm("r1");
    register u32 *source asm("r2");
    register u32 value asm("r3");

    asm volatile (
        "mov r12, lr\n\t"
        "mov r1, #0x24\n\t"
        "ldr r2, .LM4aJumpTableLiteral\n"
        ".LMPlayJumpTableCopy_loop:"
        : "=r" (count), "=r" (source)
        : "r" (out));
    value = *source;
    asm volatile (
        "bl .LM4aValidatePointerLocal"
        : "+r" (value)
        : "r" (source), "r" (out), "r" (count));
    *out++ = value;
    source++;
    asm volatile (
        "sub r1, #1\n\t"
        "bgt .LMPlayJumpTableCopy_loop"
        : "+r" (count), "+r" (source), "+r" (out)
        : "r" (value));

    asm volatile (".macro bx target\n\t.hword 0x4760\n\t.endm");
}

void Func_80f9a98(void)
{
    register u8 *source asm("r2");
    register u32 value asm("r3");

    asm volatile (".purgem bx");
    value = *source;
    asm volatile (
        ".global M4aValidatePointer\n"
        "M4aValidatePointer:\n\t"
        ".LM4aValidatePointerLocal:\n\t"
        ".hword 0xb401\n\t"
        "lsr r0, r2, #25\n\t"
        "bne .LM4aValidatePointer_end\n\t"
        "ldr r0, .LM4aJumpTableLiteral\n\t"
        "cmp r2, r0\n\t"
        "bcc .LM4aValidatePointer_invalid\n\t"
        "lsr r0, r2, #14\n\t"
        "beq .LM4aValidatePointer_end\n"
        ".LM4aValidatePointer_invalid:"
        : "+r" (value)
        : "r" (source));
    value = 0;
    asm volatile ("" : "+r" (value));
    asm volatile (
        ".LM4aValidatePointer_end:\n\t"
        ".hword 0xbc01\n\t"
        ".macro bx target\n\t"
        ".hword 0x4770\n\t"
        ".align 2, 0\n"
        ".LM4aJumpTableLiteral:\n\t"
        ".word M4aJumpTableSource\n\t"
        ".endm");
}
