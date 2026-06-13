/* Cluster OvlFunc_924_2009408..OvlFunc_924_2009408 extracted from goldensun/asm/overlays/rom_7ac2d8/ovl_f84_a_c_c_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ac2d8/ovl_f84_a_c_c_c_a.o and asm/overlays/rom_7ac2d8/ovl_f84_a_c_c_c_c.o in
 * goldensun/overlays/rom_7ac2d8/overlay.ld.
 */
extern void OvlFunc_924_20083a8(void);
extern void OvlFunc_924_2009420(void);

void OvlFunc_924_2009408(void) {
    __CutsceneStart();
    OvlFunc_924_20083a8();
    __CutsceneEnd();
    OvlFunc_924_2009420();
}
