#include "gba/types.h"
#include "gba/io.h"
#include "dma.h"

extern u8 iwram_3001ebc[];
extern void _Func_8091200(u32 value, u32 mode);
extern void _Func_8091254(u32 value);

void Func_80b0840(u32 param_1)
{
    u8 *base = iwram_3001ebc;
    u32 field14 = *(u32 *)(base + 0x14);
    u32 field0 = *(u32 *)base;
    u32 src = field14 + 0xe00;

    DMA3_SET((void *)src, (void *)(field0 + 0x236), 0x84000150);
    asm volatile("" ::: "r0");
    DMA3_SET((void *)src, (void *)(field14 + 0x380), 0x840002a0);

    _Func_8091200(param_1, 1);
    _Func_8091254(0x10);
}
