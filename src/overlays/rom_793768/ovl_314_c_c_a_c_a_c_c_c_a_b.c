/* Cluster OvlFunc_898_20088cc..OvlFunc_898_20088cc extracted from goldensun/asm/overlays/rom_793768/ovl_314_c_c_a_c_a_c_c_c_a.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_c_a_c_a_c_c_c_a_a.o and asm/overlays/rom_793768/ovl_314_c_c_a_c_a_c_c_c_a_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern int _MSG_12c0;
extern void OvlFunc_898_200973c();

void OvlFunc_898_20088cc(void) {
    __CutsceneStart();
    __MessageID((int)&_MSG_12c0);
    OvlFunc_898_200973c(0x15, 0, 2);
    __MapActor_Emote(0x15, 0x103, 0);
    __CutsceneWait(0x1e);
    __Func_8092c40(0x15, 0);
    __CutsceneEnd();
}
