/* Cluster OvlFunc_968_200b00c..OvlFunc_968_200b00c extracted from goldensun/asm/overlays/rom_7f2f14/ovl_30_c_c_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f2f14/ovl_30_c_c_a_a_c_a.o and asm/overlays/rom_7f2f14/ovl_30_c_c_a_a_c_c.o in
 * goldensun/overlays/rom_7f2f14/overlay.ld.
 */
void OvlFunc_968_200b00c(unsigned int arg0)
{
  unsigned char *p;
  int new_var;
  p = __MapActor_GetActor(arg0);
  p[0x55] = 0;
  p[0x59] = p[0x59] & 0xfc;
  __Actor_SetSpriteFlags(p, 0);
  __Actor_SetAnim(p, 5);
  __Func_8092b08(arg0, 3);
  new_var = p[0x23] | 2;
  p[0x23] = new_var;
}
