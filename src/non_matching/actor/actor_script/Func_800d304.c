#include "dma.h"

extern void *Func_8004938(unsigned int size);

extern void free(void *mem);

extern void Func_800a494(void);

void Func_800d304(void)
{
    void (*func)(void);

    func = Func_8004938(0x4e8);
    DMA3_COPY(Func_800a494, func, 0x4e8);
    func();
    free(func);
}
