typedef unsigned char u8;
typedef unsigned int u32;

void ply_modt(void *mplay, u8 *track)
{
    register void *mplay_reg asm("r0") = mplay;
    register u8 *track_reg asm("r1") = track;
    register u32 value asm("r3");
    register u32 current asm("r0");
    register u32 flags asm("r3");
    register u32 mask asm("r2");

    asm volatile (
        "mov r12, lr\n\t"
        "bl Func_80f9ab4"
        : "=r" (value), "+r" (track_reg)
        : "r" (mplay_reg)
        : "r2");
    current = track_reg[0x18];
    /* Keep the stock frameless handler around its non-interwork return. */
    asm volatile (
        "cmp r0, r3\n\t"
        "beq .Lply_modt_end"
        : "+r" (current)
        : "r" (value));
    track_reg[0x18] = value;
    flags = track_reg[0];
    mask = 0xf;
    flags |= mask;
    track_reg[0] = flags;
    asm volatile (".Lply_modt_end:");

    asm volatile (".macro bx target\n\t.hword 0x4760\n\t.endm");
}
