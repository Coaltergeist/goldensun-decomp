/* Cluster OvlFunc_883_2008a74..OvlFunc_883_2008a74 extracted from goldensun/asm/overlays/rom_780898/ovl_30_c_c_a_a_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_780898/ovl_30_c_c_a_a_a_c_c_a.o and asm/overlays/rom_780898/ovl_30_c_c_a_a_a_c_c_c.o in
 * goldensun/overlays/rom_780898/overlay.ld.
 */
void OvlFunc_883_2008a74(void)
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
  __SetFlag(0xfd << 4);
  new_var6 = 0xb5;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_808f1c0(new_var5, 3);
  __Func_8091a58(0xb5, 0);
  __CutsceneEnd();
}
