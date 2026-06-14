/* Cluster OvlFunc_899_2008354..OvlFunc_899_2008354 extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_a_a_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_a_a_c_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_a_a_c_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern void OvlFunc_899_200c624(unsigned int, unsigned int, unsigned int);

void OvlFunc_899_2008354(unsigned int arg0)
{
	unsigned int r5;

	r5 = arg0;
	__MapActor_SetAnim(r5, 1);
	OvlFunc_899_200c624(r5, 0, 2);
	__ActorMessage(r5, 0);
}
