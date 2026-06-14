/* Cluster OvlFunc_924_200a504..OvlFunc_924_200a504 extracted from goldensun/asm/overlays/rom_7ac2d8/ovl_22c4_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ac2d8/ovl_22c4_c_a.o and asm/overlays/rom_7ac2d8/ovl_22c4_c_c.o in
 * goldensun/overlays/rom_7ac2d8/overlay.ld.
 */
extern void OvlFunc_924_20083a8(void);
extern void OvlFunc_924_200a51c(void);

void OvlFunc_924_200a504(void) {
    __CutsceneStart();
    OvlFunc_924_20083a8();
    OvlFunc_924_200a51c();
    __CutsceneEnd();
}
