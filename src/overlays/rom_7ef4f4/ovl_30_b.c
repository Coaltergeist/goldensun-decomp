/* Cluster OvlFunc_26a8..OvlFunc_26a8 extracted from goldensun/asm/overlays/rom_7ef4f4/ovl_30.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ef4f4/ovl_30_a.o and asm/overlays/rom_7ef4f4/ovl_30_c.o in
 * goldensun/overlays/rom_7ef4f4/overlay.ld.
 */
extern unsigned int iwram_1f30;

void OvlFunc_26a8(void) {
    unsigned int ptr;
    ptr = iwram_1f30;
    *((unsigned char *)(ptr + 0x34)) = 1;
}
