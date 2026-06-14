/* Cluster OvlFunc_922_200842c..OvlFunc_922_200842c extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_a_c_c_c_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_a_c_c_c_c_c_c_c_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_a_c_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern void OvlFunc_922_2008180(int, int, int);
extern void OvlFunc_922_2009154(void);

void OvlFunc_922_200842c(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(8, -0xe, 0);
    __PlaySound(0x121);
    __SetFlag(0x305);
    __WaitFrames(2);
    OvlFunc_922_2009154();
}
