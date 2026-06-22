/* Cluster OvlFunc_896_200a7cc..OvlFunc_896_200a7cc extracted from goldensun/asm/overlays/rom_78ef88/ovl_314_c_c_a_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78ef88/ovl_314_c_c_a_c_c_c_c_a.o and asm/overlays/rom_78ef88/ovl_314_c_c_a_c_c_c_c_c.o in
 * goldensun/overlays/rom_78ef88/overlay.ld.
 */
extern int OvlFunc_896_200c248(int, int);

void OvlFunc_896_200a7cc(void)
{
  int r1;
  int new_var;
  new_var = 9;
  __CutsceneStart();
 do { __MessageID(0x1072); r1 = 0xa; } while (0);
  OvlFunc_896_200c248(new_var, r1);
  __CutsceneEnd();
}
