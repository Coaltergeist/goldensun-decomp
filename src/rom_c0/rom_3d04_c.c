#include "dma.h"

extern unsigned char Size_e0[] asm("0xe0");
extern unsigned char Func_8001dc8[];
extern void *Func_8004938(unsigned int size);
extern void free(void *memory);

void Func_8003e10(void (*callback)(void))
{
    register void (*savedCallback)(void) asm("r8") = callback;
    register unsigned int size asm("r5") = (unsigned int)Size_e0;
    register void (*code)(void (*)(void)) asm("r6");
    register unsigned int count asm("r2");

    asm volatile("" : "+r"(savedCallback), "+r"(size));
    code = Func_8004938(size);
    count = 0x84;
    asm volatile("" : "+r"(code), "+r"(count), "+r"(size));
    size >>= 2;
    count <<= 24;
    DMA3_SET(Func_8001dc8, code, count | size);
    code(savedCallback);
    free(code);
}
