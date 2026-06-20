/* Cluster Func_8095268..Func_8095268 extracted from goldensun/asm/rom_8a000/rom_944ec_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_944ec_a_a_c_a.o and asm/rom_8a000/rom_944ec_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern int galloc_ewram(int, int);

void Func_8095268(void)
{
  int v80;
  int v1;
  unsigned char *new_var;
  unsigned char *base = (unsigned char *) galloc_ewram(0x1e, 0x1f88);
  unsigned short *r2 = (unsigned short *) (base + ((0xfc << 1) << 4));
  v80 = 0x80;
  *r2 = v80;
  new_var = base + 0x1f82;
  v1 = 1;
  *((unsigned short *) new_var) = v1;
}
