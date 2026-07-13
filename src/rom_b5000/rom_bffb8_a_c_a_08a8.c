#include "dma.h"

extern void *galloc_ewram(int arena, unsigned int size);
extern unsigned char *iwram_3001f00;

void Func_80c08a8(void)
{
    void *memory = galloc_ewram(10, 0x2a0);
    register unsigned char *state asm("r5") = iwram_3001f00;

    DMA3_CLEAR(memory, 0x2a0);
    *(unsigned int *)(state + 8) = 0;
}
