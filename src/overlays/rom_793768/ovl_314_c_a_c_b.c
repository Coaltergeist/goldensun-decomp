/* Cluster OvlFunc_898_200842c..OvlFunc_898_200842c extracted from goldensun/asm/overlays/rom_793768/ovl_314_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_a_c_a.o and asm/overlays/rom_793768/ovl_314_c_a_c_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern unsigned char L227c[] __asm__(".L227c");
extern unsigned char L20cc[] __asm__(".L20cc");

unsigned char *OvlFunc_898_200842c(void)
{
	if (__GetFlag(0x855))
		return L227c;
	return L20cc;
}
