/* Cluster LoadFieldActors..LoadFieldActors extracted from goldensun/asm/rom_8a000/rom_91584_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_a_a_a.o and asm/rom_8a000/rom_91584_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern int FindMapActorSlot(void);
extern void LoadMapActors(void *info, int index);

void LoadFieldActors(void *actors)
{
	LoadMapActors(actors, FindMapActorSlot());
}
