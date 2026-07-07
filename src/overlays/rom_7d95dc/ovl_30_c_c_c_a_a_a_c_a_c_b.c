/* Cluster OvlFunc_953_200850c..OvlFunc_953_200850c extracted from goldensun/asm/overlays/rom_7d95dc/ovl_30_c_c_c_a_a_a_c_a_c.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d95dc/ovl_30_c_c_c_a_a_a_c_a_c_a.o and asm/overlays/rom_7d95dc/ovl_30_c_c_c_a_a_a_c_a_c_c.o in
 * goldensun/overlays/rom_7d95dc/overlay.ld.
 */
extern unsigned long long OvlFunc_953_2009c48(int);
extern void OvlFunc_953_2009c5c(int, int);

void OvlFunc_953_200850c(void)
{
  __CutsceneStart();
  __MessageID(0x2118);
  OvlFunc_953_2009c48(0xf);
  __Func_8092848(0xf, 0, 0x14);
  OvlFunc_953_2009c48(0xf);
 do { __MapActor_DoAnim(0xf, 3); __MapActor_SetAnim(0xf, 0); } while (0);
  OvlFunc_953_2009c48(0xf);
  OvlFunc_953_2009c5c(0xf, 0xa0 << 7);
  __CutsceneEnd();
}
