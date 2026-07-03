/* Cluster OvlFunc_910_200812c..OvlFunc_910_200812c extracted from goldensun/asm/overlays/rom_79dd90/ovl_30_c_c_a_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79dd90/ovl_30_c_c_a_a_a.o and asm/overlays/rom_79dd90/ovl_30_c_c_a_a_c.o in
 * goldensun/overlays/rom_79dd90/overlay.ld.
 */
extern void __CutsceneStart();
extern void __Func_801776c();
extern void __CutsceneEnd();

void OvlFunc_910_200812c(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29de, 1);
    __CutsceneEnd();
}
