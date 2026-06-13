/* Cluster OvlFunc_942_20084b8..OvlFunc_942_20084b8 extracted from goldensun/asm/overlays/rom_7c6bac/ovl_30_c_c_a_c.s.
 *
 * Total .text for this TU = 100 bytes (= 0x64).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c6bac/ovl_30_c_c_a_c_a.o and asm/overlays/rom_7c6bac/ovl_30_c_c_a_c_c.o in
 * goldensun/overlays/rom_7c6bac/overlay.ld.
 */
void OvlFunc_942_20084b8(void) {
    __CutsceneStart();
    if (__GetFlag(0x8a7)) {
        __MessageID(0x1d1f);
        __Func_8092c40(0xd, 0);
    } else if (__GetFlag(0x8a5)) {
        __MessageID(0x1d1b);
        __ActorMessage(0xd, 0);
    } else {
        __MessageID(0x1d19);
        __ActorMessage(0xd, 0);
    }
    __CutsceneEnd();
}
