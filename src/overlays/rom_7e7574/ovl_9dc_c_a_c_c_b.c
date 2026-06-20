/* Cluster OvlFunc_959_200a4e4..OvlFunc_959_200a4e4 extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
extern void OvlFunc_959_200a2d4(void);

void OvlFunc_959_200a4e4(void)
{
  int r4;
 do { __SetFlag(0x945); OvlFunc_959_200a2d4(); } while (0);
  r4 = 9;
  __MapActor_SetPos(r4, 0, 0);
}
