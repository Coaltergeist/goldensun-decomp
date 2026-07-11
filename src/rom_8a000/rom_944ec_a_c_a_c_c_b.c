/* Cluster Func_8096574..Func_8096574 extracted from goldensun/asm/rom_8a000/rom_944ec_a_c_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_944ec_a_c_a_c_c_a.o and asm/rom_8a000/rom_944ec_a_c_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
void Func_8096574(int *p)
{
  int *new_var3;
  int new_var2;
  int *r4 = ((int **) p)[26];
  int cur;
  int new_var;
  int diff;
  unsigned char sign;
  cur = p[2];
  new_var2 = 31;
  diff = r4[2] - cur;
  sign = ((unsigned int) diff) >> 31;
  diff = (diff + sign) >> 1;
  cur += diff;
  p[2] = cur;
  new_var3 = &diff;
  cur = p[3];
  diff = r4[3] - cur;
  sign = ((unsigned int) (*new_var3)) >> 31;
  diff = (diff + sign) >> 1;
  cur += diff;
  p[3] = cur;
  cur = (new_var = p[4]);
  diff = r4[4] - cur;
  sign = ((unsigned int) diff) >> new_var2;
  diff = (diff + sign) >> 1;
  cur += diff;
  p[4] = cur;
}
