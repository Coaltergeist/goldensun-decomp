typedef unsigned char u8;
typedef unsigned int u32;

void Func_80fa1ac(void *mplay, u8 *track)
{
    register u32 mask asm("r2") = 0;
    register u32 flags asm("r3");

    track[0x16] = mask;
    track[0x1a] = mask;
    mask = track[0x18];
    asm volatile (
        "cmp r2, #0\n\t"
        "bne .Lfa1ac_nonzero"
        : "+r" (mask));

    mask = 0xc;
    asm volatile ("" : "+r" (mask));
    asm volatile (
        "b .Lfa1ac_join\n"
        ".Lfa1ac_nonzero:");

    mask = 3;
    asm volatile ("" : "+r" (mask));
    asm volatile (".Lfa1ac_join:");

    flags = track[0];
    flags |= mask;
    track[0] = flags;
}
