/* Cluster OvlFunc_965_20091c4..OvlFunc_965_20091c4 extracted from goldensun/asm/overlays/rom_7ef4f4/ovl_30_a_c_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ef4f4/ovl_30_a_c_c_c_c_a_a.o and asm/overlays/rom_7ef4f4/ovl_30_a_c_c_c_c_a_c.o in
 * goldensun/overlays/rom_7ef4f4/overlay.ld.
 */
extern unsigned int OvlFunc_965_20089f4(long, long, long, long);
extern void OvlFunc_965_2009158(void);

void OvlFunc_965_20091c4(void)
{
  __CutsceneStart();
  OvlFunc_965_20089f4(0x8f << 16, 0, 0x91 << 17, 0xdf);
  OvlFunc_965_20089f4(0xf2 << 15, 0, 0x8f << 17, 0xfd);
  OvlFunc_965_2009158();
  __Func_8091e9c(0xd);
  __CutsceneEnd();
}
