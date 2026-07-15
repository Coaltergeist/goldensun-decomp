typedef unsigned char u8;

extern void RealClearChain(void *channel);

void ply_fine(void *player, u8 *track)
{
    register u8 *saved_track asm("r5") = track;
    register u8 *channel asm("r4") = *(u8 **)(saved_track + 0x20);

    while (channel != 0) {
        asm volatile("ldrb r1, [r4]\n\t"
                     "mov r0, #199\n\t"
                     "tst r0, r1\n\t"
                     "beq 1f\n\t"
                     "mov r0, #64\n\t"
                     "orr r1, r1, r0\n\t"
                     "strb r1, [r4]\n"
                     "1:"
                     : : "r"(channel) : "r0", "r1", "memory");
        RealClearChain(channel);
        channel = *(u8 **)(channel + 0x34);
    }
    *saved_track = 0;
}
