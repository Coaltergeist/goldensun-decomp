/* Cluster OvlFunc_912_2008070..OvlFunc_912_2008070 extracted from goldensun/asm/overlays/rom_7a0010/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a0010/ovl_30_c_c_a_a.o and asm/overlays/rom_7a0010/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7a0010/overlay.ld.
 */
extern unsigned char L4d8[] __asm__(".L4d8");
extern void OvlFunc_912_2008030(void *);

void *OvlFunc_912_2008070(void)
{
  unsigned char *r5;
  if (!__GetFlag(0x845))
    OvlFunc_912_2008030(L4d8);
  r5 = L4d8;
  __Func_808b868(r5);
  return r5;
}
