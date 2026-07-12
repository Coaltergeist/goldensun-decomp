// fakematch
/* Cluster OvlFunc_902_2008098..OvlFunc_902_2008098 extracted from goldensun/asm/overlays/rom_7987ac/ovl_30_c_c_a_a_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7987ac/ovl_30_c_c_a_a_c_a_a.o and asm/overlays/rom_7987ac/ovl_30_c_c_a_a_c_a_c.o in
 * goldensun/overlays/rom_7987ac/overlay.ld.
 */

void OvlFunc_902_2008098(unsigned int arg0)
{
  __CutsceneStart();
  __MapActor_SetAnim(arg0, 1);
  {
      register unsigned int rq __asm__("r0") = arg0;
      __asm__ volatile ("" : : "r" (rq));
      __ActorMessage(rq, 0);
  }
  __CutsceneEnd();
}
