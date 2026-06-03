/* Cluster Func_808b398..Func_808b398 extracted from goldensun/asm/rom_8a000/rom_8ace0_a.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8ace0_a_a.o and asm/rom_8a000/rom_8ace0_a_c.o in
 * goldensun/stage1.ld.
 */
extern int _Func_8079338(int arg0);

int Func_808b398(int arg0)
{
	int r5 = arg0;
	if (r5 <= 8) {
		if (_Func_8079338(0x20)) {
			if (r5 == 0)
				r5 = 0x12;
			if (r5 == 1)
				r5 = 0x13;
		} else if (_Func_8079338(0x21)) {
			if (r5 == 0)
				r5 = 0x11;
		}
	}
	return r5;
}
