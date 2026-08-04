/* Cluster Func_80b27b0..Func_80b27b0 extracted from goldensun/asm/rom_b0000/rom_b0070_c_c_a_a.s.
 *
 * Total .text for this TU = 92 bytes (= 0x5c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b0000/rom_b0070_c_c_a_a_a.o and asm/rom_b0000/rom_b0070_c_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *_GetUnit(int);

unsigned int Func_80b27b0(unsigned int arg0, unsigned int arg1)
{
	unsigned char *unit;
	unsigned int result;

	unit = _GetUnit(arg0);
	result = 0;
	if ((((arg1 == 0 && (*(short *)(unit + 0x38) <= 0)) ||
	      (arg1 == 1 && (*(signed char *)(unit + 0x131) != 0))) ||
	     (arg1 == 2 && (*(unsigned char *)(unit + 0x140) != 0))) ||
	    (arg1 == 3 && (*(signed char *)(unit + 0x130) != 0)))
	{
		result = 1;
	}
	return result;
}
