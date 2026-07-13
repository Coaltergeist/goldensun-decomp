typedef unsigned char u8;
typedef unsigned int u32;

void ply_voice(u8 *mplay, u8 *track)
{
    register u8 *mplay_reg asm("r0") = mplay;
    register u8 *track_reg asm("r1") = track;
    register u32 source asm("r2");
    register u32 value asm("r3");

    asm volatile ("mov r12, lr");
    source = *(u32 *)(track_reg + 0x40);
    value = *(u8 *)source;
    source++;
    *(u32 *)(track_reg + 0x40) = source;
    source = value << 1;
    source += value;
    source <<= 2;
    asm volatile ("" : "+r" (source));
    value = *(u32 *)(mplay_reg + 0x30);
    source += value;

    value = *(u32 *)source;
    asm volatile (
        /* BL M4aValidatePointer across the split object boundary. */
        ".hword 0xf7ff, 0xff86"
        : "+r" (value)
        : "r" (source), "r" (track_reg));
    *(u32 *)(track_reg + 0x24) = value;
    value = *(u32 *)(source + 4);
    asm volatile (
        ".hword 0xf7ff, 0xff82"
        : "+r" (value)
        : "r" (source), "r" (track_reg));
    *(u32 *)(track_reg + 0x28) = value;
    value = *(u32 *)(source + 8);
    asm volatile (
        ".hword 0xf7ff, 0xff7e"
        : "+r" (value)
        : "r" (source), "r" (track_reg));
    *(u32 *)(track_reg + 0x2c) = value;

    asm volatile (".macro bx target\n\t.hword 0x4760\n\t.endm");
}
