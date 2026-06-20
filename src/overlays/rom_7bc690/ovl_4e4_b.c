/* Cluster OvlFunc_933_2008e00..OvlFunc_933_2008e00 extracted from goldensun/asm/overlays/rom_7bc690/ovl_4e4.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bc690/ovl_4e4_a.o and asm/overlays/rom_7bc690/ovl_4e4_c.o in
 * goldensun/overlays/rom_7bc690/overlay.ld.
 */
extern int Func_8000948(int);

int OvlFunc_933_2008e00(int *a, int *b)
{
  int r3;
  int r4;
  int r2;
  int new_var;
  int new_var2;
  int (*fp)(int);
  r3 = *(a++);
  r4 = *(b++);
  r2 = *((int *) (((char *) a) + 4));
  r4 -= r3;
  r3 = (new_var = *b);
  r3 -= r2;
  r4 >>= 16;
  r3 >>= 16;
  new_var2 = (r4 * r4) + (r3 * r3);
  fp = Func_8000948;
  r4 = fp(new_var2);
  return r4;
}
