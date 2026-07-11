/* Cluster OvlFunc_927_2008ea8..OvlFunc_927_2008ea8 extracted from goldensun/asm/overlays/rom_7b4558/ovl_30_a_c_c.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b4558/ovl_30_a_c_c_a.o and asm/overlays/rom_7b4558/ovl_30_a_c_c_c.o in
 * goldensun/overlays/rom_7b4558/overlay.ld.
 */
extern void OvlFunc_927_2008e18(unsigned int arg0);

void OvlFunc_927_2008ea8(unsigned int arg0, unsigned int arg1)
{
  int new_var2;
  long new_var;
  new_var = 0x20000;
  new_var2 = 0x4000;
 do { __Func_80933d4(new_var, new_var2); __Func_8093500(arg0, 1); __Func_8093530(); } while (0);
  __CutsceneWait(0x1e);
  OvlFunc_927_2008e18(arg0);
  __Func_8092950(arg0, arg1);
}
