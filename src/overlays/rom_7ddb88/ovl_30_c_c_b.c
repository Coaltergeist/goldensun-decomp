/* Cluster OvlFunc_7ddb88_150..OvlFunc_7ddb88_150 extracted from goldensun/asm/overlays/rom_7ddb88/ovl_30_c_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ddb88/ovl_30_c_c_a.o and asm/overlays/rom_7ddb88/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7ddb88/overlay.ld.
 */
extern unsigned int iwram_3001f30;

void OvlFunc_7ddb88_150(void) {
    unsigned int ptr;
    ptr = iwram_3001f30;
    *((unsigned char *)(ptr + 0x35)) = 1;
}
