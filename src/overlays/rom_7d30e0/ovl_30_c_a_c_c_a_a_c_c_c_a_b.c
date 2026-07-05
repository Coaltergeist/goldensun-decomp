/* Cluster OvlFunc_948_2009198..OvlFunc_948_2009198 extracted from goldensun/asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_a.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_a_a.o and asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_a_c.o in
 * goldensun/overlays/rom_7d30e0/overlay.ld.
 */
void OvlFunc_948_2009198(void)
{
  int new_var;
  int new_var6;
  int new_var4;
  int new_var3;
  int new_var5;
  unsigned char new_var2;
  new_var = 0xcc << 17;
  ;
  new_var5 = 0xc2 << 18;
  new_var6 = 0x19;
  new_var4 = 0x30;
  __Func_80105d4(new_var6, 0x2d, 1, 2, 0x19, new_var4);
  new_var3 = 0xeeb;
  if (__GetFlag(new_var3) == 0)
  {
    __MapActor_SetPos(0xc, new_var, new_var5);
  }
  __CutsceneWait(1);
}
