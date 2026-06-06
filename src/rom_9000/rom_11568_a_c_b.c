/* Cluster Func_801161c..Func_801161c extracted from goldensun/asm/rom_9000/rom_11568_a_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_11568_a_c_a.o and asm/rom_9000/rom_11568_a_c_c.o in
 * goldensun/stage1.ld.
 */
#include "gba/io.h"
#include "dma.h"
extern unsigned char ewram_2038000[];

void Func_801161c(void) {
    do { u32 _value = 0x501; REG_BG1CNT = _value; } while (0);
    DMA3_COPY(ewram_2038000, (void *)0x6008000, 0x8000);
}
