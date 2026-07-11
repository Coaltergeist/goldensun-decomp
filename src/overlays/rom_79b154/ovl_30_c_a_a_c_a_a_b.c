/* Cluster OvlFunc_907_2008170..OvlFunc_907_2008170 extracted from goldensun/asm/overlays/rom_79b154/ovl_30_c_a_a_c_a_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79b154/ovl_30_c_a_a_c_a_a_a.o and asm/overlays/rom_79b154/ovl_30_c_a_a_c_a_a_c.o in
 * goldensun/overlays/rom_79b154/overlay.ld.
 */
extern void __CutsceneStart();
extern void __Func_801776c();
extern void __CutsceneEnd();

void OvlFunc_907_2008170(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29dd, 1);
    __CutsceneEnd();
}
