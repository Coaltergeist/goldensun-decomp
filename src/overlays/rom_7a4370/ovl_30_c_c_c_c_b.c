/* Cluster OvlFunc_917_2009838..OvlFunc_917_2009838 extracted from goldensun/asm/overlays/rom_7a4370/ovl_30_c_c_c_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a4370/ovl_30_c_c_c_c_a.o and asm/overlays/rom_7a4370/ovl_30_c_c_c_c_c.o in
 * goldensun/overlays/rom_7a4370/overlay.ld.
 */
#include "dma.h"
extern unsigned int iwram_3001ed0;
extern unsigned char L1de0[] __asm__(".L1de0");

void OvlFunc_917_2009838(void) {
    DMA3_COPY((void *)iwram_3001ed0, L1de0, 0x380);
}
