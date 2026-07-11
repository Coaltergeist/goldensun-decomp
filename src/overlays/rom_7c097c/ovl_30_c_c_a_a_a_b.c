/* Cluster OvlFunc_936_20081e4..OvlFunc_936_20081e4 extracted from goldensun/asm/overlays/rom_7c097c/ovl_30_c_c_a_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c097c/ovl_30_c_c_a_a_a_a.o and asm/overlays/rom_7c097c/ovl_30_c_c_a_a_a_c.o in
 * goldensun/overlays/rom_7c097c/overlay.ld.
 */
extern void __CutsceneStart();
extern void __Func_801776c();
extern void __CutsceneEnd();

void OvlFunc_936_20081e4(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29df, 1);
    __CutsceneEnd();
}
