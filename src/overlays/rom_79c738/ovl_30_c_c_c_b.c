/* Cluster OvlFunc_909_2008468..OvlFunc_909_2008468 extracted from goldensun/asm/overlays/rom_79c738/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79c738/ovl_30_c_c_c_a.o and asm/overlays/rom_79c738/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_79c738/overlay.ld.
 */
extern void OvlFunc_909_2008424(int);
extern void OvlFunc_909_20084ec(int, int, int);

void OvlFunc_909_2008468(void) {
    if (__GetFlag(0x84e)) {
        OvlFunc_909_2008424(0x211);
    } else {
        OvlFunc_909_20084ec(0x16, 0xb7, 0x211);
    }
}
