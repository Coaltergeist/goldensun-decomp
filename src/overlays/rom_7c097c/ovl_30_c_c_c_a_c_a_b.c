/* Cluster OvlFunc_936_2009610..OvlFunc_936_2009610 extracted from goldensun/asm/overlays/rom_7c097c/ovl_30_c_c_c_a_c_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c097c/ovl_30_c_c_c_a_c_a_a.o and asm/overlays/rom_7c097c/ovl_30_c_c_c_a_c_a_c.o in
 * goldensun/overlays/rom_7c097c/overlay.ld.
 */
extern void OvlFunc_936_200b90c(void);

void OvlFunc_936_2009610(void)
{
  int new_var;
  unsigned short new_var2;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __StopTask(OvlFunc_936_200b90c);
  __WaitFrames(1);
  new_var = 0;
  new_var2 = 0x1a;
  __MapActor_SetPos(new_var2, new_var, (long) (new_var4 = new_var));
  __SetFlag(0x916);
  new_var6 = 0xb5;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_808f1c0(new_var5, 3);
  __Func_8091a58(0xb5, 0);
}
