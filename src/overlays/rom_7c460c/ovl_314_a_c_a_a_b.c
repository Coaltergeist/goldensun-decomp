/* Cluster OvlFunc_939_20083c0..OvlFunc_939_20083c0 extracted from goldensun/asm/overlays/rom_7c460c/ovl_314_a_c_a_a.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c460c/ovl_314_a_c_a_a_a.o and asm/overlays/rom_7c460c/ovl_314_a_c_a_a_c.o in
 * goldensun/overlays/rom_7c460c/overlay.ld.
 */
void OvlFunc_939_20083c0(void)
{
  int new_var;
  unsigned short new_var2;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __CutsceneStart();
  new_var = 0;
  new_var2 = 0x14;
  __MapActor_SetPos(new_var2, new_var, (long) (new_var4 = new_var));
  __SetFlag(0xfd1);
  new_var6 = 0xb5;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_808f1c0(new_var5, 3);
  __Func_8091a58(0xb5, 0);
  __CutsceneEnd();
}
