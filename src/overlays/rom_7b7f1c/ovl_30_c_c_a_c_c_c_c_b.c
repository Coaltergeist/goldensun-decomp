/* Cluster OvlFunc_930_2008fcc..OvlFunc_930_2008fcc extracted from goldensun/asm/overlays/rom_7b7f1c/ovl_30_c_c_a_c_c_c_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b7f1c/ovl_30_c_c_a_c_c_c_c_a.o and asm/overlays/rom_7b7f1c/ovl_30_c_c_a_c_c_c_c_c.o in
 * goldensun/overlays/rom_7b7f1c/overlay.ld.
 */
// fakematch

void OvlFunc_930_2008fcc(void)
{
	__CutsceneStart();
	{
		register unsigned int rq __asm__("r0") = 0;
		__asm__ volatile ("" : : "r" (rq));
		__MapActor_SetAnim(rq, 1);
	}
	{
		register unsigned int rm __asm__("r0") = 0x1a12;
		__asm__ volatile ("" : : "r" (rm));
		__Func_801776c(rm, 1);
	}
	__CutsceneEnd();
}
