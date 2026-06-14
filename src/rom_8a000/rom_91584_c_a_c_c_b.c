/* Cluster Func_80917f4..Func_80917f4 extracted from goldensun/asm/rom_8a000/rom_91584_c_a_c_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_a_c_c_a.o and asm/rom_8a000/rom_91584_c_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void _AddPartyMember(unsigned int);
extern void _Func_8021488(unsigned int, unsigned int);

void Func_80917f4(unsigned int arg0, unsigned int arg1)
{
	unsigned int r5;
	unsigned int r6;

	r6 = arg1;
	r5 = arg0;
	_AddPartyMember(r5);
	_AddPartyMember(r6);
	_Func_8021488(r5, r6);
}
