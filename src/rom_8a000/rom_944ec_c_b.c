/* Cluster Func_8096c48..Func_8096c48 extracted from goldensun/asm/rom_8a000/rom_944ec_c.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_944ec_c_a.o and asm/rom_8a000/rom_944ec_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int Func_8003f3c(unsigned int);

unsigned int Func_8096c48(unsigned int arg0, unsigned int arg1)
{
	unsigned char *p5 = (unsigned char *)arg0;
	unsigned char *p6 = (unsigned char *)arg1;

	if (!arg0)
		return 0;

	if (!arg1) {
		p5[0x1d] |= 1;
	} else {
		Func_8003f3c(p5[0x1c]);
		p5[0x1c] = p6[0x1c];
		p5[0x1d] |= 1;
		p5 = p6;
	}

	return (unsigned int)p5;
}
