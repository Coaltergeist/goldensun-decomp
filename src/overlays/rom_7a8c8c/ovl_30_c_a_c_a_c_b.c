/* Cluster OvlFunc_922_200829c..OvlFunc_922_200829c extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_a_c.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_a_c_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_a_c_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern void OvlFunc_922_2008180(int, int, int);
extern void OvlFunc_922_2009050(void);

void OvlFunc_922_200829c(void) {
    unsigned int r5;
    r5 = 0x70;
    r5 = -r5;
    __PlaySound(0xf1);
    OvlFunc_922_2008180(8, r5, 0);
    OvlFunc_922_2008180(8, r5, 0);
    __PlaySound(0x121);
    __ClearFlag(0x301);
    __WaitFrames(2);
    OvlFunc_922_2009050();
}
