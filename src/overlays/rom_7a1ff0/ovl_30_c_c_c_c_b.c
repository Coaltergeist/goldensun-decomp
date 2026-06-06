/* Cluster OvlFunc_914_2008b8c..OvlFunc_914_2008b8c extracted from goldensun/asm/overlays/rom_7a1ff0/ovl_30_c_c_c_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a1ff0/ovl_30_c_c_c_c_a.o and asm/overlays/rom_7a1ff0/ovl_30_c_c_c_c_c.o in
 * goldensun/overlays/rom_7a1ff0/overlay.ld.
 */
#include "dma.h"
extern unsigned int iwram_3001ed0;
extern unsigned char L10b0[] __asm__(".L10b0");

void OvlFunc_914_2008b8c(void) {
    DMA3_COPY((void *)iwram_3001ed0, L10b0, 0x380);
}
