/* Cluster OvlFunc_915_2008d7c..OvlFunc_915_2008d7c extracted from goldensun/asm/overlays/rom_7a2bf0/ovl_30_c_c_c_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a2bf0/ovl_30_c_c_c_c_a.o and asm/overlays/rom_7a2bf0/ovl_30_c_c_c_c_c.o in
 * goldensun/overlays/rom_7a2bf0/overlay.ld.
 */
#include "dma.h"
extern unsigned int iwram_3001ed0;
extern unsigned char L17e0[] __asm__(".L17e0");

void OvlFunc_915_2008d7c(void) {
    DMA3_COPY((void *)iwram_3001ed0, L17e0, 0x380);
}
