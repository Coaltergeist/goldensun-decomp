/* Cluster OvlFunc_934_20098b4..OvlFunc_934_20098b4 extracted from goldensun/asm/overlays/rom_7bdeb0/ovl_169c_a.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bdeb0/ovl_169c_a_a.o and asm/overlays/rom_7bdeb0/ovl_169c_a_c.o in
 * goldensun/overlays/rom_7bdeb0/overlay.ld.
 */
extern void OvlFunc_934_20097d8(int, int, int);
extern void OvlFunc_934_2009770(void);

void OvlFunc_934_20098b4(void) {
    __PlaySound(0xf1);
    OvlFunc_934_20097d8(0xb, 0x70, 0);
    OvlFunc_934_20097d8(0xb, 0x50, 0);
    __SetFlag(0x301);
    __WaitFrames(2);
    OvlFunc_934_2009770();
    __PlaySound(0x121);
}
