/* Cluster Func_80b0634..Func_80b0634 extracted from goldensun/asm/rom_b0000/rom_b0070_a_a_c_a_c.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b0000/rom_b0070_a_a_c_a_c_a.o and asm/rom_b0000/rom_b0070_a_a_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001f2c[];
extern void _Func_80a17c4(unsigned int);
extern unsigned int _YesNoMenu2(int, int, unsigned int);

unsigned int Func_80b0634(unsigned int arg0)
{
  unsigned char *r5;
  unsigned char r6;
  unsigned int r7;
  r5 = (unsigned char *) ((*((unsigned int *) iwram_3001f2c)) + 0x380);
  r7 = arg0;
  arg0++;
  arg0--;
  r6 = *((unsigned char *) ((*((unsigned int *) r5)) + 5));
  _Func_80a17c4(*((unsigned int *) r5));
  r7 = _YesNoMenu2(7, 5, r7);
  *((unsigned char *) ((*((unsigned int *) r5)) + 5)) = r6;
  return r7;
}
