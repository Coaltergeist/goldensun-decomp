/* Cluster Func_80925cc..Func_80925cc extracted from goldensun/asm/rom_8a000/rom_9259c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_9259c_a.o and asm/rom_8a000/rom_9259c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_809259c(void);
extern void MapActor_WaitScript(unsigned int actorID);

void Func_80925cc(unsigned int arg0)
{
	Func_809259c();
	MapActor_WaitScript(arg0);
}
