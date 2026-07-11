/* Cluster OvlFunc_885_20080a4..OvlFunc_885_20080a4 extracted from goldensun/asm/overlays/rom_78603c/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78603c/ovl_30_c_c_a_a.o and asm/overlays/rom_78603c/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_78603c/overlay.ld.
 */
extern unsigned char L2028[] __asm__(".L2028");
extern unsigned char L1fb0[] __asm__(".L1fb0");
extern unsigned char L1efc[] __asm__(".L1efc");

unsigned char *OvlFunc_885_20080a4(void) {
    if (__GetFlag(0x87a))
        return L2028;
    if (__GetFlag(0x834))
        return L1fb0;
    return L1efc;
}
