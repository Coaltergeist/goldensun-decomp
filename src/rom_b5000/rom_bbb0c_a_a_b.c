/* Cluster Func_80bd3c8..Func_80bd3c8 extracted from goldensun/asm/rom_b5000/rom_bbb0c_a_a.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_bbb0c_a_a_a.o and asm/rom_b5000/rom_bbb0c_a_a_c.o in
 * goldensun/stage1.ld.
 */
unsigned int Func_80bd3c8(int arg0)
{
	int r3;
	if (arg0 == 0x7e)
		return 1;
	arg0 = (int)_GetMoveInfo(arg0);
	r3 = *(unsigned char *)((char *)arg0 + 9);
	return (unsigned int)(-r3 | r3) >> 31;
}
