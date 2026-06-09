/* Cluster OvlFunc_891_200a3a4..OvlFunc_891_200a3a4 extracted from goldensun/asm/overlays/rom_78c76c/ovl_30_c_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78c76c/ovl_30_c_c_c_c_c_a.o and asm/overlays/rom_78c76c/ovl_30_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_78c76c/overlay.ld.
 */
extern void __ActorMessage(unsigned int arg0, unsigned int arg1);
extern void __CutsceneWait(unsigned int arg0);

void OvlFunc_891_200a3a4(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}
