/* Cluster OvlFunc_922_20083ec..OvlFunc_922_20083ec extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_a_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_a_c_c_c_c_c_c_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_a_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern void OvlFunc_922_2008180(int, int, int);
extern void OvlFunc_922_2009154(void);

void OvlFunc_922_20083ec(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(8, -0x90, 0);
    __PlaySound(0x121);
    __ClearFlag(0xc1 << 2);
    __SetFlag(0x305);
    __WaitFrames(2);
    OvlFunc_922_2009154();
}
