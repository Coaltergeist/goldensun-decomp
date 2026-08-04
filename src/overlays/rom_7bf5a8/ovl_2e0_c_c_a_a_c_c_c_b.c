/* Cluster OvlFunc_935_20085ec..OvlFunc_935_20085ec extracted from goldensun/asm/overlays/rom_7bf5a8/ovl_2e0_c_c_a_a_c_c_c.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bf5a8/ovl_2e0_c_c_a_a_c_c_c_a.o and asm/overlays/rom_7bf5a8/ovl_2e0_c_c_a_a_c_c_c_c.o in
 * goldensun/overlays/rom_7bf5a8/overlay.ld.
 */
struct Actor935
{
unsigned char pad1[0x23];
unsigned char f23;
unsigned char pad2[0x55 - 0x23 - 1];
unsigned char f55;
};
extern void __Actor_SetSpriteFlags(struct Actor935 *actor, int flags);

void OvlFunc_935_20085ec(void)
{
  struct Actor935 *actor;
  int s1;
  int s2;

  actor = (struct Actor935 *) __MapActor_GetActor(0x13);
  s1 = 0x1a;
  s2 = 0x20;
  __Func_8010704(0x1a, 0x1e, 1, 1, s1, s2);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    ((struct Actor935 *) __MapActor_GetActor(0x13))->f55 = 0;
    actor->f23 = 1;
  }
  __SetFlag(0x203);
}
