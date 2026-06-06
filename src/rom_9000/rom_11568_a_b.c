/* Cluster Func_8011568..Func_8011568 extracted from goldensun/asm/rom_9000/rom_11568_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_11568_a_a.o and asm/rom_9000/rom_11568_a_c.o in
 * goldensun/stage1.ld.
 */
#include "gba/io.h"
#include "dma.h"
extern unsigned char ewram_2010000[];

void Func_8011568(void) {
    do { u32 _value = 0x682; REG_BG1CNT = _value; } while (0);
    DMA3_COPY(ewram_2010000, (void *)0x6006a00, 0x9600);
}
