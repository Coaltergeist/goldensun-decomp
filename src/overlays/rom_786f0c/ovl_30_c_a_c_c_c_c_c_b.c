/* Cluster OvlFunc_886_2008298..OvlFunc_886_2008298 extracted from goldensun/asm/overlays/rom_786f0c/ovl_30_c_a_c_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_786f0c/ovl_30_c_a_c_c_c_c_c_a.o and asm/overlays/rom_786f0c/ovl_30_c_a_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_786f0c/overlay.ld.
 */
extern int _MSG_1c40;

void OvlFunc_886_2008298(void)
{
  int new_var;
 do { __CutsceneStart(); new_var = (int) (&_MSG_1c40); __MessageID(new_var); } while (0);
  __ActorMessage(0x800b, 0);
  __CutsceneEnd();
}
