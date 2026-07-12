#include "dma.h"

extern void *galloc_ewram(int slot, unsigned int size);
extern void StartTask(void (*task)(void), int priority);
extern void Func_801d94c(void);

void Func_801d980(void)
{
    void *memory = galloc_ewram(0x14, 0xc5 << 3);
    register void (*task)(void) asm("r0");
    register int priority asm("r1");

    DMA3_CLEAR(memory, 0xc5 << 3);
    priority = 0xc8;
    priority <<= 4;
    asm volatile("" : "+r"(priority));
    task = Func_801d94c;
    StartTask(task, priority);
}
