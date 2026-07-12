#include "dma.h"

extern unsigned char Func_8015570[];
extern unsigned char Size_60[] asm("0x60");
extern void *Func_8004938(unsigned int size);
extern void free(void *memory);

void HuffStr_Start(const void *src, void *dst)
{
    register const void *savedSrc asm("r8") = src;
    register void *savedDst asm("r10") = dst;
    register unsigned int size asm("r5") = (unsigned int)Size_60;
    register void (*code)(const void *, void *) asm("r6");
    register unsigned int count asm("r2");

    asm volatile("" : "+r"(savedSrc), "+r"(savedDst), "+r"(size));
    code = Func_8004938(size);
    count = 0x84;
    asm volatile("" : "+r"(code), "+r"(count), "+r"(size));
    size >>= 2;
    count <<= 24;
    DMA3_SET(Func_8015570, code, count | size);
    code(savedSrc, savedDst);
    free(code);
}
