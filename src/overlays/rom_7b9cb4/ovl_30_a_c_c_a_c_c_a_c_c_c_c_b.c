/* Cluster OvlFunc_932_200ae84..OvlFunc_932_200ae84 extracted from goldensun/asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_c_c_a_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_c_c_a_c_c_c_c_a.o and asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_c_c_a_c_c_c_c_c.o in
 * goldensun/overlays/rom_7b9cb4/overlay.ld.
 */
extern void *iwram_3001ebc;

void OvlFunc_932_200ae84(void)
{
  unsigned short t;

  __CutsceneStart();
  t = 10;
  do { t = (unsigned short) t; } while (0);
  __MapActor_SetPos(t, 0, 0);
  __MapActor_SetPos(8, 0x1e80000, 0x8a0000);
  __SetFlag(0x325);
  OvlFunc_932_2008a94();
  __Func_800fe9c();
  __WaitFrames(1);
  *(int *)((char *)iwram_3001ebc + 0x1c0) = 0x201;
  __MapTransitionIn();
  __WaitMapTransition();
  OvlFunc_932_20088d4();
  *(int *)((char *)iwram_3001ebc + 0x1c0) = 0x204;
  __CutsceneEnd();
}
