/* Cluster OvlFunc_898_2008c54..OvlFunc_898_2008c54 extracted from goldensun/asm/overlays/rom_793768/ovl_314_c_c_a_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_c_a_c_c_c_a.o and asm/overlays/rom_793768/ovl_314_c_c_a_c_c_c_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern void __CutsceneStart(void);
extern void __MessageID(int id);
extern void OvlFunc_898_200973c(int a, int b, int c);
extern void __MapActor_DoAnim(int a, int b);
extern void __CutsceneWait(int a);
extern void __ActorMessage(int a, int b);
extern void __CutsceneEnd(void);

void OvlFunc_898_2008c54(void) {
    __CutsceneStart();
    __MessageID(0x137f);
    OvlFunc_898_200973c(0x14, 0, 2);
    __MapActor_DoAnim(0x14, 3);
    __CutsceneWait(0x14);
    __ActorMessage(0x14, 0);
    __CutsceneEnd();
}
