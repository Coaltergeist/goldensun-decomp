typedef unsigned char u8;
typedef unsigned int u32;

void ply_lfodl(void *mplay, u8 *track)
{
    register void *mplay_reg asm("r0") = mplay;
    register u8 *track_reg asm("r1") = track;
    register u32 value asm("r3");

    asm volatile (
        "mov r12, lr\n\t"
        "bl Func_80f9ab4"
        : "=r" (value), "+r" (track_reg)
        : "r" (mplay_reg)
        : "r2");
    track_reg[0x1b] = value;

    asm volatile (".macro bx target\n\t.hword 0x4760\n\t.endm");
}
