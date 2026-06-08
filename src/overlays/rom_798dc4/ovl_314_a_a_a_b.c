/* Cluster OvlFunc_903_2008314..OvlFunc_903_2008314 extracted from goldensun/asm/overlays/rom_798dc4/ovl_314_a_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_798dc4/ovl_314_a_a_a_a.o and asm/overlays/rom_798dc4/ovl_314_a_a_a_c.o in
 * goldensun/overlays/rom_798dc4/overlay.ld.
 */
extern void __ActorMessage(unsigned int arg0, unsigned int arg1);
extern void __CutsceneWait(unsigned int arg0);

void OvlFunc_903_2008314(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}
