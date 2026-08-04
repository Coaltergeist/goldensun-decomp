/* Cluster OvlFunc_948_2009984..OvlFunc_948_2009984 extracted from goldensun/asm/overlays/rom_7d30e0/ovl_30_c_c_a_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d30e0/ovl_30_c_c_a_a_a_a.o and asm/overlays/rom_7d30e0/ovl_30_c_c_a_a_a_c.o in
 * goldensun/overlays/rom_7d30e0/overlay.ld.
 */
struct Actor948
{
unsigned char pad1[0x23];
unsigned char f23;
unsigned char pad2[0x55 - 0x23 - 1];
unsigned char f55;
};

void OvlFunc_948_2009984(void)
{
  struct Actor948 *actor;
  struct Actor948 *actor2;
  int s1;
  int s2;

  actor = (struct Actor948 *) __MapActor_GetActor(0xd);
  s1 = 0x28;
  s2 = 0x37;
  __Func_8010704(0x28, 0x36, 1, 1, s1, s2);
  if (actor != 0)
  {
    actor2 = (struct Actor948 *) __MapActor_GetActor(0xd);
    actor2->f55 = 0;
    actor->f23 = 2;
  }
  __SetFlag(0x200);
}
