#include "dma.h"

extern void *galloc_ewram(int slot, unsigned int size);
extern void Func_8090a5c(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3);
extern void Func_80908e0(void);
extern void StartTask(void (*task)(void), int priority);

void Func_8091174(void)
{
    void *memory = galloc_ewram(0x20, 0x2a04);
    unsigned int offset;

    DMA3_CLEAR(memory, 0x2a04);
    DMA3_SET((const void *)(0xa0 << 19), memory, 0x84000070);

    offset = 0xe0;
    offset <<= 1;
    DMA3_SET((const void *)0x05000200, (unsigned char *)memory + offset, 0x84000070);

    offset = 0xe0;
    offset <<= 4;
    Func_8090a5c(0x80 << 9, (unsigned int)memory, (unsigned int)memory + offset, 0);

    {
        register void (*task)(void) asm("r0");
        register int priority asm("r1");

        priority = 0xc8f;
        task = Func_80908e0;
        StartTask(task, priority);
    }
}
