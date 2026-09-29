#include "dma.h"

extern void *galloc_iwram(int index, unsigned int size);

extern void StartTask(void *task, int priority);

extern void Func_8095884(void);

void Func_80958a8(void)
{
    int zero;
    void *buf;

    buf = galloc_iwram(0x38, 0xe4 << 3);
    zero = 0;
    DMA3_COPY(&zero, buf, 0xe4 << 3);
    StartTask(Func_8095884, 0xc8 << 4);
}
