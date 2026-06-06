/* Cluster OvlFunc_917_2009858..OvlFunc_917_2009858 extracted from goldensun/asm/overlays/rom_7a4370/ovl_30_c_c_c_c_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a4370/ovl_30_c_c_c_c_c_a.o and asm/overlays/rom_7a4370/ovl_30_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7a4370/overlay.ld.
 */
#include "dma.h"
extern unsigned int iwram_3001ed0;
extern unsigned char L24e0[] __asm__(".L24e0");

void OvlFunc_917_2009858(void) {
    DMA3_COPY((void *)iwram_3001ed0, L24e0, 0x380);
}
