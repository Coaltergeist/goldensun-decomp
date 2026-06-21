/* Cluster MapActor_SetBehavior..MapActor_SetBehavior extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_c_c_a_a.o and asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void *GetFieldActor(int);
extern unsigned int Actor_SetBehavior(void *, int);

void MapActor_SetBehavior(int actorID, int behavior)
{
  unsigned char *actor;
  unsigned char cur;
  int new_var;
  actor = GetFieldActor(actorID);
  if (actor != ((unsigned char *) 0))
  {
    ;
    new_var = actor[0x5a] | 1;
    actor[0x5a] = new_var;
    Actor_SetBehavior(actor, behavior);
  }
}
