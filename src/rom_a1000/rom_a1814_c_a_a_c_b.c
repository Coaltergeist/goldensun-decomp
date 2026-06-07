/* Cluster Func_80a23f4..Func_80a23f4 extracted from goldensun/asm/rom_a1000/rom_a1814_c_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a1814_c_a_a_c_a.o and asm/rom_a1000/rom_a1814_c_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
void Func_80a23f4(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4)
{
	if (arg0) {
		*(unsigned short *)(arg0 + 8) = arg3;
		*(unsigned short *)(arg0 + 0xc) = arg1;
		*(unsigned short *)(arg0 + 0xa) = arg4;
		*(unsigned short *)(arg0 + 0xe) = arg2;
	}
}
