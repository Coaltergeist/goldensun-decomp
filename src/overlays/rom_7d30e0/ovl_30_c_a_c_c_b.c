/* Cluster OvlFunc_948_20098d0..OvlFunc_948_20098d0 extracted from goldensun/asm/overlays/rom_7d30e0/ovl_30_c_a_c_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a.o and asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_c.o in
 * goldensun/overlays/rom_7d30e0/overlay.ld.
 */
#define REG_BLDALPHA (*(volatile unsigned short *)0x04000052)

void OvlFunc_948_20098d0(void) {
    unsigned short value = 0x607;
    REG_BLDALPHA = value;
}
