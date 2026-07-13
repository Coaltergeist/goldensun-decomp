typedef unsigned int u32;

extern void *galloc_ewram(int slot, int size);
extern void Func_8028194(void);
extern void StartTask(void (*task)(void), int priority);

void *Func_80284dc(void)
{
    void *raw_allocation = galloc_ewram(0x3a, 0x98);
    u32 zero_slot;
    register void *allocation asm("r5");
    register u32 zero asm("r3");
    register volatile u32 *dma asm("r3");
    register u32 source asm("r0");
    register u32 destination asm("r1");
    register u32 control asm("r2");

    asm volatile("mov %0, #0" : "=r"(zero));
    allocation = raw_allocation;
    source = (u32)&zero_slot;
    asm("" : "+r"(source), "+r"(allocation));
    *(u32 *)source = zero;
    destination = (u32)allocation;
    asm volatile("ldr %0, =0x040000d4" : "=r"(dma) : "r"(destination));
    asm volatile("ldr %0, =0x85000026" : "=r"(control) : "r"(dma));
    asm volatile("stmia %0!, {%1, %2, %3}"
                 : "+r"(dma)
                 : "r"(source), "r"(destination), "r"(control)
                 : "memory");
    asm volatile("sub %0, #0xc" : "+r"(dma));
    {
        register int priority asm("r1");
        register void (*task)(void) asm("r0");

        asm("ldr %0, =0xc76" : "=r"(priority));
        asm("ldr %0, =Func_8028194" : "=r"(task));
        StartTask(task, priority);
    }
    return allocation;
}
