#include "gba/types.h"

extern u32 ewram_20023ac;
extern u8 ewram_2002220[];
extern u16 ewram_2002238;
extern u8 ewram_20023a4;

s32 Func_8006408(u32 source)
{
    register u32 *sourceSlot asm("r5");
    register u32 currentSource asm("r4");
    register u8 *state asm("r6");
    asm volatile("ldr r5, =ewram_20023ac\n\tldr r4, [r5]\n\tldr r6, =ewram_2002220"
                 : "=r"(sourceSlot), "=r"(currentSource), "=r"(state));

    if (currentSource != 0)
        return -1;

    {
        register vu16 *ime asm("r2");
        register u32 previousIme asm("r1");

        asm volatile(
            "ldr r2, =0x04000208\n\tldrh\tr1, [r2]\n\t"
            "strh\tr2, [r2]"
            : "=r"(previousIme), "=r"(ime)
            :
            : "memory");
        state[1] = 0x81;
        {
            register u16 *dst asm("r3");
            asm volatile("ldr r3, =ewram_2002238\n\tstrh r4, [r3]"
                         : "=r"(dst)
                         : "r"(currentSource)
                         : "memory");
        }
        state[0] = 1;
        *sourceSlot = source;
        asm volatile("ldr r3, =ewram_20023a4\n\tldr r0, .Lzero8006408\n\tstrb r0, [r3]"
                     :
                     :
                     : "r0", "r3", "memory");
        *ime = previousIme;
    }
    return 0;
}

asm(".align 2, 0\n.Lzero8006408: .word 0\n.size Func_8006408, .-Func_8006408");
