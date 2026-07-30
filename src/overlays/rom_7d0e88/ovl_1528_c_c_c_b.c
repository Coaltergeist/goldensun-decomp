/* Cluster OvlFunc_947_200a15c..OvlFunc_947_200a15c extracted from goldensun/asm/overlays/rom_7d0e88/ovl_1528_c_c_c.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d0e88/ovl_1528_c_c_c_a.o and asm/overlays/rom_7d0e88/ovl_1528_c_c_c_c.o in
 * goldensun/overlays/rom_7d0e88/overlay.ld.
 */
extern unsigned char *iwram_3001f30;

void OvlFunc_947_200a15c(void)
{
  int r5;
  int r0;
  unsigned char *p;

  r5 = (int) __MapActor_GetActor(0);
  r0 = (int) __MapActor_GetActor(0xd);
  p = iwram_3001f30;
  if ((*(int *)(r0 + 8) >> 20) == (*(int *)(r5 + 8) >> 20) &&
      (*(int *)(r0 + 0x10) >> 20) == (*(int *)(r5 + 0x10) >> 20)) {
    __SetFlag(0x203);
    p[0x35] = 1;
  } else {
    __ClearFlag(0x203);
  }
}
