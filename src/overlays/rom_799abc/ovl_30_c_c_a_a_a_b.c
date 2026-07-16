/* Cluster OvlFunc_905_2008b6c..OvlFunc_905_2008b6c extracted from goldensun/asm/overlays/rom_799abc/ovl_30_c_c_a_a_a.s.
 *
 * Total .text for this TU = 100 bytes (= 0x64).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_799abc/ovl_30_c_c_a_a_a_a.o and asm/overlays/rom_799abc/ovl_30_c_c_a_a_a_c.o in
 * goldensun/overlays/rom_799abc/overlay.ld.
 */
void OvlFunc_905_2008b6c(void)
{
  int x;
  int val;

  x = *((int *) (((int) __MapActor_GetActor(8)) + 8));
  if (x <= (0 - 1))
  {
    x += 0xfffff;
  }
  val = x >> 20;
  __CutsceneStart();
  if (val == 0x14)
  {
    int t5 = 0x12;
    int six = 6;
    __Func_8010704(0x12, 0x28, six, 3, t5, six);
    __ClearFlag(0x302);
  }
  else
  {
    int t5 = 0x12;
    int six = 6;
    __Func_8010704(0x18, 0x28, six, 3, t5, six);
    __SetFlag(0x302);
  }
  __CutsceneEnd();
}
