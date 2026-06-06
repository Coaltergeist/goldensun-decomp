/* Cluster OvlFunc_916_2008f34..OvlFunc_916_2008f34 extracted from goldensun/asm/overlays/rom_7a37f0/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a37f0/ovl_30_c_c_c_a.o and asm/overlays/rom_7a37f0/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_7a37f0/overlay.ld.
 */
#include "dma.h"
extern void *iwram_3001ed0;
extern unsigned char L12d0[] __asm__(".L12d0");

void OvlFunc_916_2008f34(void) {
    DMA3_COPY(iwram_3001ed0, L12d0, 0x380);
}
