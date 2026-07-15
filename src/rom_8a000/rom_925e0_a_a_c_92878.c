typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

extern u16 atan2(s32 y, s32 x);
extern void WaitFrames(int frames);

void Func_8092878(u8 *a, u8 *b)
{
    register u8 *actor_a asm("r6") = a;
    register u8 *actor_b asm("r5");
    register u16 angle asm("r7");
    register unsigned int opposite asm("r8");
    register int frame asm("r4");

    asm volatile("sub sp, #4" : : : "memory");
    actor_b = b;
    asm volatile("" : "+r"(actor_b));

    if (actor_a == 0 || actor_b == 0)
        goto done;

    {
        u32 raw = atan2(*(s32 *)(actor_b + 0x10) - *(s32 *)(actor_a + 0x10),
                        *(s32 *)(actor_b + 8) - *(s32 *)(actor_a + 8));
        angle = (u16)raw;
    }
    asm volatile(
        "mov r0, #0x80\n\t"
        "lsl r0, #8\n\t"
        "add r0, r7\n\t"
        "mov r8, r0"
        : "=r"(opposite) : "r"(angle) : "r0", "cc");

    frame = 0;
    do {
        int unfinished = 2;
        int delta = (short)(angle - *(u16 *)(actor_a + 6));

        if (delta != 0) {
            if (delta > 0x1000)
                delta = 0x1000;
            if (delta < -0x1000)
                delta = -0x1000;
            *(u16 *)(actor_a + 6) += delta;
        } else {
            unfinished = 1;
        }

        delta = (short)(opposite - *(u16 *)(actor_b + 6));
        if (delta != 0) {
            if (delta > 0x1000)
                delta = 0x1000;
            if (delta < -0x1000)
                delta = -0x1000;
            *(u16 *)(actor_b + 6) += delta;
        } else {
            unfinished--;
        }

        if (unfinished == 0)
            goto done;
        {
            register int frames asm("r0") = 1;
            asm volatile("" : "+r"(frames));
            asm volatile("str r4, [sp]" : : "r"(frame), "r"(frames) : "memory");
            WaitFrames(frames);
        }
        asm volatile("ldr r4, [sp]" : "+r"(frame) : : "memory");
        frame++;
    } while (frame <= 59);
done:
    asm volatile("add sp, #4" : : : "memory");
}
