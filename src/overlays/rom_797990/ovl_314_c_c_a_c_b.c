/* Cluster OvlFunc_901_2008f00..OvlFunc_901_2008f00 extracted from goldensun/asm/overlays/rom_797990/ovl_314_c_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_797990/ovl_314_c_c_a_c_a.o and asm/overlays/rom_797990/ovl_314_c_c_a_c_c.o in
 * goldensun/overlays/rom_797990/overlay.ld.
 */
extern void __CutsceneStart();
extern void __Func_801776c();
extern void __CutsceneEnd();

void OvlFunc_901_2008f00(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29dc, 1);
    __CutsceneEnd();
}
