/* Cluster Func_8003f78..Func_8003f78 extracted from goldensun/asm/rom_c0/rom_3e58.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_3e58_a.o and asm/rom_c0/rom_3e58_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned short iwram_3001b10[];
extern void Func_8003f04(unsigned int idx);

unsigned int Func_8003f78(unsigned int arg0)
{
	unsigned short *slot;
	int v;

	slot = &iwram_3001b10[arg0 * 2];
	if (arg0 > 0x5f)
		return -1;
	if (*slot > 0x10) {
		Func_8003f04(arg0);
		v = 1;
		*slot = v;
	}
	return 0;
}
