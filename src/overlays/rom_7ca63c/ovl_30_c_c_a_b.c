/* Cluster OvlFunc_944_20081fc..OvlFunc_944_20081fc extracted from goldensun/asm/overlays/rom_7ca63c/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ca63c/ovl_30_c_c_a_a.o and asm/overlays/rom_7ca63c/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7ca63c/overlay.ld.
 */
void OvlFunc_944_20081fc(void)
{
  if ((__GetFlag(0x923) != 0) || (__GetFlag(0x922) != 0))
  {
    __CutsceneStart();
 do { __Func_808f1c0(0xe8, 3); __Func_8091a58(0xe8, 0); __SetFlag(0x924); } while (0);
    __CutsceneEnd();
  }
}
