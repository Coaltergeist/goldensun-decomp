/* Cluster OvlFunc_891_20096a4..OvlFunc_891_20096a4 extracted from goldensun/asm/overlays/rom_78c76c/ovl_30_c_c_a_c_c_c_c_a_c.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78c76c/ovl_30_c_c_a_c_c_c_c_a_c_a.o and asm/overlays/rom_78c76c/ovl_30_c_c_a_c_c_c_c_a_c_c.o in
 * goldensun/overlays/rom_78c76c/overlay.ld.
 */
extern void *__MapActor_GetActor(int type);

void OvlFunc_891_20096a4(void)
{
  void *p;
  long new_var2;
  int x;
  int new_var;
  p = __MapActor_GetActor(0);
  x = (*((int *) (((char *) p) + 8))) >> 20;
  p = __MapActor_GetActor(0);
  new_var = 0xb0 << 17;
  if (((*((int *) (((char *) p) + 0x10))) >> 20) == 7)
  {
 new_var2 = 0xe0 << 15; do { if (((unsigned int) (x - 0x15)) <= 1) { __Func_8012078(2, new_var, new_var2, 0xff); } } while (0);
  }
}
