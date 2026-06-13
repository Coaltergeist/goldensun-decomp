/* Cluster OvlFunc_922_200825c..OvlFunc_922_200825c extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_a.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_a_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_a_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern void OvlFunc_922_2008180(int, int, int);
extern void OvlFunc_922_2009050(void);

void OvlFunc_922_200825c(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(8, 0x70, 0);
    OvlFunc_922_2008180(8, 0x70, 0);
    __PlaySound(0x121);
    __SetFlag(0x301);
    __WaitFrames(2);
    OvlFunc_922_2009050();
}
