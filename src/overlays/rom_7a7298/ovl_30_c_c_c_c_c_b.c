/* Cluster OvlFunc_921_2009960..OvlFunc_921_2009960 extracted from goldensun/asm/overlays/rom_7a7298/ovl_30_c_c_c_c_c.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a7298/ovl_30_c_c_c_c_c_a.o and asm/overlays/rom_7a7298/ovl_30_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7a7298/overlay.ld.
 */
extern void __SetFlag(int a);
extern void __Func_8092b08(int a, int b);
extern void __Func_8010704(int a, int b, int c, int d, int e, int f);

void OvlFunc_921_2009960(void)
{
  int new_var;
  int new_var2;
  __SetFlag(0x203);
  __Func_8092b08(11, 3);
  new_var2 = 15;
  new_var = 7;
  __Func_8010704(new_var2, 6, 1, 1, new_var2, new_var);
}
