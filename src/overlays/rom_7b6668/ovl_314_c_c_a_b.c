/* Cluster OvlFunc_928_20085b0..OvlFunc_928_20085b0 extracted from goldensun/asm/overlays/rom_7b6668/ovl_314_c_c_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b6668/ovl_314_c_c_a_a.o and asm/overlays/rom_7b6668/ovl_314_c_c_a_c.o in
 * goldensun/overlays/rom_7b6668/overlay.ld.
 */
extern unsigned char L1900[] __asm__(".L1900");

unsigned int * OvlFunc_928_20085b0(void) {
    if (__GetFlag(0x895)) {
        L1900[0xbe] = 0;
    }
    return (unsigned int *)L1900;
}
