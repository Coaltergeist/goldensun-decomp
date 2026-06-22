/* Cluster OvlFunc_900_2008190..OvlFunc_900_2008190 extracted from goldensun/asm/overlays/rom_797740/ovl_30_c_c_a_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_797740/ovl_30_c_c_a_c_a.o and asm/overlays/rom_797740/ovl_30_c_c_a_c_c.o in
 * goldensun/overlays/rom_797740/overlay.ld.
 */
void OvlFunc_900_2008190(void)
{
  int a;
 do { __CutsceneStart(); __MessageID(0x138c); } while (0);
  a = 9;
  __ActorMessage(a, 0);
  __CutsceneEnd();
}
