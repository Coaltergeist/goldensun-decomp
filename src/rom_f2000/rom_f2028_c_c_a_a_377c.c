#include "dma.h"

extern void *galloc_ewram(int slot, unsigned int size);
extern void Func_80f3078(int, unsigned char *, unsigned char *, int);
extern void StartTask(void (*task)(void), int priority);
extern void Func_80f2f10(void);

void Func_80f377c(void)
{
    void *memory = galloc_ewram(0x20, 0x3004);
    register void (*task)(void) asm("r0");
    register int priority asm("r1");

    DMA3_CLEAR(memory, 0x3004);
    DMA3_COPY((void *)0x05000000, memory, 0x200);
    DMA3_COPY((void *)0x05000200, (unsigned char *)memory + 0x200, 0x200);

    {
        register int arg0 asm("r0");
        register unsigned char *arg1 asm("r1");
        register unsigned char *arg2 asm("r2");
        register int arg3 asm("r3");

        arg3 = 0x80;
        asm volatile("" : "+r"(arg3));
        arg3 <<= 5;
        asm volatile("" : "+r"(arg3));
        arg0 = 0x80;
        asm volatile("" : "+r"(arg0), "+r"(arg3));
        arg2 = (unsigned char *)memory + arg3;
        asm volatile("" : "+r"(arg0), "+r"(arg2));
        arg1 = memory;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg3 = 0;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
        arg0 <<= 9;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
        Func_80f3078(arg0, arg1, arg2, arg3);
    }

    priority = 0xc8;
    priority <<= 4;
    asm volatile("" : "+r"(priority));
    task = Func_80f2f10;
    StartTask(task, priority);
}
