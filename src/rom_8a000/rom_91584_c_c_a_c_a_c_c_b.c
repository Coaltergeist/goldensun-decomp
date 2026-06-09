/* Cluster MapActor_GetActor..MapActor_GetActor extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c_a_c_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_a.o and asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int GetFieldActor(int actorID);

int MapActor_GetActor(int actorID)
{
	int r;
	r = GetFieldActor(actorID);
	if (!r)
		return 0;
	return r;
}
