/* Cluster OvlFunc_960_2008b14..OvlFunc_960_2008b14 extracted from goldensun/asm/overlays/rom_7eaf28/ovl_314_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7eaf28/ovl_314_c_a.o and asm/overlays/rom_7eaf28/ovl_314_c_c.o in
 * goldensun/overlays/rom_7eaf28/overlay.ld.
 */
extern unsigned int iwram_3001f30;

void OvlFunc_960_2008b14(void) {
    unsigned int ptr;
    ptr = iwram_3001f30;
    *((unsigned char *)(ptr + 0x34)) = 1;
}
