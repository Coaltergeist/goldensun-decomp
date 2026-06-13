/* Cluster OvlFunc_969_200b8c0..OvlFunc_969_200b8c0 extracted from goldensun/asm/overlays/rom_7f6e64/ovl_314_c_a_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f6e64/ovl_314_c_a_c_c_c_c_c_c_a.o and asm/overlays/rom_7f6e64/ovl_314_c_a_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7f6e64/overlay.ld.
 */
extern void OvlFunc_969_200bbc8(void);
extern void OvlFunc_969_200be9c(void);
extern void OvlFunc_969_200c23c(void);

void OvlFunc_969_200b8c0(void) {
    __CutsceneStart();
    OvlFunc_969_200bbc8();
    OvlFunc_969_200be9c();
    OvlFunc_969_200c23c();
    __CutsceneEnd();
}
