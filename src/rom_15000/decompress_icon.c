extern void *galloc_iwram(unsigned int slot, unsigned int size);
extern void gfree(unsigned int slot);
extern void Func_8015afc(void);
extern void *gPtrs[];

typedef void (*DecompressFn)(void *, void *);

void DecompressIcon(void *param_1)
{
    unsigned int size;
    register void *buffer asm("r0");
    void *src;
    register DecompressFn fn asm("r3");

    asm volatile("" : "+r"(param_1));
    asm volatile("ldr %0, =0x278" : "=r"(size));
    {
        register unsigned int slot asm("r0") = 0x31;
        asm volatile("" : "+r"(slot));
        buffer = galloc_iwram(slot, size);
    }

    {
        register unsigned int cnt asm("r2") = 0x84;
        register void *dst asm("r1");
        register unsigned int *dma asm("r3");
        register void *srcfn asm("r0");

        asm volatile("lsr %0, %0, #2" : "+r"(size));
        asm volatile("lsl %0, %0, #24" : "+r"(cnt));
        asm volatile("mov %0, %1" : "=r"(dst) : "r"(buffer));
        asm volatile("ldr %0, =0x040000d4" : "=r"(dma));
        asm volatile("ldr %0, =Func_8015afc" : "=r"(srcfn));
        asm volatile("orr %0, %0, %1" : "+r"(cnt) : "r"(size));
        asm volatile(
            "stmia %0!, {%1, %2, %3}\n\t"
            "sub %0, #0xc"
            : "+r"(dma)
            : "r"(srcfn), "r"(dst), "r"(cnt)
            : "memory"
        );
    }

    {
        register char *fn_slot asm("r3");
        register unsigned int off asm("r1");
        register void *addr asm("r2");

        asm volatile("ldr %0, =gPtrs" : "=r"(fn_slot));
        asm volatile("ldr %0, =0x604" : "=r"(off));
        asm volatile("add %0, %0, #196" : "+r"(fn_slot));
        asm volatile("add %0, %1, %2" : "=r"(addr) : "r"(param_1), "r"(off));

        src = *(void **)addr;
        fn = *(DecompressFn *)fn_slot;
        asm volatile("" : "+r"(fn));
        fn(src, param_1);
    }

    gfree(0x31);
}
