/* Cluster Func_80e3958..Func_80e3958 extracted from goldensun/asm/rom_c9000/rom_e3958.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_e3958_a.o and asm/rom_c9000/rom_e3958_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80e3994(int unit, int *dest);

void Func_80e3958(int unit, int *dest)
{
	Func_80e3994(unit, dest);
	dest[1] -= 0x10;
}
