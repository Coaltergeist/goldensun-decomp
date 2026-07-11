/* Cluster OvlFunc_965_2008030..OvlFunc_965_2008030 extracted from goldensun/asm/overlays/rom_7ef4f4/ovl_30_a_a_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ef4f4/ovl_30_a_a_a_a.o and asm/overlays/rom_7ef4f4/ovl_30_a_a_a_c.o in
 * goldensun/overlays/rom_7ef4f4/overlay.ld.
 */
/* Cluster OvlFunc_965_2008030..OvlFunc_965_2008030 extracted from goldensun/asm/overlays/rom_799abc/ovl_30_a_a_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_799abc/ovl_30_a_a_a_a.o and asm/overlays/rom_799abc/ovl_30_a_a_a_c.o in
 * goldensun/overlays/rom_799abc/overlay.ld.
 */
extern int Func_8000948(int);

int OvlFunc_965_2008030(int *a, int *b)
{
  int dx;
  int dy;
  int dz;
  int mag;
  int new_var;
  int (*fp)(int);
  dx = ((*(a++)) - (*(b++))) >> 16;
  if (1)
  {
    dy = ((*(a++)) - (*(b++))) >> 16;
    dz = ((*a) - (*b)) >> 16;
    mag = ((dx * dx) + ((float) (dy * dy))) + (dz * dz);
  }
  new_var = ((dx * dx) + (dy * dy)) + (dz * dz);
  fp = Func_8000948;
  return fp(new_var);
}
