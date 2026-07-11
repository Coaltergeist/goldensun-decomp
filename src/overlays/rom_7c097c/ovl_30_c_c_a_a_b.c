/* Cluster OvlFunc_936_200820c..OvlFunc_936_200820c extracted from goldensun/asm/overlays/rom_7c097c/ovl_30_c_c_a_a.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c097c/ovl_30_c_c_a_a_a.o and asm/overlays/rom_7c097c/ovl_30_c_c_a_a_c.o in
 * goldensun/overlays/rom_7c097c/overlay.ld.
 */
void OvlFunc_936_200820c(void)
{
  int new_var;
  unsigned short new_var2;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __CutsceneStart();
  new_var = 0;
  new_var2 = 0xc;
  __MapActor_SetPos(new_var2, new_var, (long) (new_var4 = new_var));
  __SetFlag(0xfd6);
  new_var6 = 0xb5;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_808f1c0(new_var5, 3);
  __Func_8091a58(0xb5, 0);
  __CutsceneEnd();
}
