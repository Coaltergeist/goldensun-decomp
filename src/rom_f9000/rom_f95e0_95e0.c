typedef unsigned int u32;

u32 umul3232H32(u32 left, u32 right)
{
    register u32 left_reg asm("r0") = left;
    register u32 right_reg asm("r1") = right;
    register u32 result asm("r0");

    /* This stock m4a primitive deliberately crosses from Thumb to ARM for
     * UMULL, which Thumb-1 C code cannot express directly. */
    asm volatile (
        "adr r2, .Lumul3232H32_arm\n\t"
        "bx r2\n\t"
        ".align 2, 0\n\t"
        ".arm\n"
        ".Lumul3232H32_arm:\n\t"
        "umull r2, r3, r0, r1\n\t"
        "add r0, r3, #0\n\t"
        "bx lr\n\t"
        ".thumb\n\t"
        ".macro bx target\n\t"
        ".endm"
        : "=r" (result)
        : "r" (left_reg), "r" (right_reg)
        : "r2", "r3");
    return result;
}
