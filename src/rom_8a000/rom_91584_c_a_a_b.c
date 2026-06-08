/* Cluster Func_80917ac..Func_80917ac extracted from goldensun/asm/rom_8a000/rom_91584_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_a_a_a.o and asm/rom_8a000/rom_91584_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_808b824(void);
extern void LoadMapActors(void *info, int index);

void Func_80917ac(void *actors)
{
	LoadMapActors(actors, Func_808b824());
}
