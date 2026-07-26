/* Cluster OvlFunc_935_20085a0..OvlFunc_935_20085a0 extracted from goldensun/asm/overlays/rom_7bf5a8/ovl_2e0_c_c_a_a_c_c.s.
 *
 * Total .text for this TU = 76 bytes (= 0x4c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bf5a8/ovl_2e0_c_c_a_a_c_c_a.o and asm/overlays/rom_7bf5a8/ovl_2e0_c_c_a_a_c_c_c.o in
 * goldensun/overlays/rom_7bf5a8/overlay.ld.
 */
struct Actor935
{
unsigned char pad1[0x23];
unsigned char f23;
unsigned char pad2[0x55 - 0x23 - 1];
unsigned char f55;
};

void OvlFunc_935_20085a0(void)
{
  struct Actor935 *actor;
  struct Actor935 *actor2;
  int s1;
  int s2;

  actor = (struct Actor935 *) __MapActor_GetActor(0x12);
  s1 = 0x18;
  s2 = 0x22;
  __Func_8010704(0x1a, 0x1e, 1, 1, s1, s2);
  if (actor != 0)
  {
    actor2 = (struct Actor935 *) __MapActor_GetActor(0x12);
    actor2->f55 = 0;
    actor->f23 = 1;
  }
  __SetFlag(0x202);
}
