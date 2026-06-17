/* Cluster Func_80b8808..Func_80b8808 extracted from goldensun/asm/rom_b5000/rom_b8228_c_a_c_a.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b8228_c_a_c_a_a.o and asm/rom_b5000/rom_b8228_c_a_c_a_c.o in
 * goldensun/stage1.ld.
 */
int Func_80b8808(unsigned int r0)
{
	unsigned int r3;

	if (r0 <= 7) {
		return 0;
	}
	r3 = r0 - 0x80;
	if (r3 <= 5) {
		return 0;
	}
	return -1;
}
