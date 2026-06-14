/* Cluster Func_80122ac..Func_80122ac extracted from goldensun/asm/rom_9000/rom_1219c_a.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_1219c_a_a.o and asm/rom_9000/rom_1219c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int Func_8012204(unsigned int);

unsigned int Func_80122ac(unsigned int arg0, unsigned int arg1)
{
	unsigned int r0;

	r0 = Func_8012204(arg1);
	if (r0 - 5 <= 7) {
		return 0;
	}
	return -1;
}
