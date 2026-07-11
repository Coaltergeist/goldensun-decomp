/* Cluster OvlFunc_964_2009938..OvlFunc_964_2009938 extracted from goldensun/asm/overlays/rom_7ed0a0/ovl_30_a_c_c_a_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ed0a0/ovl_30_a_c_c_a_c_c_c_a.o and asm/overlays/rom_7ed0a0/ovl_30_a_c_c_a_c_c_c_c.o in
 * goldensun/overlays/rom_7ed0a0/overlay.ld.
 */
void OvlFunc_964_2009938(void)
{
  unsigned char *p;
  unsigned long new_var2;
  unsigned long long new_var;
  unsigned long new_var3;
  unsigned long new_var4;
  new_var = 0x15;
 do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __MapActor_SetAnim(new_var2, 1);
  new_var4 = 0x15;
 do { new_var4 = (unsigned short) new_var4; } while (0);
  new_var3 = new_var4;
  __Func_8092950(new_var3, 0);
  __MapActor_SetAnim(0x15, 2);
  p = __MapActor_GetActor(0x15);
  p[0x23] &= 0xfd;
  __SetFlag(0x201);
}
