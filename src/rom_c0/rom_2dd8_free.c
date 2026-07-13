typedef unsigned int u32;

void gfree(u32 index)
{
    register u32 offset asm("r0") = index;
    register u32 *ptrs asm("r4");
    register u32 address asm("r1");
    register u32 bucket asm("r3");

    asm("ldr %0, Free_GPtrsLiteral" : "=r"(ptrs));
    offset <<= 2;
    address = *(u32 *)(offset + (u32)ptrs);
    /* Keep GCC 2.96's shift flags live so it does not add cmp/prologue code. */
    asm volatile(
        "lsr %0, %1, #22\n\t"
        "beq .Lgfree_done"
        : "=r"(bucket)
        : "r"(address));
    {
        register u32 zero asm("r2") = 0;

        *(u32 *)(offset + (u32)ptrs) = zero;
        offset = 4;
        bucket &= offset;
        *(u32 *)(bucket + (u32)ptrs) = address;
    }
    asm volatile(".Lgfree_done:");
}

void free(void *memory)
{
    register u32 address asm("r0") = (u32)memory;
    register u32 *ptrs asm("r4");

    asm("ldr %0, Free_GPtrsLiteral" : "=r"(ptrs));
    {
        register u32 mask asm("r1") = 4;
        register u32 offset asm("r2") = address >> 22;

        asm("" : "+r"(ptrs), "+r"(mask), "+r"(offset), "+r"(address));
        offset &= mask;
        *(u32 *)(offset + (u32)ptrs) = address;
    }
}

asm(".align 2, 0\n"
    ".global Free_GPtrsLiteral\n"
    "Free_GPtrsLiteral:\n"
    ".word gPtrs");
