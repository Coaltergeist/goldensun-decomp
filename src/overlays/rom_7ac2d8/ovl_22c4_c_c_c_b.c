/* Cluster OvlFunc_924_200a814..OvlFunc_924_200a814 extracted from goldensun/asm/overlays/rom_7ac2d8/ovl_22c4_c_c_c.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ac2d8/ovl_22c4_c_c_c_a.o and asm/overlays/rom_7ac2d8/ovl_22c4_c_c_c_c.o in
 * goldensun/overlays/rom_7ac2d8/overlay.ld.
 */
void OvlFunc_924_200a814(void)
{
  __CutsceneStart();
  __MapActor_DoAnim(3, 4);
  __CutsceneWait(0x14);
  __MessageID(0x157d);
 do { } while (0);
  __Func_8093040(3, 0, 0x14);
  __CutsceneEnd();
}
