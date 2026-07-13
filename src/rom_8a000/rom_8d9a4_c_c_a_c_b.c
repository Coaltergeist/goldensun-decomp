#include "dma.h"

extern void *galloc_ewram(int slot, unsigned int size);

void *AllocGlobal1F(void)
{
    void *memory = galloc_ewram(0x1f, 0xa8 << 3);

    DMA3_CLEAR(memory, 0xa8 << 3);
    return memory;
}
