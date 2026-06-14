/* Cluster OvlFunc_922_2008d38..OvlFunc_922_2008d38 extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_a_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_a_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_a_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern void OvlFunc_922_2008180(unsigned int, unsigned int, unsigned int);
extern void OvlFunc_922_20095dc(void);

void OvlFunc_922_2008d38(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(8, 0, 0x70);
    __PlaySound(0x121);
    __SetFlag(0x313);
    __WaitFrames(2);
    OvlFunc_922_20095dc();
}
