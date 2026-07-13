// fakematch
/* Cluster OvlFunc_924_200b5dc..OvlFunc_924_200b5dc extracted from goldensun/asm/overlays/rom_7ac2d8/ovl_35b8_a_a_a_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ac2d8/ovl_35b8_a_a_a_c_a.o and asm/overlays/rom_7ac2d8/ovl_35b8_a_a_a_c_c.o in
 * goldensun/overlays/rom_7ac2d8/overlay.ld.
 */

void OvlFunc_924_200b5dc(void)
{
	__CutsceneStart();
	{
		register unsigned int rq __asm__("r0") = 0;
		__asm__ volatile ("" : : "r" (rq));
		__MapActor_SetAnim(rq, 1);
	}
	{
		register unsigned int rm __asm__("r0") = 0x953;
		__asm__ volatile ("" : : "r" (rm));
		__Func_801776c(rm, 1);
	}
	__CutsceneEnd();
}
