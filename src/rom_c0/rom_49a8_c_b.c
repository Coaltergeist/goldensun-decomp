/* Cluster Func_8004a28..Func_8004a28 extracted from goldensun/asm/rom_c0/rom_49a8_c.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_49a8_c_a.o and asm/rom_c0/rom_49a8_c_c.o in
 * goldensun/stage1.ld.
 */
#include "dma.h"
extern unsigned int Data_8000ac0;

void Func_8004a28(void *dest)
{
    DMA3_COPY(&Data_8000ac0, dest, 0x30);
}
