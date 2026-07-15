typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *iwram_3001ecc;

void Func_808f498(void)
{
    register u8 *entry asm("r0");
    register u32 value asm("r2");
    register u32 other asm("r1");
    register volatile u16 *dma asm("r3");
    register volatile u16 *display asm("r4");

    {
        register u8 **stateGlobal asm("r3");
        register u8 *state asm("r0");
        register u8 *indexAddress asm("r3");
        register u32 offset asm("r2");
        register u32 index asm("r2");
        asm volatile("ldr r3, =iwram_3001ecc\n\tldr r2, =0x539"
                     : "=r" (stateGlobal), "=r" (offset));
        state = *stateGlobal;
        indexAddress = state + offset;
        asm volatile("" : "+r" (indexAddress));
        index = *indexAddress;
        entry = state + index * 0x284;
    }

    asm volatile("ldr r3, =0x040000b0\n\tldr r2, =0xc5ff"
                 : "=r" (dma), "=r" (value));
    other = dma[5];
    value &= other;
    dma[5] = value;
    asm volatile("ldr r2, =0x7fff" : "=r" (value));
    other = dma[5];
    value &= other;
    dma[5] = value;

    asm volatile(
        "mov r4, #0x80\n\t"
        "lsl r4, #19\n\t"
        "ldrh r2, [r3, #0xa]\n\t"
        "ldr r1, .LFunc_808f498_display_bits\n\t"
        "ldrh r2, [r4]\n\t"
        "orr r2, r1\n\t"
        "strh r2, [r4]"
        : "=r" (display), "+r" (dma), "=r" (value), "=r" (other)
        : : "memory");
    asm volatile(
        "ldrh r1, [r0]\n\t"
        "ldr r2, =0x04000048\n\t"
        "strh r1, [r2]\n\t"
        "add r0, #2\n\t"
        "ldrh r1, [r0]\n\t"
        "add r2, #2\n\t"
        "strh r1, [r2]"
        : "+r" (entry), "=r" (other), "=r" (value)
        : : "memory");
    asm volatile(
        "add r0, #2\n\t"
        "ldrh r2, [r0]\n\t"
        "ldr r1, =0x04000040\n\t"
        "strh r2, [r1]\n\t"
        "add r0, #2\n\t"
        "ldrh r4, [r0]\n\t"
        "ldr r2, =0x04000042\n\t"
        "strh r4, [r2]\n\t"
        "mov r4, #0xa0\n\t"
        "add r2, #2\n\t"
        "strh r4, [r2]\n\t"
        "add r2, #2\n\t"
        "strh r4, [r2]"
        : "+r" (entry), "=r" (other), "=r" (value), "+r" (display)
        : : "memory");
    asm volatile(
        "b 1f\n\t"
        ".align 2\n\t"
        ".LFunc_808f498_display_bits:\n\t"
        ".word 0x6000\n\t"
        ".pool\n"
        "1:"
        : : : "memory");
    asm volatile(
        "add r0, #2\n\t"
        "ldr r2, =0xa6600001\n\t"
        "stmia r3!, {r0, r1, r2}\n\t"
        "sub r3, #0xc"
        : "+r" (dma), "+r" (entry), "+r" (other), "+r" (value)
        : : "memory");
}
