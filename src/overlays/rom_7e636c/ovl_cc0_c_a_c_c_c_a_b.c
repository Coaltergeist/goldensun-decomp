/* Cluster OvlFunc_958_20090fc..OvlFunc_958_20090fc extracted from goldensun/asm/overlays/rom_7e636c/ovl_cc0_c_a_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e636c/ovl_cc0_c_a_c_c_c_a_a.o and asm/overlays/rom_7e636c/ovl_cc0_c_a_c_c_c_a_c.o in
 * goldensun/overlays/rom_7e636c/overlay.ld.
 */
extern void OvlFunc_958_20091f8(int arg0);

void OvlFunc_958_20090fc(void)
{
  int r3;
  int new_var;
  int new_var2;
  int new_var3;
  unsigned int *actor;
  __MapActor_GetActor(8);
  __CutsceneStart();
  new_var2 = 8;
  actor = __MapActor_GetActor(new_var2);
  r3 = (*((int *) (((char *) actor) + new_var2))) >> 20;
  if (r3 <= 30)
  {
    OvlFunc_958_20091f8(8);
    new_var = 0x1b;
    new_var3 = 0x13;
    __Func_8010704(0x1d, 0x13, 1, 1, new_var, new_var3);
    __SetFlag(0x9a2);
  }
  __CutsceneEnd();
}
