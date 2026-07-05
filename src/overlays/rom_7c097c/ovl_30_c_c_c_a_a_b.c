/* Cluster OvlFunc_936_2008420..OvlFunc_936_2008420 extracted from goldensun/asm/overlays/rom_7c097c/ovl_30_c_c_c_a_a.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c097c/ovl_30_c_c_c_a_a_a.o and asm/overlays/rom_7c097c/ovl_30_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_7c097c/overlay.ld.
 */
void OvlFunc_936_2008420(void)
{
  unsigned char *p;
  unsigned int v;
  p = (unsigned char *) __MapActor_GetActor(0);
  v = ((*((unsigned short *) (p + 6))) + 0xffffe000) << 16;
  if (v > (0xc0 << 24))
  {
    __Func_80b0278(0x18, 0x18);
  }
  else
  {
    __CutsceneStart();
    __MessageID(0x1ad5);
 do { __ActorMessage(0x18, 0); __CutsceneEnd(); } while (0);
  }
}
