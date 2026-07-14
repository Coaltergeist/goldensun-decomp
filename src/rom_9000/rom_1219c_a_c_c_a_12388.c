#include "dma.h"

extern void *gPtrs[];
extern unsigned char Func_8009e7c[];
extern unsigned char ewram_201c000[];
extern unsigned char ewram_203c000[];
extern unsigned char Size_27c[] asm("0x27c");
extern void *galloc_iwram(int index, unsigned int size);
extern void gfree(int slot);

typedef void (*Func_8009e7cType)(void *, void *, void *, void *);

void Func_8012388(void *a1, void *a2)
{
    register void *arg1 asm("r0") = a1;
    register void *arg2 asm("r1") = a2;
    register unsigned char *ptr asm("r6") = ewram_201c000;
    register void *saved_arg1 asm("r8");
    register void *saved_arg2 asm("r10");
    register unsigned int size asm("r5");
    register void *code asm("r1");
    unsigned int count;

    asm volatile("" : "+r"(ptr));
    saved_arg1 = arg1;
    asm volatile("" : "+r"(saved_arg1));
    saved_arg2 = arg2;
    asm volatile("" : "+r"(saved_arg2));
    size = (unsigned int)Size_27c;
    asm volatile("" : "+r"(size));

    {
        register int index asm("r0") = 0x31;
        register unsigned int sizeArg asm("r1");

        asm volatile("" : "+r"(index));
        sizeArg = size;
        asm volatile("" : "+r"(sizeArg));
        code = galloc_iwram(index, sizeArg);
    }
    count = 0x84;
    size >>= 2;
    count <<= 24;
    DMA3_SET(Func_8009e7c, code, count | size);
    {
        register void **base asm("r3") = gPtrs;
        register Func_8009e7cType func asm("r4");
        register unsigned int offset asm("r1") = 0x80;
        register unsigned char *ewram3 asm("r2");

        asm volatile("" : "+r"(offset));
        offset <<= 5;
        asm volatile("" : "+r"(offset));
        ptr += offset;
        asm volatile("" : "+r"(ptr));
        func = (Func_8009e7cType)base[0x31];
        asm volatile("" : "+r"(func));
        ewram3 = ewram_203c000;
        asm volatile("" : "+r"(ewram3));
        func(saved_arg1, saved_arg2, ewram3, ptr);
    }
    gfree(0x31);
}
