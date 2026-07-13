typedef unsigned char u8;
typedef unsigned int u32;

void ply_pend(void *mplay, u8 *track)
{
    register u32 count asm("r2") = track[2];
    register u8 *slot asm("r3");

    /* Keep the stock leaf ABI: a C branch would make GCC save lr. */
    asm volatile (
        "cmp r2, #0\n\t"
        "beq .Lply_pend_end"
        : "+r" (count)
        : "r" (track));

    count--;
    track[2] = count;
    count <<= 2;
    slot = track + count;
    count = *(u32 *)(slot + 0x44);
    *(u32 *)(track + 0x40) = count;

    asm volatile (".Lply_pend_end:");
}
