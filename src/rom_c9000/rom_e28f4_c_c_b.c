/* Cluster Func_80e3944..Func_80e3944 extracted from goldensun/asm/rom_c9000/rom_e28f4_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_e28f4_c_c_a.o and asm/rom_c9000/rom_e28f4_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int PhysMove(unsigned int src, unsigned int dest);

int Func_80e3944(unsigned int arg0, unsigned int arg1)
{
	int r = PhysMove(arg0, arg1);
	*(int *)(arg1 + 4) -= 0x10;
	return r;
}
