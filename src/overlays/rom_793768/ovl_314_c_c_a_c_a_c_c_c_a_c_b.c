/* Cluster OvlFunc_898_200890c..OvlFunc_898_200890c extracted from goldensun/asm/overlays/rom_793768/ovl_314_c_c_a_c_a_c_c_c_a_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_c_a_c_a_c_c_c_a_c_a.o and asm/overlays/rom_793768/ovl_314_c_c_a_c_a_c_c_c_a_c_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern volatile unsigned long long OvlFunc_898_200973c(int a, int b, int c);

void OvlFunc_898_200890c(int arg0)
{
  __CutsceneStart();
  __MapActor_SetAnim(arg0, 1);
  OvlFunc_898_200973c(arg0, 0, 2);
 do { } while (0);
  __ActorMessage(arg0, 0);
  __CutsceneEnd();
}
