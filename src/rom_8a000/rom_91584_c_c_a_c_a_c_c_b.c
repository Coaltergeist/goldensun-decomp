/* Cluster Func_8092054..Func_8092054 extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c_a_c_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_a.o and asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_808ba1c(int actorID);

int Func_8092054(int actorID)
{
	int r;
	r = Func_808ba1c(actorID);
	if (!r)
		return 0;
	return r;
}
