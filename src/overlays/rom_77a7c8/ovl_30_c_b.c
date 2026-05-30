/* Cluster OvlFunc_881_200b7c8..OvlFunc_881_200b7c8 extracted from goldensun/asm/overlays/rom_77a7c8/ovl_30_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77a7c8/ovl_30_c_a.o and asm/overlays/rom_77a7c8/ovl_30_c_c.o in
 * goldensun/overlays/rom_77a7c8/overlay.ld.
 */
extern unsigned int iwram_3001f30;

void OvlFunc_881_200b7c8(void) {
    unsigned int ptr = iwram_3001f30;
    *((unsigned char *)(ptr + 0x34)) = 1;
}
