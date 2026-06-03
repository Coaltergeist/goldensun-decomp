/* Cluster Func_8005c08..Func_8005c08 extracted from goldensun/asm/rom_c0/rom_56cc.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_56cc_a.o and asm/rom_c0/rom_56cc_c.o in
 * goldensun/stage1.ld.
 */
int Func_8005c08(unsigned char *arg0, unsigned char *arg1, unsigned int arg2)
{
	int diff;
	diff = 0;
	while (arg2 != 0) {
		diff = *arg0 - *arg1;
		if (diff != 0)
			break;
		arg2--;
		arg0++;
		arg1++;
	}
	return diff;
}
