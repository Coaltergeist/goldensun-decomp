/* Cluster OvlFunc_883_2008d2c..OvlFunc_883_2008d2c extracted from goldensun/asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_a_c.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_a_c_a.o and asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_a_c_c.o in
 * goldensun/overlays/rom_780898/overlay.ld.
 */
void OvlFunc_883_2008d2c(void) {
    __CutsceneStart();
    __Func_80925cc(0x13, 2);
    __CutsceneWait(0x14);
    __Func_809280c(0x13, 0, 0x14);
    __MessageID(0x1c9d);
    __Func_8093054(0x13, 0);
    __SetFlag(0x307);
    __CutsceneEnd();
}
