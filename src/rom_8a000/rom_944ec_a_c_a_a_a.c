#include "dma.h"

extern void *galloc_iwram(int slot, unsigned int size);
extern void gfree(int slot);
extern void StartTask(void (*task)(void), int priority);
extern void StopTask(void (*task)(void));
extern void WaitFrames(int frames);
extern void Func_8095884(void);
extern void Func_809bb34(void *entry);
extern unsigned char iwram_3001f30[];

void Func_80958a8(void)
{
    void *memory = galloc_iwram(0x38, 0xe4 << 3);
    register void (*task)(void) asm("r0");
    register int priority asm("r1");

    DMA3_CLEAR(memory, 0xe4 << 3);
    priority = 0xc8;
    priority <<= 4;
    asm volatile("" : "+r"(priority));
    task = Func_8095884;
    StartTask(task, priority);
}

void Func_80958e4(void)
{
    register unsigned char *entry asm("r5") = *(unsigned char **)iwram_3001f30;
    register unsigned char *enabled asm("r6");
    register int i asm("r7");
    register unsigned int work asm("r3");

    StopTask(Func_8095884);
    enabled = entry + 0x9d;
    entry += 0x58;
    for (i = 0x17; i >= 0; i--) {
        work = *enabled;
        work <<= 24;
        asm volatile("" : "+r"(entry), "+r"(enabled), "+r"(i), "+r"(work));
        enabled += 0x48;
        asm volatile("" : "+r"(entry), "+r"(enabled), "+r"(i), "+r"(work));
        if (work != 0)
            Func_809bb34(entry);
        entry += 0x48;
    }
    gfree(0x38);
    WaitFrames(1);
}
