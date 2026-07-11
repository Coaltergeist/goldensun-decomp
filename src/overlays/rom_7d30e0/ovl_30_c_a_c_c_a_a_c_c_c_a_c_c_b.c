/* Cluster OvlFunc_948_2009238..OvlFunc_948_2009238 extracted from goldensun/asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_a_c_c.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_a_c_c_a.o and asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_c_c_c_a_c_c_c.o in
 * goldensun/overlays/rom_7d30e0/overlay.ld.
 */
void OvlFunc_948_2009238(void)
{
  unsigned long new_var2;
  unsigned long long new_var;
  unsigned long new_var3;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  new_var = 0xf4;
 do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __Func_808f1c0(new_var2, 3);
  new_var4 = 0;
 do { new_var4 = (unsigned long) new_var4; } while (0);
  new_var3 = new_var4;
  __MapActor_SetAnim(new_var3, 1);
  __Func_8091a58(0xf4, 0);
  new_var6 = 9;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __MapActor_SetPos(new_var5, 0, 0);
  __SetFlag(0xee8);
}
