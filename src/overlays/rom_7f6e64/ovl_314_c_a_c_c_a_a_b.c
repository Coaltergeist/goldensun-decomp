/* Cluster OvlFunc_969_2008894..OvlFunc_969_2008894 extracted from goldensun/asm/overlays/rom_7f6e64/ovl_314_c_a_c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f6e64/ovl_314_c_a_c_c_a_a_a.o and asm/overlays/rom_7f6e64/ovl_314_c_a_c_c_a_a_c.o in
 * goldensun/overlays/rom_7f6e64/overlay.ld.
 */
extern void __ActorMessage(int a, int b);
extern void __CutsceneWait(int a);

void OvlFunc_969_2008894(int a) {
	__ActorMessage(a, 0);
	__CutsceneWait(0xa);
}
