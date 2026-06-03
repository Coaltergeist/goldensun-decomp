/* Cluster Func_80b2778..Func_80b2778 extracted from goldensun/asm/rom_b0000/rom_b0070_c.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b0000/rom_b0070_c_a.o and asm/rom_b0000/rom_b0070_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *_Func_8077394(void);

unsigned int Func_80b2778(unsigned int arg0, unsigned int arg1)
{
	unsigned char *p;
	unsigned char v;
	unsigned int result;

	p = _Func_8077394();
	v = p[15];
	result = 0;
	if (arg1 == 0)
		result = (v * 5) << 2;
	else if (arg1 == 1)
		result = 10;
	else if (arg1 == 2)
		result = 50;
	else if (arg1 == 3)
		result = (v * 5) << 1;
	return result;
}
