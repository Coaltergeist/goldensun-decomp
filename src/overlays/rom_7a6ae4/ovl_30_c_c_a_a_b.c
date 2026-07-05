/* Cluster OvlFunc_920_20084e8..OvlFunc_920_20084e8 extracted from goldensun/asm/overlays/rom_7a6ae4/ovl_30_c_c_a_a.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a6ae4/ovl_30_c_c_a_a_a.o and asm/overlays/rom_7a6ae4/ovl_30_c_c_a_a_c.o in
 * goldensun/overlays/rom_7a6ae4/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_920_20084e8(void)
{
  unsigned int *base;
  base = *((unsigned int **) iwram_3001ebc);
  *((unsigned int *) (((char *) base) + (0xe0 << 1))) = (0xe0 << 1) + 0x44;
 do { __MapActor_SetAnim(8, 1); } while (0);
  __MapActor_SetAnim(10, 2);
  if (__GetFlag(0x882) != 0)
  {
    __MapActor_SetPos(9, 0, 0);
  }
  else
  {
    __Actor_SetSpriteFlags(__MapActor_GetActor(9), 0);
  }
}
