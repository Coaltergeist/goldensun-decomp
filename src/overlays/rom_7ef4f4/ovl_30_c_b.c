/* Cluster OvlFunc_965_200a7f4..OvlFunc_965_200a7f4 extracted from goldensun/asm/overlays/rom_7ef4f4/ovl_30_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ef4f4/ovl_30_c_a.o and asm/overlays/rom_7ef4f4/ovl_30_c_c.o in
 * goldensun/overlays/rom_7ef4f4/overlay.ld.
 */
extern void __Func_8010704(int a, int b, int c, int d, int e, int f);
extern void __WaitFrames(int a);
extern void __SetFlag(int a);

void OvlFunc_965_200a7f4(void)
{
  short new_var;
  short new_var2;
  int new_var3;
  new_var2 = (short) 0x12;
  new_var = new_var2;
  new_var3 = 7;
  __Func_8010704(0x52, new_var3, 1, 2, new_var, new_var3);
  __WaitFrames(1);
  __SetFlag(0xc0 << 2);
}
