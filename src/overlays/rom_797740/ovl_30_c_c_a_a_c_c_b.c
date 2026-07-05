/* Cluster OvlFunc_900_2008140..OvlFunc_900_2008140 extracted from goldensun/asm/overlays/rom_797740/ovl_30_c_c_a_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_797740/ovl_30_c_c_a_a_c_c_a.o and asm/overlays/rom_797740/ovl_30_c_c_a_a_c_c_c.o in
 * goldensun/overlays/rom_797740/overlay.ld.
 */
void OvlFunc_900_2008140(void)
{
  int new_var;
 do { __CutsceneStart(); __MapActor_DoAnim(0xa, 4); __CutsceneWait(0x14); __MessageID(0x1389); } while (0);
  __ActorMessage(new_var = 0xa, 0);
  __CutsceneEnd();
}
