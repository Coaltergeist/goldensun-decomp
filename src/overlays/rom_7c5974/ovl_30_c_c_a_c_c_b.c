/* Cluster OvlFunc_940_2008124..OvlFunc_940_2008124 extracted from goldensun/asm/overlays/rom_7c5974/ovl_30_c_c_a_c_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c5974/ovl_30_c_c_a_c_c_a.o and asm/overlays/rom_7c5974/ovl_30_c_c_a_c_c_c.o in
 * goldensun/overlays/rom_7c5974/overlay.ld.
 */
void OvlFunc_940_2008124(void) {
    __CutsceneStart();
    __MessageID(0x1bdb);
    __ActorMessage(0x14, 0);
    __SetFlag(0x94 << 4);
    __CutsceneEnd();
}
