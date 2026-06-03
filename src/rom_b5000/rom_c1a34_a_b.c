/* Cluster Func_80c2470..Func_80c2470 extracted from goldensun/asm/rom_b5000/rom_c1a34_a.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_c1a34_a_a.o and asm/rom_b5000/rom_c1a34_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *_Func_8078414(unsigned int arg);

unsigned int Func_80c2470(unsigned int arg0) {
	unsigned int r6;
	unsigned int r5;
	unsigned char r2;

	r6 = arg0 & 0x1ff;
	r5 = 0;
	if (r6 == 0)
		return 0;
	r2 = _Func_8078414(r6)[3];
	if (r2 & 8)
		r5 = 1;
	r5 <<= 1;
	if (r2 & 4)
		r5 += 1;
	r5 <<= 9;
	r5 += r6;
	return r5;
}
