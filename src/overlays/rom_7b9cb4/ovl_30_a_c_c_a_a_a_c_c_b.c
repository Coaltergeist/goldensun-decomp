/* Cluster OvlFunc_932_200855c..OvlFunc_932_200855c extracted from goldensun/asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_a_a_c_c.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_a_a_c_c_a.o and asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_a_a_c_c_c.o in
 * goldensun/overlays/rom_7b9cb4/overlay.ld.
 */
struct Actor932
{
unsigned char pad[0xc];
unsigned int f0xc;
unsigned char pad2[0x23 - 0x10];
unsigned char f0x23;
};

void OvlFunc_932_200855c(void)
{
  struct Actor932 *actor;
  int s1;
  int s2;

  actor = (struct Actor932 *) __MapActor_GetActor(9);
  s1 = 0x19;
  s2 = 0xd;
  __Func_8010704(0x17, 0xd, 1, 1, s1, s2);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    actor->f0xc += 0xffe00000;
    actor->f0x23 = 2;
  }
  __SetFlag(0x200);
}
