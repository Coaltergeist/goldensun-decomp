/* Cluster OvlFunc_935_200850c..OvlFunc_935_200850c extracted from goldensun/asm/overlays/rom_7bf5a8/ovl_2e0_c_c_a_a.s.
 *
 * Total .text for this TU = 72 bytes (= 0x48).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bf5a8/ovl_2e0_c_c_a_a_a.o and asm/overlays/rom_7bf5a8/ovl_2e0_c_c_a_a_c.o in
 * goldensun/overlays/rom_7bf5a8/overlay.ld.
 */
struct Actor935
{
unsigned char pad1[0x23];
unsigned char f23;
unsigned char pad2[0x55 - 0x23 - 1];
unsigned char f55;
};

void OvlFunc_935_200850c(void)
{
  struct Actor935 *actor1;
  struct Actor935 *actor2;
  int s1;
  int s2;

  actor1 = (struct Actor935 *) __MapActor_GetActor(0x10);
  s1 = 0x17;
  s2 = 0x20;
  __Func_8010704(0x1a, 0x1e, 1, 1, s1, s2);
  if (actor1 != 0)
  {
    actor2 = (struct Actor935 *) __MapActor_GetActor(0x10);
    actor2->f55 = 0;
    actor1->f23 = 1;
  }
  __SetFlag(0x200);
}
