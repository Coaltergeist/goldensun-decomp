/* Cluster OvlFunc_932_200ae1c..OvlFunc_932_200ae1c extracted from goldensun/asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_c_c_a_c_c_c.s.
 *
 * Total .text for this TU = 104 bytes (= 0x68).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_c_c_a_c_c_c_a.o and asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_c_c_a_c_c_c_c.o in
 * goldensun/overlays/rom_7b9cb4/overlay.ld.
 */
extern unsigned char *iwram_3001ebc;

void OvlFunc_932_200ae1c(void)
{
  unsigned short t;

  __CutsceneStart();
  t = 9;
  do { t = (unsigned short) t; } while (0);
  __MapActor_SetPos(t, 0, 0);
  __MapActor_SetPos(8, 0x1480000, 0x1a80000);
  __SetFlag(0x323);
  OvlFunc_932_20089ec();
  __Func_800fe9c();
  __WaitFrames(1);
  *(unsigned int *)(iwram_3001ebc + (0xe0 << 1)) = 0x201;
  __MapTransitionIn();
  __WaitMapTransition();
  OvlFunc_932_20087e8();
  *(unsigned int *)(iwram_3001ebc + (0xe0 << 1)) = 0x81 << 2;
  __CutsceneEnd();
}
