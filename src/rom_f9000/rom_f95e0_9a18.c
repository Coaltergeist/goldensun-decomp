typedef unsigned int u32;

u32 *SoundMainBTM(u32 *dst)
{
    register u32 *out asm("r0") = dst;
    register u32 zero1 asm("r1");
    register u32 zero2 asm("r2");
    register u32 zero3 asm("r3");
    register u32 zero4 asm("r4");

    /* The stock m4a clear primitive uses four unrolled block stores and
     * borrows r4, so preserve it in the call-clobbered ip register. */
    asm volatile ("mov r12, r4" : : : "r1", "r2", "r3", "r4");
    zero1 = 0;
    zero2 = 0;
    zero3 = 0;
    zero4 = 0;
    asm volatile ("" : "+r" (zero1));
    asm volatile ("" : "+r" (zero2));
    asm volatile ("" : "+r" (zero3));
    asm volatile ("" : "+r" (zero4));
    asm volatile (
        "stmia %0!, {%1, %2, %3, %4}\n\t"
        "stmia %0!, {%1, %2, %3, %4}\n\t"
        "stmia %0!, {%1, %2, %3, %4}\n\t"
        "stmia %0!, {%1, %2, %3, %4}"
        : "+r" (out)
        : "r" (zero1), "r" (zero2), "r" (zero3), "r" (zero4)
        : "memory");
    asm volatile ("mov r4, r12");
    return out;
}
