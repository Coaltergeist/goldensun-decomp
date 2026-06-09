/* Cluster Func_80bf208..Func_80bf208 extracted from goldensun/asm/rom_b5000/rom_bbb0c_a_c.s.
 *
 * Total .text for this TU = 72 bytes (= 0x48).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_bbb0c_a_c_a.o and asm/rom_b5000/rom_bbb0c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern int _GetUnit(void);
extern int _RPGRandom(void);

unsigned int Func_80bf208(int arg0, int arg1, int arg2)
{
	int v;
	int t;
	v = _GetUnit();
	if (arg1 <= 5) {
		int e;
		e = *(unsigned char *)(v + 0x42);
		t = (e * 3 - arg1 * 5 + arg2) * 0x28f;
		if (t >= (_RPGRandom() & 0xffff))
			return 1;
	}
	return 0;
}
