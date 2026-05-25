/* Cluster OvlFunc_150..OvlFunc_150 extracted from goldensun/asm/overlays/rom_7ddb88/ovl_30_c_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ddb88/ovl_30_c_c_a.o and asm/overlays/rom_7ddb88/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7ddb88/overlay.ld.
 */
extern unsigned int iwram_1f30;

void OvlFunc_150(void) {
    unsigned int ptr;
    ptr = iwram_1f30;
    *((unsigned char *)(ptr + 0x35)) = 1;
}
