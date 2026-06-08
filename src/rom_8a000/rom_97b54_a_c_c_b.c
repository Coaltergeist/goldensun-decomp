/* Cluster Func_80994c0..Func_80994c0 extracted from goldensun/asm/rom_8a000/rom_97b54_a_c_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_97b54_a_c_c_a.o and asm/rom_8a000/rom_97b54_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Field_Ply(void);
extern void Func_8097174(void);

void Func_80994c0(void)
{
	Field_Ply();
	Func_8097174();
}
