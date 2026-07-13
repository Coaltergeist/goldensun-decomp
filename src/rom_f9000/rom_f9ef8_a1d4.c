typedef unsigned char u8;
typedef unsigned int u32;

void MP2K_event_lfos(void *mplay, u8 *track)
{
    register void *mplay_reg asm("r0") = mplay;
    register u8 *track_reg asm("r1") = track;
    register u32 value asm("r3");

    asm volatile (
        "mov r12, lr\n\t"
        "bl Func_80fa1c8"
        : "=r" (value), "+r" (track_reg)
        : "r" (mplay_reg)
        : "r2");
    track_reg[0x19] = value;
    asm volatile (
        "cmp r3, #0\n\t"
        "bne .Lmp2k_event_lfos_end\n\t"
        "bl Func_80fa1ac\n"
        ".Lmp2k_event_lfos_end:"
        :
        : "r" (value), "r" (mplay_reg), "r" (track_reg)
        : "r2");

    asm volatile (".macro bx target\n\t.hword 0x4760\n\t.endm");
}
