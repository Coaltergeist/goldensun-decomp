/* Cluster OvlFunc_934_20098f4..OvlFunc_934_20098f4 extracted from goldensun/asm/overlays/rom_7bdeb0/ovl_169c_a_c.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bdeb0/ovl_169c_a_c_a.o and asm/overlays/rom_7bdeb0/ovl_169c_a_c_c.o in
 * goldensun/overlays/rom_7bdeb0/overlay.ld.
 */
extern void OvlFunc_934_20097d8(int, int, int);
extern void OvlFunc_934_2009770(void);

void OvlFunc_934_20098f4(void) {
    __PlaySound(0xf1);
    OvlFunc_934_20097d8(0xb, -0x70, 0);
    OvlFunc_934_20097d8(0xb, -0x50, 0);
    __ClearFlag(0x301);
    __WaitFrames(2);
    OvlFunc_934_2009770();
    __PlaySound(0x121);
}
