#include "dma.h"

void Func_80251d4(u32 src, u32 dst)
{
    register u32 original asm("r3") = src;
    register u32 mask asm("r0") = 0x3ff;
    register u32 base asm("r2");

    asm volatile("" : "+r"(original));
    asm volatile("" : "+r"(mask));
    base = 0xc0;
    asm volatile("" : "+r"(base));

    dst &= mask;
    mask &= original;
    base <<= 19;
    mask <<= 5;
    dst <<= 5;
    mask += base;
    dst += base;

    DMA3_COPY((void *)mask, (void *)dst, 0x20);
}
