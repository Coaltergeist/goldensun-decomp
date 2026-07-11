/* Cluster OvlFunc_898_20085c8..OvlFunc_898_20085c8 extracted from goldensun/asm/overlays/rom_793768/ovl_314_c_c_a_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_c_a_c_a_a_a.o and asm/overlays/rom_793768/ovl_314_c_c_a_c_a_a_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern void __CutsceneStart();
extern void __Func_801776c();
extern void __CutsceneEnd();

void OvlFunc_898_20085c8(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29dc, 1);
    __CutsceneEnd();
}
