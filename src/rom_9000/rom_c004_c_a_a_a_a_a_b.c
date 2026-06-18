/* Cluster Actor_SetScript..Actor_SetScript extracted from goldensun/asm/rom_9000/rom_c004_c_a_a_a_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_c004_c_a_a_a_a_a_a.o and asm/rom_9000/rom_c004_c_a_a_a_a_a_c.o in
 * goldensun/stage1.ld.
 */
void Actor_SetScript(unsigned int *actor, unsigned int script)
{
  unsigned short s;
  unsigned char *p;
  if (actor == 0)
  {
    return;
  }
  s = 0;
  *((unsigned int *) actor) = script;
  *((unsigned short *) (((char *) actor) + 4)) = s;
  p = ((unsigned char *) actor) + 0x5b;
  *p = 0;
  p += 2;
  *p = 0;
  p -= 6;
  *p = 0;
}
