/* Cluster MatrixLoad..MatrixLoad extracted from goldensun/asm/rom_c0/rom_49a8_c_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_49a8_c_c_a.o and asm/rom_c0/rom_49a8_c_c_c.o in
 * goldensun/stage1.ld.
 */
#include "dma.h"
extern unsigned int Data_8000ac0;

void MatrixLoad(unsigned int src)
{
    DMA3_COPY(src, (unsigned int)&Data_8000ac0, 0x30);
}
