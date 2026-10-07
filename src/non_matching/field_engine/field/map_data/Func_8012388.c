typedef struct { unsigned char _bytes[256]; } GlobalPtrs;

extern unsigned char ewram_201c000[];

extern GlobalPtrs gPtrs;

extern unsigned char ewram_203c000[];

extern void *galloc_iwram(int index, unsigned int size);

extern void gfree(int index);

extern int Func_8009e7c(void);

void Func_8012388(unsigned int arg0, unsigned int arg1)
{
    unsigned int size;
    void *dst;
    unsigned char *ptr;
    unsigned char *gp;
    void (*f)(unsigned int, unsigned int, unsigned char *, unsigned char *);

    ptr = ewram_201c000;
    __asm__ ("ldr %0, =0x27c" : "=r" (size));
    dst = galloc_iwram(0x31, size);
    DMA3_SET((void *)Func_8009e7c, dst, 0x84000000 | (size >> 2));
    ptr += 0x1000;
    gp = (unsigned char *)&gPtrs;
    gp += 0xc4;
    f = *(void (**)(unsigned int, unsigned int, unsigned char *, unsigned char *))gp;
    f(arg0, arg1, ewram_203c000, ptr);
    gfree(0x31);
}
