/* Cluster OvlFunc_922_2008bf4..OvlFunc_922_2008bf4 extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_a_c_c_c_c_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_a_c_c_c_c_c_c_c_c_c_c_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_a_c_c_c_c_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern void OvlFunc_922_2008180(int, int, int);
extern void OvlFunc_922_2008bc8(void);
extern void OvlFunc_922_20092cc(void);

void OvlFunc_922_2008bf4(void) {
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xb, 0, 0x80);
    OvlFunc_922_2008bc8();
    __PlaySound(0x121);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}
