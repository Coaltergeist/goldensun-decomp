/* Cluster OvlFunc_901_2008784..OvlFunc_901_2008784 extracted from goldensun/asm/overlays/rom_797990/ovl_314_c_c_a_a_c_c_a.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_797990/ovl_314_c_c_a_a_c_c_a_a.o and asm/overlays/rom_797990/ovl_314_c_c_a_a_c_c_a_c.o in
 * goldensun/overlays/rom_797990/overlay.ld.
 */
void OvlFunc_901_2008784(void)
{
  __CutsceneStart();
  __Func_80925cc(0xc, 1);
  __CutsceneWait(0x14);
  __Func_809280c(0xc, 0, 0x14);
  __SetFlag(0x306);
  __SetFlag(0x868);
  __MessageID(0x1caf);
 do { __Func_8093040(0xc, 0, 0x14); } while (0);
  __CutsceneEnd();
}
