/* Cluster OvlFunc_959_200d4b0..OvlFunc_959_200d4b0 extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_c_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_c_c_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_c_c_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
extern int __GetFlag(int);
extern void OvlFunc_959_2008e30(int);

void OvlFunc_959_200d4b0(void) {
    if (__GetFlag(0xd6 << 2)) {
        OvlFunc_959_2008e30(0);
    }
    if (__GetFlag(0x359)) {
        OvlFunc_959_2008e30(1);
    }
}
