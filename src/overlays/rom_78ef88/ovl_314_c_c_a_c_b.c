/* Cluster OvlFunc_896_200a74c..OvlFunc_896_200a74c extracted from goldensun/asm/overlays/rom_78ef88/ovl_314_c_c_a_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78ef88/ovl_314_c_c_a_c_a.o and asm/overlays/rom_78ef88/ovl_314_c_c_a_c_c.o in
 * goldensun/overlays/rom_78ef88/overlay.ld.
 */
void OvlFunc_896_200a74c(void)
{
  int r1;
  int new_var;
  __CutsceneStart();
  __MessageID(0x10ca);
  new_var = 0;
 do { r1 = new_var; __ActorMessage(0xa, r1); } while (0);
  __CutsceneEnd();
}
