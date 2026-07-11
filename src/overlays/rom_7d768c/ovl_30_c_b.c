/* Cluster OvlFunc_952_200c00c..OvlFunc_952_200c00c extracted from goldensun/asm/overlays/rom_7d768c/ovl_30_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d768c/ovl_30_c_a.o and asm/overlays/rom_7d768c/ovl_30_c_c.o in
 * goldensun/overlays/rom_7d768c/overlay.ld.
 */
extern void __CutsceneStart();
extern void __Func_801776c();
extern void __CutsceneEnd();

void OvlFunc_952_200c00c(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29e0, 1);
    __CutsceneEnd();
}
