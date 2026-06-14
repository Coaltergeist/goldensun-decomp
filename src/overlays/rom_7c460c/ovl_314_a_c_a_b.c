/* Cluster OvlFunc_939_2008738..OvlFunc_939_2008738 extracted from goldensun/asm/overlays/rom_7c460c/ovl_314_a_c_a.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c460c/ovl_314_a_c_a_a.o and asm/overlays/rom_7c460c/ovl_314_a_c_a_c.o in
 * goldensun/overlays/rom_7c460c/overlay.ld.
 */
void OvlFunc_939_2008738(void) {
    __CutsceneStart();
    __MapActor_Emote(0x11, 0x81 << 1, 0x3c);
    __MessageID(0x1b9c);
    __Func_8093054(0x11, 0);
    __CutsceneEnd();
}
