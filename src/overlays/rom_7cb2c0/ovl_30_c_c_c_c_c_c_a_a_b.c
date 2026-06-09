/* Cluster OvlFunc_945_200c86c..OvlFunc_945_200c86c extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a.o and asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
extern void __ActorMessage(int a, int b);
extern void __CutsceneWait(int a);

void OvlFunc_945_200c86c(int a) {
    __ActorMessage(a, 0);
    __CutsceneWait(10);
}
