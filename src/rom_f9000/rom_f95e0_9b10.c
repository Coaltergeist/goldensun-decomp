typedef unsigned char u8;
typedef unsigned int u32;

void ply_rept(void *mplay, u8 *track)
{
    register void *mplay_reg asm("r0") = mplay;
    register u8 *track_reg asm("r1") = track;
    register u8 *position asm("r2");
    register u32 value asm("r3");

    asm volatile (".hword 0xb500");
    position = *(u8 **)(track_reg + 0x40);
    value = *position;
    asm volatile (
        "cmp r3, #0\n\t"
        "bne .Lply_rept_count"
        : "+r" (value));
    position++;
    *(u8 **)(track_reg + 0x40) = position;
    asm volatile (".hword 0xe7d0");

    asm volatile (".Lply_rept_count:");
    value = track_reg[3];
    value++;
    track_reg[3] = value;
    asm volatile (
        "mov r12, r3\n\t"
        "bl Func_80f9ab4\n\t"
        "cmp r12, r3\n\t"
        "bcs .Lply_rept_done\n\t"
        ".hword 0xe7c7\n"
        ".Lply_rept_done:"
        : "+r" (value), "+r" (track_reg)
        : "r" (mplay_reg)
        : "r2");
    value = 0;
    track_reg[3] = value;
    asm volatile ("" : : "r" (value), "r" (track_reg) : "memory");
    position += 5;
    *(u8 **)(track_reg + 0x40) = position;

    asm volatile (
        ".macro bx target\n\t"
        ".hword 0xbc01\n\t"
        ".hword 0x4700\n\t"
        ".endm");
}
