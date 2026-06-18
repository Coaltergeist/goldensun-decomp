/* Cluster Actor_SetRotation..Actor_SetRotation extracted from goldensun/asm/rom_9000/rom_c004_c_a_a_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_c004_c_a_a_a_a_c_a.o and asm/rom_9000/rom_c004_c_a_a_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
void Actor_SetRotation(int actor, int rotation)
{
  unsigned char *new_var;
  unsigned char val;
  unsigned char *p;
  val = 0;
  if (actor == val)
  {
    return;
  }
  new_var = (unsigned char *) (actor + 0x54);
  p = new_var;
  ;
  if (((*p) & 0xf) != 1)
  {
    return;
  }
  *((unsigned short *) ((*((unsigned int *) (actor + 0x50))) + 0x1e)) = rotation;
}
