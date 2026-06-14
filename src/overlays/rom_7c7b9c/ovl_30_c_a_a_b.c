/* Cluster OvlFunc_943_20089fc..OvlFunc_943_20089fc extracted from goldensun/asm/overlays/rom_7c7b9c/ovl_30_c_a_a.s.
 *
 * Total .text for this TU = 76 bytes (= 0x4c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c7b9c/ovl_30_c_a_a_a.o and asm/overlays/rom_7c7b9c/ovl_30_c_a_a_c.o in
 * goldensun/overlays/rom_7c7b9c/overlay.ld.
 */
extern unsigned char L59d0[] __asm__(".L59d0");
extern unsigned char L5a54[] __asm__(".L5a54");
extern unsigned char L5958[] __asm__(".L5958");
extern unsigned char L5778[] __asm__(".L5778");

unsigned int * OvlFunc_943_20089fc(void) {
    if (__GetFlag(0x93e)) {
        return (unsigned int *)L59d0;
    } else {
        if (__GetFlag(0x8a << 4)) {
            return (unsigned int *)L5a54;
        } else {
            if (__GetFlag(0x928)) {
                return (unsigned int *)L5958;
            } else {
                return (unsigned int *)L5778;
            }
        }
    }
}
