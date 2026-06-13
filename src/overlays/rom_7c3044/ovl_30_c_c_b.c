/* Cluster OvlFunc_937_2008144..OvlFunc_937_2008144 extracted from goldensun/asm/overlays/rom_7c3044/ovl_30_c_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c3044/ovl_30_c_c_a.o and asm/overlays/rom_7c3044/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7c3044/overlay.ld.
 */
void OvlFunc_937_2008144(void) {
    __CutsceneStart();
    __MessageID(0x1add);
    __ActorMessage(0xc, 0);
    __SetFlag(0x91 << 4);
    __CutsceneEnd();
}
