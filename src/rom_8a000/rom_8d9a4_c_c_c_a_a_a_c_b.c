/* Cluster Func_8091174..Func_8091174 extracted from goldensun/asm/rom_8a000/rom_8d9a4_c_c_c_a_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_c_c_c_a_a_a_c_a.o and asm/rom_8a000/rom_8d9a4_c_c_c_a_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
#include "dma.h"
#include "task.h"
extern void *galloc_ewram(unsigned int index, unsigned int size);
extern void Func_8090a5c(unsigned int, unsigned int, unsigned int, unsigned int);
extern void Func_80908e0(void);
#define PALETTE_BG  ((void *)0x05000000)
#define PALETTE_OBJ ((void *)0x05000200)

void Func_8091174(void)
{
    unsigned short *p;

    p = galloc_ewram(0x20, 0x2a04);
    DMA3_FILL(p, 0, 0x2a04);
    DMA3_COPY(PALETTE_BG, p, 0x1c0);
    DMA3_COPY(PALETTE_OBJ, p + 0xe0, 0x1c0);
    Func_8090a5c(0x10000, (unsigned int)p, (unsigned int)p + 0xe00, 0);
    StartTask(Func_80908e0, 0xc8f);
}
