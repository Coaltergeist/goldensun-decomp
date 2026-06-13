/* Cluster OvlFunc_899_2009e64..OvlFunc_899_2009e64 extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_c_c_a_c.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_c_c_a_c_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_c_c_a_c_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern void OvlFunc_899_200cb2c(void);

void OvlFunc_899_2009e64(void) {
    __SetFlag(0x107);
    __SetFlag(0x94 << 2);
    OvlFunc_899_200cb2c();
}
