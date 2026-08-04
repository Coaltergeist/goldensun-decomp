/* Cluster OvlFunc_965_2009214..OvlFunc_965_2009214 extracted from goldensun/asm/overlays/rom_7ef4f4/ovl_30_a_c_c_c_c_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ef4f4/ovl_30_a_c_c_c_c_c_a.o and asm/overlays/rom_7ef4f4/ovl_30_a_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7ef4f4/overlay.ld.
 */

void OvlFunc_965_2009214(void)
{
	__CutsceneStart();
	{
		unsigned int rq = 0;
		__MapActor_SetAnim(rq, 1);
	}
	{
		unsigned int rm = 0x2693;
		__Func_801776c(rm, 1);
	}
	__CutsceneEnd();
}
