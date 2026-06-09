/* Cluster GetSummonInfo..GetSummonInfo extracted from goldensun/asm/rom_77000/rom_79460_c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_79460_c_c_a_a_a.o and asm/rom_77000/rom_79460_c_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char L84a9c[] __asm__(".L84a9c");

unsigned char *GetSummonInfo(unsigned int param_1)
{
	if (param_1 > 0xf)
		return (unsigned char *)0;
	return L84a9c + (param_1 << 3);
}
