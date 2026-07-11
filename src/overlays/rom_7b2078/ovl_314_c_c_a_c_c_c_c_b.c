/* Cluster OvlFunc_926_200a54c..OvlFunc_926_200a54c extracted from goldensun/asm/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_c_a.o and asm/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_c_c.o in
 * goldensun/overlays/rom_7b2078/overlay.ld.
 */
void OvlFunc_926_200a54c(void)
{
  int new_var;
  int new_var2;
  __CutsceneStart();
  new_var = 0;
  __Func_80925cc(8, 2);
  __MessageID(0x17df);
 do { new_var2 = new_var; __ActorMessage(8, new_var2); } while (0);
  __CutsceneEnd();
}
