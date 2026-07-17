/* Cluster OvlFunc_965_200a6b8..OvlFunc_965_200a6b8 extracted from goldensun/asm/overlays/rom_7ef4f4/ovl_30_c_a.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ef4f4/ovl_30_c_a_a.o and asm/overlays/rom_7ef4f4/ovl_30_c_a_c.o in
 * goldensun/overlays/rom_7ef4f4/overlay.ld.
 */
void OvlFunc_965_200a6b8(void)
{
  int actor;
  int field1;
  int field2;

  actor = (int) __MapActor_GetActor(12);
  field1 = *((int *) (actor + 8)) >> 20;
  if (field1 == 0x14)
  {
    field2 = *((int *) (actor + 16)) >> 20;
    if (field2 == 12)
    {
      *((char *) (actor + 0x55)) = 2;
      *((int *) (actor + 0x14)) = 0x300000;
      *((char *) (actor + 0x23)) = 2;
      __Func_8010704(0x26, 12, 1, 1, field1, field2);
    }
  }
}
