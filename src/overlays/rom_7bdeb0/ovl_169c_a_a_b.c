/* Cluster OvlFunc_934_2009748..OvlFunc_934_2009748 extracted from goldensun/asm/overlays/rom_7bdeb0/ovl_169c_a_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bdeb0/ovl_169c_a_a_a.o and asm/overlays/rom_7bdeb0/ovl_169c_a_a_c.o in
 * goldensun/overlays/rom_7bdeb0/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_934_2009748(void)
{
  char *new_var2;
  int r5;
  int off;
  int new_var;
  if (1)
  {
    off = 0xb6;
    off <<= 1;
    r5 = *((short *) (new_var2 = ((char *) (*((int *) iwram_3001ebc))) + off));
    __PlaySound(0x7b);
    new_var = r5;
    __Func_8091e9c(new_var);
  }
}
