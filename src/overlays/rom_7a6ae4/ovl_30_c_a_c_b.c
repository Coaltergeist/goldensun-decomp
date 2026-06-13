/* Cluster OvlFunc_920_20081f0..OvlFunc_920_20081f0 extracted from goldensun/asm/overlays/rom_7a6ae4/ovl_30_c_a_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a6ae4/ovl_30_c_a_c_a.o and asm/overlays/rom_7a6ae4/ovl_30_c_a_c_c.o in
 * goldensun/overlays/rom_7a6ae4/overlay.ld.
 */
void OvlFunc_920_20081f0(void) {
    __CutsceneStart();
    __MapActor_SetPos(9, 0, 0);
    __SetFlag(0x882);
    __CutsceneEnd();
}
