/* Cluster OvlFunc_899_20080fc..OvlFunc_899_20080fc extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_a_a_a.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_a_a_a_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_a_a_a_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
void OvlFunc_899_20080fc(void)
{
  int *p;
  int new_var;
  int new_var2;
  __CutsceneStart();
  p = (int *) __MapActor_GetActor(0x1a);
  if ((((*((int *) (((char *) p) + 8))) >> 1) >> 19) == 0x2a)
  {
    new_var2 = 0x29;
    new_var = 0x18;
    __Func_8010704(0x65, new_var, 3, 4, new_var2, new_var);
    __SetFlag(0x859);
  }
  __CutsceneEnd();
}
