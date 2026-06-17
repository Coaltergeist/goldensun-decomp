/* Cluster Func_809ae3c..Func_809ae3c extracted from goldensun/asm/rom_8a000/rom_9ad70_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_9ad70_a_a_a.o and asm/rom_8a000/rom_9ad70_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int MapActor_GetName(unsigned int actorID);

unsigned int Func_809ae3c(unsigned int arg0)
{
	unsigned int r5;
	r5 = arg0;
	if (MapActor_GetName(r5) == 0xff)
		return -1;
	return r5;
}
