typedef unsigned char u8;
typedef unsigned int u32;

void Func_80f9ab4(void *mplay, u8 *track)
{
    register u8 *position asm("r2") = *(u8 **)(track + 0x40);
    register u32 value asm("r3");

    /* ply_port enters here after preparing r2 itself. */
    asm volatile (
        ".global M4aReadNext\n"
        "M4aReadNext:"
        : : "r" (position));
    *(u8 **)(track + 0x40) = position + 1;
    value = *position;
    asm volatile ("" : : "r" (value));

    /* The stock engine tail-branches into the shared pointer validator. */
    asm volatile (
        ".macro bx target\n\t"
        "b M4aValidatePointer\n\t"
        ".endm");
}
