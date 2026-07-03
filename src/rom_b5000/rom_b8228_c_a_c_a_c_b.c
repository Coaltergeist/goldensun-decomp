/* Cluster Func_80b8888..Func_80b8888 extracted from goldensun/asm/rom_b5000/rom_b8228_c_a_c_a_c.s.
 *
 * Total .text for this TU = 72 bytes (= 0x48).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b8228_c_a_c_a_c_a.o and asm/rom_b5000/rom_b8228_c_a_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *_GetUnit(unsigned int arg0);
extern int Func_80b8808(unsigned int arg0);
extern void _Func_80198dc(void);
extern void _Func_8019908(unsigned int arg0, unsigned int arg1);
extern void _Func_80175a0(unsigned int arg0);

unsigned int Func_80b8888(short *arg0)
{
	int id;
	unsigned char *unit;
	int r0;

	id = arg0[0];
	unit = _GetUnit(id);
	r0 = Func_80b8808(id);
	if (r0 < 0)
		return -1;
	if (*(short *)(unit + 0x38) <= 0)
		return 0;
	_Func_80198dc();
	_Func_8019908(id, 1);
	_Func_80175a0(0x816);
	return 0;
}
