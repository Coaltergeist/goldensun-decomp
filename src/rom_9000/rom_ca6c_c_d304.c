#include "dma.h"

extern unsigned char Func_800a494[];
extern unsigned char Size_4e8[] asm("0x4e8");
extern void *Func_8004938(unsigned int size);
extern void free(void *memory);

void Func_800d304(void)
{
    register unsigned int size asm("r5") = (unsigned int)Size_4e8;
    register void (*code)(void) asm("r6");
    register unsigned int count asm("r2");

    asm volatile("" : "+r"(size));
    code = Func_8004938(size);
    count = 0x84;
    asm volatile("" : "+r"(code), "+r"(count), "+r"(size));
    size >>= 2;
    count <<= 24;
    DMA3_SET(Func_800a494, code, count | size);
    code();
    free(code);
}
