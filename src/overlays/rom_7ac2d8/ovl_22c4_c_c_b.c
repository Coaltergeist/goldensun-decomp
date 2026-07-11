/* Cluster OvlFunc_924_200a600..OvlFunc_924_200a600 extracted from goldensun/asm/overlays/rom_7ac2d8/ovl_22c4_c_c.s.
 *
 * Total .text for this TU = 72 bytes (= 0x48).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ac2d8/ovl_22c4_c_c_a.o and asm/overlays/rom_7ac2d8/ovl_22c4_c_c_c.o in
 * goldensun/overlays/rom_7ac2d8/overlay.ld.
 */
void OvlFunc_924_200a600(void)
{
  int new_var2;
  int val;
  int new_var;
  int actor;
  __CutsceneStart();
  actor = (int) __MapActor_GetActor(20);
  val = *((int *) (actor + 8));
  if (val <= (0 - 1))
  {
    val += 0xfffff;
  }
  val >>= 20;
  if (val == 28)
  {
    __SetFlag(0xd2 << 2);
    new_var = 0x1f;
    new_var2 = 20;
    __Func_8010704(0x1d, new_var2, 1, 1, new_var, new_var2);
  }
  __CutsceneEnd();
}
