#include "dma.h"

extern void (*iwram_30000c4)(void);

void Func_80bd7a4(void)
{
    register vu32 *dma asm("r3");
    register unsigned int source asm("r0");
    register unsigned int destination asm("r1");
    register unsigned int control asm("r2");
    register void (*callback)(void) asm("r0");

    control = 0x84;
    asm volatile ("" : : "r" (control));
    dma = &REG_DMA3SAD;
    asm volatile ("" : : "r" (dma));
    source = 0;
    asm volatile ("" : : "r" (source));
    destination = 0;
    asm volatile ("" : : "r" (destination));
    control <<= 24;
    asm volatile (
        "stmia\tr3!, {r0, r1, r2}\n\t"
        "sub\tr3, #0xc"
        : "+r" (dma), "+r" (source), "+r" (control)
        : "r" (destination)
        : "memory"
    );

    control = 0x84;
    source = 0;
    control <<= 24;
    asm volatile (
        "stmia\tr3!, {r0, r1, r2}\n\t"
        "sub\tr3, #0xc"
        : "+r" (dma), "+r" (source), "+r" (control)
        : "r" (destination)
        : "memory"
    );

    control = 0x84;
    source = 0;
    control <<= 24;
    asm volatile (
        "stmia\tr3!, {r0, r1, r2}\n\t"
        "sub\tr3, #0xc"
        : "+r" (dma), "+r" (source), "+r" (control)
        : "r" (destination)
        : "memory"
    );

    callback = iwram_30000c4;
    callback();
}
