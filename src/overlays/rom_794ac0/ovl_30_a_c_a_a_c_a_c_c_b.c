/* Cluster OvlFunc_899_20082e8..OvlFunc_899_20082e8 extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_a_a_c_a_c_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_a_a_c_a_c_c_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_a_a_c_a_c_c_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern void __CutsceneStart();
extern void __Func_801776c();
extern void __CutsceneEnd();

void OvlFunc_899_20082e8(void) {
    __CutsceneStart();
    __Func_801776c(0x929, 1);
    __Func_801776c(0x949, 1);
    __CutsceneEnd();
}
