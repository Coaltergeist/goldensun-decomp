/* Cluster OvlFunc_939_20086bc..OvlFunc_939_20086bc extracted from goldensun/asm/overlays/rom_7c460c/ovl_314_a_c_a_a_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c460c/ovl_314_a_c_a_a_c_a.o and asm/overlays/rom_7c460c/ovl_314_a_c_a_a_c_c.o in
 * goldensun/overlays/rom_7c460c/overlay.ld.
 */
extern void __CutsceneStart();
extern void __Func_801776c();
extern void __CutsceneEnd();

void OvlFunc_939_20086bc(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29e1, 1);
    __CutsceneEnd();
}
