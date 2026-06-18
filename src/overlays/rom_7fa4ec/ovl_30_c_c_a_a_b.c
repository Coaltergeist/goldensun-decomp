/* Cluster OvlFunc_970_200804c..OvlFunc_970_200804c extracted from goldensun/asm/overlays/rom_7fa4ec/ovl_30_c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7fa4ec/ovl_30_c_c_a_a_a.o and asm/overlays/rom_7fa4ec/ovl_30_c_c_a_a_c.o in
 * goldensun/overlays/rom_7fa4ec/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_970_200804c(void)
{
  unsigned char *base;
  int new_var;
  short *new_var2;
  short val;
  int new_var3;
  unsigned int addr;
  base = *((unsigned char **) iwram_3001ebc);
  new_var = 0xa0;
  base += 0xb6 << 1;
  new_var2 = (short *) base;
  val = *new_var2;
  __Func_8091e9c(val);
 do { addr = new_var; } while (0);
  new_var3 = 0;
  addr <<= 19;
  *((unsigned short *) addr) = new_var3;
}
