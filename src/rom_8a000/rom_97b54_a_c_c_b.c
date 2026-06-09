/* Cluster Field_Ply_Target..Field_Ply_Target extracted from goldensun/asm/rom_8a000/rom_97b54_a_c_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_97b54_a_c_c_a.o and asm/rom_8a000/rom_97b54_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Field_Ply(void);
extern void Func_8097174(void);

void Field_Ply_Target(void)
{
	Field_Ply();
	Func_8097174();
}
