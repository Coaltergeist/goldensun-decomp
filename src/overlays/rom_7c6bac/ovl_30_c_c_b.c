/* Cluster OvlFunc_942_2008ad4..OvlFunc_942_2008ad4 extracted from goldensun/asm/overlays/rom_7c6bac/ovl_30_c_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c6bac/ovl_30_c_c_a.o and asm/overlays/rom_7c6bac/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7c6bac/overlay.ld.
 */
extern unsigned int iwram_3001ebc;
extern void __ClearFlag(int);

void OvlFunc_942_2008ad4(void) {
    *(unsigned int *)((char *)iwram_3001ebc + 0x1c0) = 0x1c0 + 0x49;
    __ClearFlag(0x12f);
}
