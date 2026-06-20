/* Cluster MapTransitionOut..MapTransitionOut extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_a_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_a_c_a_a.o and asm/rom_8a000/rom_91584_c_c_a_a_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001ebc[];
extern void ScreenTransitionOut(int, int);

void MapTransitionOut(void)
{
  unsigned short *new_var;
  unsigned char *r5 = *((unsigned char **) iwram_3001ebc);
  unsigned short v;
  ScreenTransitionOut(*((int *) (r5 + 0x1c0)), *((int *) (r5 + 0x1c8)));
  new_var = (unsigned short *) (r5 + 0x1c6);
  v = 0;
  *new_var = v;
}
