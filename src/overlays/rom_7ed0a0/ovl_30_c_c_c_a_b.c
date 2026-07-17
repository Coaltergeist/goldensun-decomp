/* Cluster OvlFunc_964_200a330..OvlFunc_964_200a330 extracted from goldensun/asm/overlays/rom_7ed0a0/ovl_30_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ed0a0/ovl_30_c_c_c_a_a.o and asm/overlays/rom_7ed0a0/ovl_30_c_c_c_a_c.o in
 * goldensun/overlays/rom_7ed0a0/overlay.ld.
 */

void OvlFunc_964_200a330(void)
{
	__CutsceneStart();
	{
		unsigned int rq = 0;
		__MapActor_SetAnim(rq, 1);
	}
	{
		unsigned int rm = 0x268b;
		__Func_801776c(rm, 1);
	}
	__CutsceneEnd();
}
