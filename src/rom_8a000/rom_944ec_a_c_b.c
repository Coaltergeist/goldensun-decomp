/* Cluster FieldMove..FieldMove extracted from goldensun/asm/rom_8a000/rom_944ec_a_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_944ec_a_c_a.o and asm/rom_8a000/rom_944ec_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void FieldMove_NoTarget(void);
extern void FieldMove_Target(void);
extern void Func_8096ab0(void);
extern void Func_8096af0(void);

void FieldMove(int param_1)
{
	if (param_1 == 0)
		FieldMove_NoTarget();
	else if (param_1 == 1)
		FieldMove_Target();
	else if (param_1 == 2)
		Func_8096ab0();
	else if (param_1 == 3)
		Func_8096af0();
}
