/* Cluster OvlFunc_918_2009224..OvlFunc_918_2009224 extracted from goldensun/asm/overlays/rom_7a5214/ovl_314_c_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a5214/ovl_314_c_c_a.o and asm/overlays/rom_7a5214/ovl_314_c_c_c.o in
 * goldensun/overlays/rom_7a5214/overlay.ld.
 */
/* OvlFunc_918_2009224; inline DMA3: SAD=0x05000000 (palette RAM, built as
 * 0xa0<<19), DAD=*iwram_3001ed0, CNT=0x84000070 (DMA_ENABLE|32bit, 0x70 words
 * = 0x1c0 bytes). Uses the existing DMA3_COPY helper (stmia r3!,{r0,r1,r2}). */
#include "dma.h"
extern void *iwram_3001ed0;

void OvlFunc_918_2009224(void) {
    DMA3_COPY((void *)(0xa0 << 19), iwram_3001ed0, 0x1c0);
}
