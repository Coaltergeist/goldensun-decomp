// fakematch
/* Cluster Func_80b3210..Func_80b3210 extracted from goldensun/asm/rom_b0000/rom_b0070_c_c.s.
 *
 * Total .text for this TU = 116 bytes (= 0x74).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b0000/rom_b0070_c_c_a.o and asm/rom_b0000/rom_b0070_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001f2c[];
extern int _GetUnit(int);
extern signed char Lb4ab6[] __asm__(".Lb4ab6");

int Func_80b3210(int param)
{
  unsigned char *r6;
  signed char r10;
  signed char *new_var;
  signed char max;
  int count;
  int new_var2;
  int r7;
  int r5;
  unsigned char *r8;
  int unit;
  int field;
  r6 = *((unsigned char **) iwram_3001f2c);
  new_var = Lb4ab6;
  r10 = new_var[param];
  new_var2 = (int) r10;
  max = *((signed char *) (r6 + 0x3a7));
  count = 0;
  r7 = 0;
  if (count >= ((int) max))
  {
    goto done;
  }
  r8 = r6 + 2;
  r5 = 0xdb << 2;
  do
  {
    unit = *((short *) (r8 + r5));
    unit = _GetUnit(unit);
    field = *((short *) (((char *) unit) + 0x38));
    if (field != 0)
    {
      count++;
    }
    max = *((signed char *) (r6 + 0x3a7));
    r7++;
    r5 += 2;
  }
  while (r7 < ((int) max));
  done:
  return new_var2 * count;

}
