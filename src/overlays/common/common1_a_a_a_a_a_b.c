/* Cluster OvlFunc_common1_0..OvlFunc_common1_0 extracted from goldensun/asm/overlays/common/common1_a_a_a_a_a.s.
 *
 * Total .text for this TU = 120 bytes (= 0x78).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/common/common1_a_a_a_a_a_a.o and asm/overlays/common/common1_a_a_a_a_a_c.o in
 * goldensun/overlays/rom_7db0c8/overlay.ld.
 */
extern void __MapActor_SetPos(int pos, int x, int y);

void OvlFunc_common1_0(void)
{
  int c;
  int x1, y1;
  int x2, y2;
  int x3, y3;

  c = 0x80 << 12;

  x1 = __GetFlagByte(0xe0 << 2);
  y1 = __GetFlagByte(0xe2 << 2);
  x1 <<= 20;
  x1 += c;
  y1 <<= 20;
  y1 += c;
  __MapActor_SetPos(1, x1, y1);

  x2 = __GetFlagByte(0xe4 << 2);
  y2 = __GetFlagByte(0xe6 << 2);
  x2 <<= 20;
  x2 += c;
  y2 <<= 20;
  y2 += c;
  __MapActor_SetPos(2, x2, y2);

  x3 = __GetFlagByte(0xe8 << 2);
  y3 = __GetFlagByte(0xea << 2);
  x3 <<= 20;
  x3 += c;
  y3 <<= 20;
  y3 += c;
  __MapActor_SetPos(3, x3, y3);
}
