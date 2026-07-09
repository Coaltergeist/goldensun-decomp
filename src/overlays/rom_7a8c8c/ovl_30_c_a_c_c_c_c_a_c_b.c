// fakematch
/* Cluster OvlFunc_922_20097a8..OvlFunc_922_20097a8 extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_c_a_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_c_a_c_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_c_a_c_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
void OvlFunc_922_20097a8(void)
{
  int actor;
  int speed;
  int arg2;

  __CutsceneStart();
  actor = __MapActor_GetActor(8);
  __Actor_SetSpriteFlags(actor, 0);
  __MapTransitionIn();
  speed = 0x80;
  {
    register int zero __asm__("r0") = 0;
    __asm__ volatile ("" : : "r" (zero));
    speed <<= 10;
    __MapActor_SetSpeed(zero, speed, 0x1999);
  }
  arg2 = 0x84;
  {
    register int zero2 __asm__("r0") = 0;
    __asm__ volatile ("" : : "r" (zero2));
    arg2 <<= 1;
    __Func_8092158(zero2, arg2, 0xc4);
  }
  __CutsceneEnd();
}
