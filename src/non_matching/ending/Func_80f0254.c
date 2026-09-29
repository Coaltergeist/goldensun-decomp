#include "dma.h"

void Func_80f0254(unsigned int arg0)
{
    unsigned int ctrl;
    unsigned int src;
    unsigned int dst;

    if (arg0 == 0) {
        ctrl = 0x1010101;
        src = 0xc0 << 19;
        dst = 0xa0 << 19;
    } else {
        ctrl = 0x81818181;
        src = 0x6008000;
        dst = 0x5000100;
    }

    {
        unsigned int buf = ctrl;
        DMA3_COPY(&buf, src, 0x85001e00 & 0xffffff);
    }
    {
        unsigned int buf = 0;
        DMA3_COPY(&buf, dst, 0x85000040 & 0xffffff);
    }
}
