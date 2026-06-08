/* Cluster OvlFunc_954_2008830..OvlFunc_954_2008830 extracted from goldensun/asm/overlays/rom_7db0c8/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7db0c8/ovl_30_c_c_a_a.o and asm/overlays/rom_7db0c8/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7db0c8/overlay.ld.
 */
extern void __SetFlag(int);

void OvlFunc_954_2008830(void) {
    __SetFlag(0xc0 << 2);
}
