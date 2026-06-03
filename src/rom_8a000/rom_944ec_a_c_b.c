/* Cluster Func_80967e4..Func_80967e4 extracted from goldensun/asm/rom_8a000/rom_944ec_a_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_944ec_a_c_a.o and asm/rom_8a000/rom_944ec_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_8096810(void);
extern void Func_8096960(void);
extern void Func_8096ab0(void);
extern void Func_8096af0(void);

void Func_80967e4(int param_1)
{
	if (param_1 == 0)
		Func_8096810();
	else if (param_1 == 1)
		Func_8096960();
	else if (param_1 == 2)
		Func_8096ab0();
	else if (param_1 == 3)
		Func_8096af0();
}
