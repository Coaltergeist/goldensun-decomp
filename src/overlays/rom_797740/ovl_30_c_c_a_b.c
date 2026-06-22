/* Cluster OvlFunc_900_2008170..OvlFunc_900_2008170 extracted from goldensun/asm/overlays/rom_797740/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_797740/ovl_30_c_c_a_a.o and asm/overlays/rom_797740/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_797740/overlay.ld.
 */
void OvlFunc_900_2008170(void)
{
  int r1;
 do { __CutsceneStart(); __MessageID(0x138e); r1 = 0; } while (0);
  __ActorMessage(8, r1);
  __CutsceneEnd();
}
