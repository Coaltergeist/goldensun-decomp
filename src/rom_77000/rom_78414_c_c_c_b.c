/* Cluster RepairItem..RepairItem extracted from goldensun/asm/rom_77000/rom_78414_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_78414_c_c_c_a.o and asm/rom_77000/rom_78414_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void *GetUnit(int unit);

int RepairItem(int unit, int item)
{
  void *ptr;
  int r5;
  unsigned short r2;
  int r3;
  unsigned char new_var;
  int new_var2;
  r5 = item;
  new_var = 0xd8;
  ptr = GetUnit(unit);
  r5 <<= 1;
  ;
  r5 += new_var;
  ;
  ;
  if ((*((unsigned short *) (((char *) ptr) + r5))) == 0)
  {
    return -1;
  }
  ;
  *((unsigned short *) (((char *) ptr) + r5)) = 0xfbff & (*((unsigned short *) (((char *) ptr) + r5)));
  return 0;
}
