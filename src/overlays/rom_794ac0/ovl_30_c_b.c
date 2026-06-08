/* Cluster OvlFunc_899_200c5f4..OvlFunc_899_200c5f4 extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_c_a.o and asm/overlays/rom_794ac0/ovl_30_c_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern void __ActorMessage(unsigned int arg0, unsigned int arg1);
extern void __CutsceneWait(unsigned int arg0);

void OvlFunc_899_200c5f4(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}
