/* Cluster Func_80f377c..Func_80f377c extracted from goldensun/asm/rom_f2000/rom_f2028_c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_f2000/rom_f2028_c_c_a_a_a.o and asm/rom_f2000/rom_f2028_c_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
#include "dma.h"
#include "task.h"
extern void *galloc_ewram(int index, unsigned int size);
extern void Func_80f3078(unsigned int, unsigned int, unsigned int, unsigned int);
extern void Func_80f2f10(void);

void Func_80f377c(void)
{
    unsigned char *p;

    p = galloc_ewram(0x20, 0x3004);
    DMA3_CLEAR(p, 0x3004);
    DMA3_COPY((void *)0x05000000, p, 0x200);
    DMA3_COPY((void *)0x05000200, p + 0x200, 0x200);
    Func_80f3078(0x10000, (unsigned int)p, (unsigned int)(p + 0x1000), 0);
    StartTask(Func_80f2f10, 0xc80);
}
