/* Cluster OvlFunc_967_20083f4..OvlFunc_967_20083f4 extracted from goldensun/asm/overlays/rom_7f21b8/ovl_30_c_c.s.
 *
 * Total .text for this TU = 116 bytes (= 0x74).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f21b8/ovl_30_c_c_a.o and asm/overlays/rom_7f21b8/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7f21b8/overlay.ld.
 */
void OvlFunc_967_20083f4(void) {
    __SetFlag(0x9bc);
    __CutsceneStart();
    __Func_808e118();
    __CutsceneWait(0xa);
    __Func_80933f8(0xf0 << 15, -1, 0xc0 << 15, 1);
    __Func_8093530();
    __CutsceneWait(0x1e);
    __MessageID(0x288b);
    __ActorMessage(0xc, 0);
    __CutsceneWait(0xa);
    __Func_809280c(0, 0xc, 0);
    __CutsceneWait(0x1e);
    __MapActor_DoAnim(0, 3);
    __CutsceneWait(0x1e);
    __CutsceneEnd();
}
