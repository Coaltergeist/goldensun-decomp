/* Cluster OvlFunc_913_200a768..OvlFunc_913_200a768 extracted from goldensun/asm/overlays/rom_7a04ac/ovl_30_c_c_c_a_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a04ac/ovl_30_c_c_c_a_a_a.o and asm/overlays/rom_7a04ac/ovl_30_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_7a04ac/overlay.ld.
 */
extern void __ActorMessage(unsigned int arg0, unsigned int arg1);
extern void __CutsceneWait(unsigned int arg0);

void OvlFunc_913_200a768(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}
