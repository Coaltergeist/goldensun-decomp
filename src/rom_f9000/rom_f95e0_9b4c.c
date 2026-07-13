typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

void ply_tempo(u8 *mplay, u8 *track)
{
    register u8 *mplay_reg asm("r0") = mplay;
    register u8 *track_reg asm("r1") = track;
    register u32 product asm("r3");
    register u32 tempo asm("r2");

    asm volatile (
        "mov r12, lr\n\t"
        "bl Func_80f9ab4"
        : "=r" (product), "+r" (track_reg)
        : "r" (mplay_reg)
        : "r2");
    product <<= 1;
    *(volatile u16 *)(mplay_reg + 0x1c) = product;
    tempo = *(volatile u16 *)(mplay_reg + 0x1e);
    product *= tempo;
    product >>= 8;
    *(volatile u16 *)(mplay_reg + 0x20) = product;

    asm volatile (".macro bx target\n\t.hword 0x4760\n\t.endm");
}
