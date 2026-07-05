/* Cluster OvlFunc_935_2008734..OvlFunc_935_2008734 extracted from goldensun/asm/overlays/rom_7bf5a8/ovl_2e0_c_c_a_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bf5a8/ovl_2e0_c_c_a_c_a.o and asm/overlays/rom_7bf5a8/ovl_2e0_c_c_a_c_c.o in
 * goldensun/overlays/rom_7bf5a8/overlay.ld.
 */
void OvlFunc_935_2008734(void)
{
  unsigned char *p;
  int new_var;
  int id;
  int i;
  id = 0x10;
  new_var = 1;
  i = 5;
  do
  {
    p = __MapActor_GetActor(id);
    i--;
    p += 0x23;
    *p = new_var;
    id++;
  }
  while (i >= 0);
}
