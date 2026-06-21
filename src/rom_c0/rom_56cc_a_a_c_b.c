/* Cluster Func_8005ac0..Func_8005ac0 extracted from goldensun/asm/rom_c0/rom_56cc_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_56cc_a_a_c_a.o and asm/rom_c0/rom_56cc_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int Func_8005b24(void);
extern unsigned int Func_8005b64(void);

unsigned int Func_8005ac0(void)
{
	unsigned int r3;
	if (Func_8005b24() > 0xf)
		return 1;
	r3 = Func_8005b64();
	return (unsigned int)(-(int)r3 | (int)r3) >> 31;
}
