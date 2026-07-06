/* Cluster OvlFunc_953_20085f0..OvlFunc_953_20085f0 extracted from goldensun/asm/overlays/rom_7d95dc/ovl_30_c_c_c_a_a_a_c.s.
 *
 * Total .text for this TU = 88 bytes (= 0x58).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d95dc/ovl_30_c_c_c_a_a_a_c_a.o and asm/overlays/rom_7d95dc/ovl_30_c_c_c_a_a_a_c_c.o in
 * goldensun/overlays/rom_7d95dc/overlay.ld.
 */
extern volatile unsigned long long OvlFunc_953_2009c48(unsigned int arg0);
extern void OvlFunc_953_2009c5c(unsigned int arg0, unsigned int arg1);

void OvlFunc_953_20085f0(void)
{
  int new_var;
  int new_var2;
  __CutsceneStart();
  __Func_8092848(0x11, 0, 0x14);
  __MessageID(0x211f);
  OvlFunc_953_2009c48(0x11);
 do { new_var = 0; new_var2 = 0x11; } while (0);
  __MapActor_DoAnim(new_var, 3);
  new_var = 1;
  __MapActor_DoAnim(new_var2, 3);
  OvlFunc_953_2009c48(0x11);
  __Func_80925cc(0x11, new_var);
  OvlFunc_953_2009c48(new_var2);
  OvlFunc_953_2009c5c(0x11, 0xa0 << 7);
  __CutsceneEnd();
}
