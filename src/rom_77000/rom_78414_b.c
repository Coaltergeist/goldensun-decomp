/* Cluster Func_807845c..Func_807845c extracted from goldensun/asm/rom_77000/rom_78414.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_78414_a.o and asm/rom_77000/rom_78414_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int Func_8078480(unsigned int item);
extern unsigned int CanEquipItem(unsigned int unit, unsigned int item);

unsigned int Func_807845c(unsigned int arg0, unsigned int arg1)
{
	if (!Func_8078480(arg1))
		return 1;
	return CanEquipItem(arg0, arg1);
}
