/* Cluster OvlFunc_897_200a820..OvlFunc_897_200a820 extracted from goldensun/asm/overlays/rom_791794/ovl_30_c_c_a_c_a.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_791794/ovl_30_c_c_a_c_a_a.o and asm/overlays/rom_791794/ovl_30_c_c_a_c_a_c.o in
 * goldensun/overlays/rom_791794/overlay.ld.
 */
void OvlFunc_897_200a820(unsigned int arg0)
{
  unsigned char *r6;
  long long new_var2;
  int new_var;
  unsigned short v;
  new_var2 = 0xfa << 15;
  r6 = __MapActor_GetActor(arg0);
  new_var = new_var2;
  __MapActor_SetPos(arg0, 0xe8 << 16, new_var);
  v = 0x80 << 7;
  *((unsigned short *) (r6 + 6)) = v;
  __Func_8092b08(arg0, 3);
}
