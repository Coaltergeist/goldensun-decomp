/* Cluster GetInventoryItem..GetInventoryItem extracted from goldensun/asm/rom_77000/rom_78414_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_78414_c_a_a.o and asm/rom_77000/rom_78414_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern int GetUnit(int);

int GetInventoryItem(int unit, int slot)
{
  int *new_var;
  unsigned short new_var2;
  int r5;
  unsigned int r3;
  r5 = slot;
  unit = GetUnit(unit);
  r5 = (r5 << 1) + 0xd8;
  new_var = &unit;
  unit = *((unsigned short *) (((char *) unit) + r5));
  new_var2 = (*new_var) >> 11;
  r3 = unit & 0x1ff;
  unit = new_var2;
  unit = unit + 1;
  if (r3 == 0)
  {
    unit = 0;
  }
  return unit;
}
