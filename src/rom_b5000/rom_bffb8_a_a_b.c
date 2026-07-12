// fakematch
/* Cluster Func_80c0184..Func_80c0184 extracted from goldensun/asm/rom_b5000/rom_bffb8_a_a.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_bffb8_a_a_a.o and asm/rom_b5000/rom_bffb8_a_a_c.o in
 * goldensun/stage1.ld.
 */
#include "dma.h"
extern unsigned char iwram_3001ef8[];
extern unsigned char Lc5a30[] __asm__(".Lc5a30");

void Func_80c0184(void)
{
    unsigned int val;
    val = *(unsigned int *)(*(unsigned int *)iwram_3001ef8) - 1;
    if (val <= 0x1f) {
        DMA3_COPY(Lc5a30 + ((val >> 2) << 5), (void *)0x6005000, 32);
    }
}
