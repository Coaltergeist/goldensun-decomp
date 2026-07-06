/* Cluster OvlFunc_901_200852c..OvlFunc_901_200852c extracted from goldensun/asm/overlays/rom_797990/ovl_314_c_c_a_a_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_797990/ovl_314_c_c_a_a_c_a_a.o and asm/overlays/rom_797990/ovl_314_c_c_a_a_c_a_c.o in
 * goldensun/overlays/rom_797990/overlay.ld.
 */
extern void __CutsceneStart(void);
extern void __Func_809280c(int a, int b, int c);
extern void __SetFlag(int flag);
extern void __MessageID(int id);
extern void __ActorMessage(int a, int b);
extern void __CutsceneEnd(void);

void OvlFunc_901_200852c(void) {
    __CutsceneStart();
    __Func_809280c(0xc, 0, 2);
    __SetFlag(0x306);
    __SetFlag(0x868);
    __MessageID(0x1caf);
    __ActorMessage(0xc, 0);
    __CutsceneEnd();
}
