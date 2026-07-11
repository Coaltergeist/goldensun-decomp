/* Cluster Func_80947e4..Func_80947e4 extracted from goldensun/asm/rom_8a000/rom_944ec_a_a_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_944ec_a_a_a_a_c_a.o and asm/rom_8a000/rom_944ec_a_a_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80944ec(void);
extern void Func_8094544(void);

void Func_80947e4(void)
{
  char *new_var;
  unsigned int *r2;
  unsigned short r3;
  unsigned short r1;
  StopTask(Func_80944ec);
  StopTask(Func_8094544);
  r2 = (unsigned int *) 0x040000b0;
  r3 = 0xc5ff;
  r1 = *((volatile unsigned short *) (((char *) r2) + 0xa));
  *((volatile unsigned short *) (((char *) r2) + 0xa)) = (r3 &= r1);
  r3 = 0x7fff;
  r2++;
  r2--;
  r1 = *((volatile unsigned short *) (((char *) r2) + 0xa));
  new_var = (char *) r2;
  r3 &= r1;
  *((volatile unsigned short *) (((char *) r2) + 0xa)) = r3;
  r3 = *((volatile unsigned short *) (new_var + 0xa));
}
