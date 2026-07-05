/* Cluster OvlFunc_900_2008110..OvlFunc_900_2008110 extracted from goldensun/asm/overlays/rom_797740/ovl_30_c_c_a_a_c.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_797740/ovl_30_c_c_a_a_c_a.o and asm/overlays/rom_797740/ovl_30_c_c_a_a_c_c.o in
 * goldensun/overlays/rom_797740/overlay.ld.
 */
void OvlFunc_900_2008110(void)
{
  int new_var;
  new_var = 9;
  __CutsceneStart();
  __Func_80925cc(new_var, 2);
  __CutsceneWait(0x14);
  __MessageID(0x1388);
 do { __ActorMessage(9, 0); __CutsceneEnd(); } while (0);
}
