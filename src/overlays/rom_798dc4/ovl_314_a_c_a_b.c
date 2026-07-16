/* Cluster OvlFunc_903_20083d0..OvlFunc_903_20083d0 extracted from goldensun/asm/overlays/rom_798dc4/ovl_314_a_c_a.s.
 *
 * Total .text for this TU = 108 bytes (= 0x6c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_798dc4/ovl_314_a_c_a_a.o and asm/overlays/rom_798dc4/ovl_314_a_c_a_c.o in
 * goldensun/overlays/rom_798dc4/overlay.ld.
 */
void OvlFunc_903_20083d0(void)
{
  int actor;
  int x;
  int val;
  int val2;
  int zero;

  x = *((int *) (((int) __MapActor_GetActor(10)) + 8));
  if (x <= (0 - 1))
  {
    x += 0xfffff;
  }
  val = x >> 20;
  if (val == 0x17)
  {
    __CutsceneWait(10);
    actor = (int) __MapActor_GetActor(10);
    actor += 0x23;
    *((char *) actor) = 2;
    zero = 0;
    actor = (int) __MapActor_GetActor(10);
    actor += 0x55;
    *((char *) actor) = zero;
    actor = (int) __MapActor_GetActor(10);
    __Actor_SetSpriteFlags(actor, 0);
    val2 = 0x11;
    __Func_8010704(0x36, val2, 1, 1, val, val2);
    __SetFlag(0x863);
  }
}
