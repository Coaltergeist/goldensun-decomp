/* Cluster OvlFunc_922_2009730..OvlFunc_922_2009730 extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_c_a.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_c_a_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_c_a_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern unsigned int L3328[] __asm__(".L3328");
extern unsigned int *iwram_3001ee0;

void OvlFunc_922_2009730(void)
{
	if (L3328[0]) {
		*(unsigned int *)((char *)iwram_3001ee0 + 0x18) = 0;
	}
}
