/* Cluster OvlFunc_909_2008494..OvlFunc_909_2008494 extracted from goldensun/asm/overlays/rom_79c738/ovl_30_c_c_c_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79c738/ovl_30_c_c_c_c_a.o and asm/overlays/rom_79c738/ovl_30_c_c_c_c_c.o in
 * goldensun/overlays/rom_79c738/overlay.ld.
 */
extern void OvlFunc_909_2008424(unsigned int);
extern void OvlFunc_909_20084ec(unsigned int, unsigned int, unsigned int);

void OvlFunc_909_2008494(void) {
    if (__GetFlag(0x84e)) {
        OvlFunc_909_2008424(0x212);
    } else {
        OvlFunc_909_20084ec(0x17, 0xba, 0x212);
    }
}
