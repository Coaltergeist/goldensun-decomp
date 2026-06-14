/* Cluster OvlFunc_922_200862c..OvlFunc_922_200862c extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_a_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_a_c_c_c_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_a_c_c_c_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern void OvlFunc_922_2008180(int, int, int);
extern void OvlFunc_922_20092cc(void);

void OvlFunc_922_200862c(void) {
    __PlaySound(0xf1);
    __ClearFlag(0xc2 << 2);
    __ClearFlag(0x309);
    OvlFunc_922_2008180(8, 0x30, 0);
    __PlaySound(0x121);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}
