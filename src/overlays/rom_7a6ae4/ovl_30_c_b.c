/* Cluster OvlFunc_7a6ae4_44c..OvlFunc_7a6ae4_45c extracted from goldensun/asm/overlays/rom_7a6ae4/ovl_30_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a6ae4/ovl_30_c_a.o and asm/overlays/rom_7a6ae4/ovl_30_c_c.o in
 * goldensun/overlays/rom_7a6ae4/overlay.ld.
 */
extern unsigned int iwram_3001e70;

void OvlFunc_7a6ae4_44c(void) {
    unsigned int ptr;
    ptr = iwram_3001e70;
    *((unsigned char *)ptr + 0x17) = 1;
}
extern unsigned int iwram_3001e70;

void OvlFunc_7a6ae4_45c(void) {
    unsigned int *ptr;
    ptr = (unsigned int *)iwram_3001e70;
    ((unsigned char *)ptr)[0x17] = 0;
}
