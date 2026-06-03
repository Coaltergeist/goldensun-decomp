/* Cluster Func_80773f4..Func_80773f4 extracted from goldensun/asm/rom_77000/rom_77320_a.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_77320_a_a.o and asm/rom_77000/rom_77320_a_c.o in
 * goldensun/stage1.ld.
 */
void Func_80773f4(unsigned char *arg0, unsigned char *arg1, int arg2, int arg3)
{
	int i;
	if (arg3 != 0) {
		for (i = 0; i < arg2; i++) {
			*arg1 = *arg0;
			arg0++;
			arg1++;
		}
	} else {
		if (arg2 > 0) {
			i = arg2;
			do {
				*arg0 = *arg1;
				i--;
				arg1++;
				arg0++;
			} while (i != 0);
		}
	}
}
