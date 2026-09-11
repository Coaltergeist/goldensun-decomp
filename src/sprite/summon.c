/* sprite/summon.c -- consolidated TU. */
#include "nonmatching.h"
#include "dma0.h"

INCLUDE_ASM("asm/sprite/summon/CreateSummonSprite.s");

void Func_80dbb98(void) {}

extern unsigned char iwram_3001eec[];

void Func_80dbb9c(void) {
    unsigned int r4 = *(unsigned int *)iwram_3001eec;
    volatile unsigned short *reg = (volatile unsigned short *)0x040000B0;
    reg[5] = reg[5] & 0xc5ff;
    reg[5] = reg[5] & 0x7fff;
    {
        unsigned short scratch = reg[5];
        (void)scratch;
        DMA0_SET((const void *)(r4 + (0xd3 << 7)), (void *)(0x04000028), 0xa6600001);
    }
}
