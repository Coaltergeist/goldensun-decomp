/* Cluster OvlFunc_899_200c63c..OvlFunc_899_200c63c extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_c_c_c_c.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_c_c_c_c_a.o and asm/overlays/rom_794ac0/ovl_30_c_c_c_c_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
void OvlFunc_899_200c63c(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
	unsigned int r5;
	unsigned int r6;

	r5 = arg0;
	r6 = arg2;
	__MapActor_SetAnim(arg0, arg1, arg2);
	__Func_8092504(r5);
	__CutsceneWait(r6);
}
