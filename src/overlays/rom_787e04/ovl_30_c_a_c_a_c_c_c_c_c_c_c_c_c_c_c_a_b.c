/* Cluster OvlFunc_887_2008ef8..OvlFunc_887_2008ef8 extracted from goldensun/asm/overlays/rom_787e04/ovl_30_c_a_c_a_c_c_c_c_c_c_c_c_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_787e04/ovl_30_c_a_c_a_c_c_c_c_c_c_c_c_c_c_c_a_a.o and asm/overlays/rom_787e04/ovl_30_c_a_c_a_c_c_c_c_c_c_c_c_c_c_c_a_c.o in
 * goldensun/overlays/rom_787e04/overlay.ld.
 */
extern void __CutsceneStart(void);
extern void __Func_809280c(int a, int b, int c);
extern void __MessageID(int id);
extern void __ActorMessage(int a, int b);
extern void __Func_8092adc(int a, int b, int c);
extern void __SetFlag(int flag);
extern void __CutsceneEnd(void);

void OvlFunc_887_2008ef8(void) {
    __CutsceneStart();
    __Func_809280c(0x10, 0, 0xa);
    __MessageID(0x1c13);
    __ActorMessage(0x10, 0);
    __Func_8092adc(0x10, 0xb000, 0xa);
    __SetFlag(0x301);
    __CutsceneEnd();
}
