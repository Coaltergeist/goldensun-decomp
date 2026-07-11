/* Cluster OvlFunc_898_20087b8..OvlFunc_898_20087b8 extracted from goldensun/asm/overlays/rom_793768/ovl_314_c_c_a_c_a_c_c_c_a_a.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_c_a_c_a_c_c_c_a_a_a.o and asm/overlays/rom_793768/ovl_314_c_c_a_c_a_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern unsigned long long OvlFunc_898_200973c(int a, int b, int c);

void OvlFunc_898_20087b8(void)
{
  unsigned short pad;
  long new_var3;
  int new_var2;
  int new_var;
  new_var3 = 0;
  __CutsceneStart();
  __MessageID(0x1235);
 { new_var2 = 0x13; do { __MapActor_SetAnim(0x13, new_var3); OvlFunc_898_200973c(new_var2, 0, 2); } while (0); new_var = 0x13; __ActorMessage(new_var, new_var3); }
  __CutsceneEnd();
}
