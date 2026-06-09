/* Cluster DeleteMapActorPtr..DeleteMapActorPtr extracted from goldensun/asm/rom_8a000/rom_8d9a4_c_a_c_c_c_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_c_a_c_c_c_c_a.o and asm/rom_8a000/rom_8d9a4_c_a_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void _DeleteActor(void *actor);

void DeleteMapActorPtr(void *actor)
{
	if (actor)
		_DeleteActor(actor);
}
