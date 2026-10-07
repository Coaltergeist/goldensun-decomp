#include "dma.h"

extern void *galloc_ewram(int index, unsigned int size);

extern void Func_8015ef4(void);

extern void Func_8019d0c(void);

extern void StartTask(void (*task)(void), unsigned int priority);

extern void Func_80173f4(void);

extern void Func_80160fc(void);

void Func_8015f30(void)
{
    void *p;

    p = galloc_ewram(0xf, 0x12fc);
    DMA3_CLEAR(p, 0x12fc);
    *(unsigned char *)((unsigned int)p + 0xea3) = 1;
    *(unsigned short *)((unsigned int)p + 0x12b6) = 0x63;
    *(unsigned char *)((unsigned int)p + 0xea7) = 0xf;
    DMA3_FILL(p, 0xf000f000, 0x500);
    Func_8015ef4();
    Func_8019d0c();
    StartTask(Func_80160fc, 0x90 << 3);
    Func_80173f4();
}
