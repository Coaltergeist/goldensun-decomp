/* Cluster OvlFunc_922_20084bc..OvlFunc_922_20084bc extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_a.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_a_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_a_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern void OvlFunc_922_2008180(int, int, int);
extern void OvlFunc_922_2009154(void);

void OvlFunc_922_20084bc(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(9, 0, 0x40);
    __PlaySound(0x121);
    __SetFlag(0x306);
    __WaitFrames(2);
    OvlFunc_922_2009154();
}
