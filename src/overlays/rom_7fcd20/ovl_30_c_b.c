/* Cluster OvlFunc_7fcd20_22c..OvlFunc_7fcd20_22c extracted from goldensun/asm/overlays/rom_7fcd20/ovl_30_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7fcd20/ovl_30_c_a.o and asm/overlays/rom_7fcd20/ovl_30_c_c.o in
 * goldensun/overlays/rom_7fcd20/overlay.ld.
 */
extern unsigned int iwram_3001f30;

void OvlFunc_7fcd20_22c(void) {
    unsigned int addr;
    addr = iwram_3001f30;
    addr += 0x35;
    *((unsigned char *)addr) = 1;
}
