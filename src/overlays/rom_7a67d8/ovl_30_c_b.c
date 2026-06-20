/* Cluster OvlFunc_919_20082e0..OvlFunc_919_20082e0 extracted from goldensun/asm/overlays/rom_7a67d8/ovl_30_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a67d8/ovl_30_c_a.o and asm/overlays/rom_7a67d8/ovl_30_c_c.o in
 * goldensun/overlays/rom_7a67d8/overlay.ld.
 */
extern void OvlFunc_919_200826c(void);
extern void OvlFunc_919_20082a0(void);

void OvlFunc_919_20082e0(void)
{
  void (*new_var2)(void);
  void (*new_var)(void);
  new_var2 = &OvlFunc_919_200826c;
  new_var = new_var2;
 do { } while (0);
  __SetIntrHandler(1, 0, *new_var);
  __StartTask(OvlFunc_919_20082a0, 0xc8 << 4);
}
