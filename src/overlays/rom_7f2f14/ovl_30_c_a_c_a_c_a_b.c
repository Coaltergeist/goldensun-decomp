/* Cluster OvlFunc_968_2009024..OvlFunc_968_2009024 extracted from goldensun/asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_a_a.o and asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_a_c.o in
 * goldensun/overlays/rom_7f2f14/overlay.ld.
 */

void OvlFunc_968_2009024(void)
{
	__CutsceneStart();
	{
		unsigned int rq = 0;
		__MapActor_SetAnim(rq, 1);
	}
	{
		unsigned int rm = 0x2682;
		__Func_801776c(rm, 1);
	}
	__CutsceneEnd();
}
