/* Cluster OvlFunc_922_20088cc..OvlFunc_922_20088cc extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_a_c_c_c_c.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_a_c_c_c_c_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_a_c_c_c_c_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern void OvlFunc_922_2008180(int, int, int);
extern void OvlFunc_922_20092cc(void);

void OvlFunc_922_20088cc(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xa, 0, -0x10);
    __PlaySound(0x121);
    __SetFlag(0x30b);
    __ClearFlag(0xc3 << 2);
    __ClearFlag(0x30d);
    __ClearFlag(0x30e);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}
