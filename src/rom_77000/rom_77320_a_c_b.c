/* Cluster Func_8077f40..Func_8077f40 extracted from goldensun/asm/rom_77000/rom_77320_a_c.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_77320_a_c_a.o and asm/rom_77000/rom_77320_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void SetFlag(unsigned int flagID);
extern void Func_8079ae8(unsigned int arg0);
extern void CalcStats(unsigned int pc);

void Func_8077f40(void)
{
	SetFlag(0x20);
	Func_8079ae8(0);
	Func_8079ae8(1);
	Func_8079ae8(5);
	CalcStats(0);
	CalcStats(1);
	CalcStats(5);
}
