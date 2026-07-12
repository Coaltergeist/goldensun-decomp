/* Cluster OvlFunc_965_2009214..OvlFunc_965_2009214 extracted from goldensun/asm/overlays/rom_7ef4f4/ovl_30_a_c_c_c_c_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ef4f4/ovl_30_a_c_c_c_c_c_a.o and asm/overlays/rom_7ef4f4/ovl_30_a_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7ef4f4/overlay.ld.
 */
// fakematch

void OvlFunc_965_2009214(void)
{
	__CutsceneStart();
	{
		register unsigned int rq __asm__("r0") = 0;
		__asm__ volatile ("" : : "r" (rq));
		__MapActor_SetAnim(rq, 1);
	}
	{
		register unsigned int rm __asm__("r0") = 0x2693;
		__asm__ volatile ("" : : "r" (rm));
		__Func_801776c(rm, 1);
	}
	__CutsceneEnd();
}
