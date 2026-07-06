/* Cluster OvlFunc_886_20081bc..OvlFunc_886_20081bc extracted from goldensun/asm/overlays/rom_786f0c/ovl_30_c_a_c_c_c_a_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_786f0c/ovl_30_c_a_c_c_c_a_c_a.o and asm/overlays/rom_786f0c/ovl_30_c_a_c_c_c_a_c_c.o in
 * goldensun/overlays/rom_786f0c/overlay.ld.
 */
void OvlFunc_886_20081bc(void)
{
  unsigned long new_var2;
  unsigned long long new_var;
  __CutsceneStart();
  new_var = 6;
  __MessageID(0xf73);
 do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __Func_8092848(0, 0x13, new_var2);
  __Func_8093054(0x13, 0);
  __CutsceneEnd();
}
