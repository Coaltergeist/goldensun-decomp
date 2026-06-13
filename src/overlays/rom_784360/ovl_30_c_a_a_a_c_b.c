/* Cluster OvlFunc_884_200810c..OvlFunc_884_200810c extracted from goldensun/asm/overlays/rom_784360/ovl_30_c_a_a_a_c.s.
 *
 * Total .text for this TU = 76 bytes (= 0x4c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_784360/ovl_30_c_a_a_a_c_a.o and asm/overlays/rom_784360/ovl_30_c_a_a_a_c_c.o in
 * goldensun/overlays/rom_784360/overlay.ld.
 */
void OvlFunc_884_200810c(void) {
    __CutsceneStart();
    __Func_801776c(0x111f, 1);
    __PlaySound(0x7e);
    __Func_808c2dc(0x3e7, 0);
    __CutsceneWait(0xa);
    __Func_801776c(0x974, 1);
    __Func_8019a54();
    __ClearFlag(0xa1 << 1);
    __CutsceneEnd();
}
