/* Cluster OvlFunc_906_2008380..OvlFunc_906_2008380 extracted from goldensun/asm/overlays/rom_79aad8/ovl_314_c_a_c.s.
 *
 * Total .text for this TU = 100 bytes (= 0x64).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79aad8/ovl_314_c_a_c_a.o and asm/overlays/rom_79aad8/ovl_314_c_a_c_c.o in
 * goldensun/overlays/rom_79aad8/overlay.ld.
 */
extern void OvlFunc_906_20084f4(int a);

void OvlFunc_906_2008380(void)
{
  int arg6;
  int val;
  int arg5;
  int actor;
  unsigned char *p;
  unsigned char v;

  val = *((int *) ((int) __MapActor_GetActor(8) + 8));
  if (val <= (0 - 1))
  {
    val += 0xfffff;
  }
  val >>= 20;
  if (val == 0x18)
  {
    OvlFunc_906_20084f4(8);
    p = (unsigned char *) __MapActor_GetActor(8);
    p += 0x23;
    v = 2;
    v |= *p;
    *p = v;
    arg6 = 0x11;
    arg5 = 0x13;
    __Func_8010704(0x13, 0x4a, 9, 3, arg5, arg6);
    actor = (int) __MapActor_GetActor(8);
    __Actor_SetSpriteFlags(actor, 0);
    __SetFlag(0x864);
  }
}
