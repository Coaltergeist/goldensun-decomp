/* Cluster OvlFunc_928_2008324..OvlFunc_928_2008324 extracted from goldensun/asm/overlays/rom_7b6668/ovl_314_a_a_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b6668/ovl_314_a_a_c_a_a.o and asm/overlays/rom_7b6668/ovl_314_a_a_c_a_c.o in
 * goldensun/overlays/rom_7b6668/overlay.ld.
 */
void OvlFunc_928_2008324(void)
{
  unsigned char *p;
  unsigned char *flags;
  int new_var;
  p = __MapActor_GetActor(0);
  if ((*((short *) (p + 0xe))) > 0x1f)
  {
    p = __MapActor_GetActor(0x14);
    flags = p + 0x23;
    new_var = (*flags) | 2;
    *flags = new_var;
  }
  else
  {
    p = __MapActor_GetActor(0x14);
    flags = p + 0x23;
    *flags = (*flags) & 0xfd;
  }
}
