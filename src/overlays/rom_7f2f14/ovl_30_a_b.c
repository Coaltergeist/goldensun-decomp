/* Cluster OvlFunc_7f2f14_8b8..OvlFunc_7f2f14_8b8 extracted from goldensun/asm/overlays/rom_7f2f14/ovl_30_a.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f2f14/ovl_30_a_a.o and asm/overlays/rom_7f2f14/ovl_30_a_c.o in
 * goldensun/overlays/rom_7f2f14/overlay.ld.
 */
extern unsigned int iwram_3001ee0;

void OvlFunc_7f2f14_8b8(void) {
    unsigned int *ptr;

    ptr = (unsigned int *)iwram_3001ee0;
    ptr[6] = 0;
}
