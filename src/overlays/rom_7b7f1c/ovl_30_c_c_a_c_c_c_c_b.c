/* Cluster OvlFunc_930_2008fcc..OvlFunc_930_2008fcc extracted from goldensun/asm/overlays/rom_7b7f1c/ovl_30_c_c_a_c_c_c_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b7f1c/ovl_30_c_c_a_c_c_c_c_a.o and asm/overlays/rom_7b7f1c/ovl_30_c_c_a_c_c_c_c_c.o in
 * goldensun/overlays/rom_7b7f1c/overlay.ld.
 */

void OvlFunc_930_2008fcc(void)
{
	__CutsceneStart();
	{
		unsigned int rq = 0;
		__MapActor_SetAnim(rq, 1);
	}
	{
		unsigned int rm = 0x1a12;
		__Func_801776c(rm, 1);
	}
	__CutsceneEnd();
}
