#include "dma.h"

extern u8 gBuffer[];
extern u8 ewram_2018000[];
extern void *Func_8004970(unsigned int size);
extern void *Func_8004938(unsigned int size);
extern void Func_8001af8(void *dst, unsigned char *src, unsigned int size)
    __attribute__((long_call));
extern unsigned char Func_800a37c[];
extern unsigned char Size_9c[] asm("0x9c");
extern void free(void *memory);

void UnpackTilemap(void)
{
    register void *buf1 asm("r8");
    register void *ret asm("r0");
    register unsigned int size1 asm("r5") = 0x8000;
    register void (*copy)(void *, unsigned char *, unsigned int) asm("r3");
    register unsigned char *src1 asm("r1");

    asm volatile("" : "+r"(size1));
    ret = Func_8004970(size1);
    copy = (void (*)(void *, unsigned char *, unsigned int))Func_8001af8;
    src1 = gBuffer;
    asm volatile("" : "+r"(copy), "+r"(src1), "+r"(ret));
    buf1 = ret;
    copy(buf1, src1, size1);

    {
        register unsigned int size2 asm("r5") = (unsigned int)Size_9c;
        register void (*code)(void *, unsigned char *, void *) asm("r6");
        register unsigned int count asm("r2");

        asm volatile("" : "+r"(size2));
        code = Func_8004938(size2);
        count = 0x84;
        asm volatile("" : "+r"(code), "+r"(count), "+r"(size2));
        size2 >>= 2;
        count <<= 24;
        DMA3_SET(Func_800a37c, code, count | size2);
        {
            register unsigned char *dst2 asm("r0") = ewram_2018000;
            register unsigned char *src2 asm("r1") = gBuffer;

            asm volatile("" : "+r"(dst2), "+r"(src2));
            code(dst2, src2, buf1);
        }
        free(code);
    }
    free(buf1);
}
