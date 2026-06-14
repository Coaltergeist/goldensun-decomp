/* Cluster OvlFunc_949_20084b0..OvlFunc_949_20084b0 extracted from goldensun/asm/overlays/rom_7d4af4/ovl_30_c_c_a_c_c.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d4af4/ovl_30_c_c_a_c_c_a.o and asm/overlays/rom_7d4af4/ovl_30_c_c_a_c_c_c.o in
 * goldensun/overlays/rom_7d4af4/overlay.ld.
 */
extern unsigned char L1a9c[] __asm__(".L1a9c");
extern unsigned char L14a8[] __asm__(".L14a8");
extern unsigned int gScript_960__020097a8;

unsigned int * OvlFunc_949_20084b0(void) {
    if (__GetFlag(0x95 << 4)) {
        return (unsigned int *)L1a9c;
    } else {
        if (__GetFlag(0x962)) {
            return &gScript_960__020097a8;
        } else {
            return (unsigned int *)L14a8;
        }
    }
}
