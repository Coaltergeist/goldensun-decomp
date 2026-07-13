// fakematch
/* Cluster OvlFunc_883_2008fbc..OvlFunc_883_2008fbc extracted from goldensun/asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_a.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_a_a.o and asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_c_c_c_a_c.o in
 * goldensun/overlays/rom_780898/overlay.ld.
 */
extern unsigned char L755a[] __asm__(".L755a");

void OvlFunc_883_2008fbc(void)
{
	__PlaySound(0x9e);
	{
		register unsigned char *rp __asm__("r0") = L755a;
		__asm__ volatile ("" : : "r" (rp));
		__Func_8010560(rp, 0x23, 0x4a);
	}
	{
		register unsigned int rq __asm__("r0") = 0;
		register unsigned int r1v __asm__("r1") = 0x66;
		__asm__ volatile ("" : : "r" (rq), "r" (r1v));
		__Func_809218c(rq, r1v, 0x4b6);
	}
	__Func_8091e9c(0xa);
}
