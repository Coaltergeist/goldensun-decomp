/* unknown/sub_80c9048.c -- consolidated TU. */
#include "nonmatching.h"
#include "dma0.h"

INCLUDE_ASM("asm/render/window_effect/Func_80c9048.s");
INCLUDE_ASM("asm/render/window_effect/Func_80c90e4.s");
INCLUDE_ASM("asm/render/window_effect/Func_80c9138.s");

extern unsigned char gBuffer[65536];

void Func_80c91a4(void) {
    volatile unsigned short *reg = (volatile unsigned short *)0x040000B0;
    reg[5] = reg[5] & 0xc5ff;
    reg[5] = reg[5] & 0x7fff;
    {
        unsigned short scratch = reg[5];
        (void)scratch;
        DMA0_SET((const void *)(gBuffer), (void *)(0x04000040), 0xa2600001);
    }
}
