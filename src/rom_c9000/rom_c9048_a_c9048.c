typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef volatile u16 vu16;

struct DmaTransfer {
    const void *src;
    void *dest;
    u32 control;
};

struct DmaQueue {
    u16 count;
    struct DmaTransfer tasks[32];
};

extern struct DmaQueue gDMATaskCount;
extern void WaitFrames(u32 nframes);

void Func_80c9048(void)
{
    u32 *task;
    register struct DmaQueue *queue asm("r1");
    register vu16 *ime asm("r0");
    register u32 imeVal asm("r3");
    register u32 savedIme asm("r4");

    asm volatile(
        "ldr r2, 1f+24\n\t"
        "ldr r3, 1f+0\n\t"
        "strh r3, [r2, #0]\n\t"
        "ldr r3, 1f+4\n\t"
        "add r2, r2, #2\n\t"
        "strh r3, [r2, #0]\n\t"
        "ldr r1, 1f+8\n\t"
        "ldr r3, 1f+28\n\t"
        "ldr r2, 1f+12\n\t"
        "strh r1, [r3, #0]\n\t"
        "add r3, r3, #4\n\t"
        "strh r2, [r3, #0]\n\t"
        "sub r3, r3, #2\n\t"
        "strh r1, [r3, #0]\n\t"
        "add r3, r3, #4\n\t"
        "strh r2, [r3, #0]\n\t"
        "ldr r2, 1f+32\n\t"
        "ldr r3, 1f+16\n\t"
        "ldr r1, 1f+36\n\t"
        "strh r3, [r2, #0]\n\t"
        "ldr r3, 1f+20\n\t"
        "add r2, r2, #2\n\t"
        "strh r3, [r2, #0]\n\t"
        "ldr r0, 1f+40\n\t"
        "ldrh r3, [r0, #0]\n\t"
        "b 2f\n\t"
        ".align 2\n"
        "1:\n\t"
        ".word 0\n\t"
        ".word 0x100e\n\t"
        ".word 0xf0\n\t"
        ".word 0x1088\n\t"
        ".word 0x3537\n\t"
        ".word 0x3f21\n\t"
        ".word 0x4000050\n\t"
        ".word 0x4000040\n\t"
        ".word 0x4000048\n\t"
        ".word gDMATaskCount\n\t"
        ".word 0x4000208\n"
        "2:"
        : "=r"(queue), "=r"(ime), "=r"(imeVal)
        :
        : "r2", "memory");

    {
        asm volatile("add r4, r3, #0" : "=r"(savedIme) : "r"(imeVal));
        *ime = (u32)ime;

        {
            register s32 count asm("r2") = queue->count;
            register u32 offset asm("r3");
            if (count >= 32)
                goto skip_enqueue;
            offset = count * 12;
            asm volatile(
                "add r2, #1\n\t"
                "add r3, r3, r1\n\t"
                "strh r2, [r1, #0]"
                : "+r"(count), "+r"(offset)
                : "r"(queue)
                : "memory");
            task = (u32 *)offset;
        }
        task = (u32 *)((u8 *)task + 4);
        *task++ = 0x7741;
        *task++ = 0x80 << 19;
        *task = 0x80 << 10;
    skip_enqueue:;
    }

    *ime = savedIme;

    WaitFrames(1);
}
