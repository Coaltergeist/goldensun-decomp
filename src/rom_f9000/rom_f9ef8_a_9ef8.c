typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *SOUND_INFO_PTR;
extern void Func_80f9ee8(int value);

void TrackStop(void *player, char *track)
{
    register char *trackReg asm("r5") = track;
    register u32 zero asm("r6");
    register u8 *channel asm("r4");

    asm volatile (
        "ldrb r1, [%0]\n"
        "mov r0, #0x80\n"
        "tst r0, r1\n"
        "beq .LTrackStopDone"
        : : "r" (trackReg) : "r0", "r1", "cc");

    channel = *(u8 **)(trackReg + 0x20);
    if (channel != 0) {
        zero = 0;
        do {
            asm volatile (
                "ldrb r0, [%0]\n"
                "cmp r0, #0\n"
                "beq .LTrackStopStatusZero"
                : : "r" (channel) : "r0", "cc");
            asm volatile (
                "ldrb r0, [%0, #1]\n"
                "mov r3, #7\n"
                "and r0, r3\n"
                "beq .LTrackStopNoCgb"
                : : "r" (channel) : "r0", "r3", "cc");
            {
                register int index asm("r0");
                asm volatile (
                    "ldr r3, =SOUND_INFO_PTR\n"
                    "ldr r3, [r3]\n"
                    "ldr r3, [r3, #0x2c]"
                    : "+r" (index) : : "r3");
                Func_80f9ee8(index);
            }
            asm volatile (".LTrackStopNoCgb:");
            channel[0] = zero;
            asm volatile (".LTrackStopStatusZero:");
            *(u32 *)(channel + 0x2c) = zero;
            channel = *(u8 **)(channel + 0x34);
        } while (channel != 0);
    }

    *(u32 *)(trackReg + 0x20) = (u32)channel;
    asm volatile (".LTrackStopDone:");
}
