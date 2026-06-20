/* Cluster MapTransitionIn..MapTransitionIn extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_a_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_a_c_a_a_a.o and asm/rom_8a000/rom_91584_c_c_a_a_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern void ScreenTransitionIn(int, int);
extern unsigned char iwram_3001ebc[];

void MapTransitionIn(void)
{
  int new_var;
  unsigned char *r5;
  unsigned char *r3;
  int new_var2;
  int r2;
  unsigned short *new_var3;
  r5 = *((unsigned char **) iwram_3001ebc);
  r2 = 0xe0 << 1;
  r3 = r5 + r2;
  r2 += 8;
  new_var = (new_var2 = -r2);
  ScreenTransitionIn(*((int *) r3), *((int *) (r5 - new_var)));
  new_var3 = (unsigned short *) (r5 + (0xe3 << 1));
  *new_var3 = (new_var = 1);
}
