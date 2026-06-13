/* Cluster OvlFunc_922_2008380..OvlFunc_922_2008380 extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_a_c_c_c_c.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_a_c_c_c_c_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_a_c_c_c_c_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern void OvlFunc_922_2008180(int, int, int);
extern void OvlFunc_922_2009050(void);

void OvlFunc_922_2008380(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xa, 0, -0x40);
    __PlaySound(0x121);
    __SetFlag(0x303);
    __WaitFrames(2);
    OvlFunc_922_2009050();
}
