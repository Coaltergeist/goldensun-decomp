#include "dma.h"

void *Func_80170c4(void *dst, unsigned int value, int count)
{
    u16 fill;

    if (count > 0) {
        fill = value;
        DMA3_SET(&fill, dst, 0x81000000 | count);
        dst = (u16 *)dst + count;
    }

    return dst;
}
