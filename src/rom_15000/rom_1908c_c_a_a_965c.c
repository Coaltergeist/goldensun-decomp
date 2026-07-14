typedef unsigned short u16;
typedef unsigned int u32;

extern unsigned char *iwram_3001e8c;
extern void BufferString(u32 id, int mode);

u32 Func_801965c(u32 id, u16 *argument, u32 size_argument)
{
    register unsigned char *base asm("r6") = iwram_3001e8c;
    register u32 size asm("r5") = size_argument;
    register u16 *dst asm("r7");
    register u16 *src asm("r2") = (u16 *)(base + 0x12b2);
    register u32 index asm("r0");
    register u32 loop_offset asm("r4");
    register u32 final_offset asm("r1");
    register u32 value asm("r3");

    __asm__ volatile ("mov r3, #0\n\tmov %0, %2\n\tstrh r3, [%1]"
                      : "=r" (dst) : "r" (src), "r" (argument) : "r3", "memory");
    BufferString(id, 1);
    __asm__ volatile (
        "sub r5, #1\n\t"
        "mov r0, #0\n\t"
        "cmp r0, r5\n\t"
        "bcs 2f\n\t"
        "mov r2, #0xeb\n\t"
        "lsl r2, r2, #4\n\t"
        "ldrh r3, [r6, r2]\n\t"
        "strh r3, [r7]\n\t"
        "lsl r3, r3, #16\n\t"
        "cmp r3, #0\n\t"
        "beq 2f\n\t"
        "mov r12, r5\n\t"
        "add r2, r6, r2\n\t"
        "mov r4, #0\n"
        "1:\n\t"
        "add r0, #1\n\t"
        "add r4, #2\n\t"
        "cmp r0, r12\n\t"
        "bcs 3f\n\t"
        "add r2, #2\n\t"
        "ldrh r3, [r2]\n\t"
        "mov r1, r4\n\t"
        "strh r3, [r1, r7]\n\t"
        "lsl r3, r3, #16\n\t"
        "cmp r3, #0\n\t"
        "bne 1b\n\t"
        "b 4f\n"
        "2:\n\t"
        "mov r1, #0\n\t"
        "b 4f\n"
        "3:\n\t"
        "lsl r1, r0, #1\n"
        "4:"
        : "=r" (final_offset), "=r" (index)
        : "r" (base), "r" (dst), "r" (size)
        : "r2", "r3", "r4", "r12", "cc", "memory");
    *(u16 *)(final_offset + (u32)dst) = 0;
    return index;
}
