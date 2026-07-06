/* Cluster OvlFunc_921_20096c8..OvlFunc_921_20096c8 extracted from goldensun/asm/overlays/rom_7a7298/ovl_30_c_c_c_c_c_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a7298/ovl_30_c_c_c_c_c_a_a.o and asm/overlays/rom_7a7298/ovl_30_c_c_c_c_c_a_c.o in
 * goldensun/overlays/rom_7a7298/overlay.ld.
 */
extern unsigned char iwram_3001f30[];
extern void OvlFunc_921_20096ac(void);

void OvlFunc_921_20096c8(void)
{
  unsigned int *p;
  unsigned long new_var2;
  unsigned long long new_var;
  new_var = 0x5d;
 do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __Func_8096fb0(new_var2, 1);
  p = *((unsigned int **) iwram_3001f30);
  __Func_80970f8(3, 9);
  *((void (**)(void)) (((char *) p) + 0x24)) = OvlFunc_921_20096ac;
  __Func_809728c();
  __FieldMove(1);
  __Func_8097174();
  __Func_8097194();
}
