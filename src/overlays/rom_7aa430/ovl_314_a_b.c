/* Cluster OvlFunc_923_2008314..OvlFunc_923_2008314 extracted from goldensun/asm/overlays/rom_7aa430/ovl_314_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7aa430/ovl_314_a_a.o and asm/overlays/rom_7aa430/ovl_314_a_c.o in
 * goldensun/overlays/rom_7aa430/overlay.ld.
 */
/* Cluster OvlFunc_923_2008314..OvlFunc_923_2008314 extracted from goldensun/asm/overlays/rom_799abc/ovl_30_a_a_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_799abc/ovl_30_a_a_a_a.o and asm/overlays/rom_799abc/ovl_30_a_a_a_c.o in
 * goldensun/overlays/rom_799abc/overlay.ld.
 */
extern int Func_8000948(int);

int OvlFunc_923_2008314(int *a, int *b)
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
