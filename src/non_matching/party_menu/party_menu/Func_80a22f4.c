#include "dma.h"

void Func_80a22f4(void) {
    DMA3_COPY16((void *)0x5000200, (void *)0x50001c0, 0x40);
    DMA3_COPY16((void *)0x50001e8, (void *)(0x50001c0 + 0x1c), 4);
}
