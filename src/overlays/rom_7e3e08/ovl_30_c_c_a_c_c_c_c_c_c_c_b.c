/* Cluster OvlFunc_957_2008d90..OvlFunc_957_2008d90 extracted from goldensun/asm/overlays/rom_7e3e08/ovl_30_c_c_a_c_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 88 bytes (= 0x58).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e3e08/ovl_30_c_c_a_c_c_c_c_c_c_c_a.o and asm/overlays/rom_7e3e08/ovl_30_c_c_a_c_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7e3e08/overlay.ld.
 */
extern unsigned char *iwram_3001f30;

void OvlFunc_957_2008d90(void)
{
  unsigned char *p;
  int val;
  void *actor;
  int s1;
  int s2;

  p = iwram_3001f30;
  actor = __MapActor_GetActor(0xb);
  val = *(p + 0x35);
  val = val << 24;
  val = val >> 24;
  if (val == 0)
  {
    s1 = 0x49;
    s2 = 0x11;
    __Func_8010704(0x4c, 0x10, 1, 1, s1, s2);
    if (actor != 0)
    {
      *(unsigned char *)((char *)actor + 0x55) = 2;
      *(unsigned char *)((char *)actor + 0x23) = val;
    }
    __SetFlag(0x211);
  }
}
