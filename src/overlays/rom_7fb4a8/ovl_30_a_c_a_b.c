/* Cluster OvlFunc_971_200803c..OvlFunc_971_200803c extracted from goldensun/asm/overlays/rom_7fb4a8/ovl_30_a_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7fb4a8/ovl_30_a_c_a_a.o and asm/overlays/rom_7fb4a8/ovl_30_a_c_a_c.o in
 * goldensun/overlays/rom_7fb4a8/overlay.ld.
 */
volatile unsigned int OvlFunc_971_200803c(void)
{
  unsigned short *r5;
  unsigned int r6;
  r5 = (unsigned short *) ((int) 0x04000208);
  r6 = *r5;
  *r5 = (unsigned short) ((unsigned int) r5);
  __Func_8006358();
  __Func_8005d10();
  *r5 = r6;
}
