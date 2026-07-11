/* Cluster OvlFunc_942_20082dc..OvlFunc_942_20082dc extracted from goldensun/asm/overlays/rom_7c6bac/ovl_30_c_c_a_c_a.s.
 *
 * Total .text for this TU = 76 bytes (= 0x4c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c6bac/ovl_30_c_c_a_c_a_a.o and asm/overlays/rom_7c6bac/ovl_30_c_c_a_c_a_c.o in
 * goldensun/overlays/rom_7c6bac/overlay.ld.
 */
void OvlFunc_942_20082dc(void)
{
  int new_var;
  __MapActor_GetActor(0);
  new_var = 0x80 << 7;
  __CutsceneStart();
  if (__GetFlag(0x8a7))
  {
    if (__GetFlag(0x8a9))
    {
      __MessageID(0x1d23);
      __Func_8092c40(0xc, 0);
      __Func_8092adc(0xc, new_var, 0);
    }
  }
}
