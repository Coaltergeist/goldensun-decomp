/* Cluster OvlFunc_964_2009318..OvlFunc_964_2009318 extracted from goldensun/asm/overlays/rom_7ed0a0/ovl_30_a_c_a_a.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ed0a0/ovl_30_a_c_a_a_a.o and asm/overlays/rom_7ed0a0/ovl_30_a_c_a_a_c.o in
 * goldensun/overlays/rom_7ed0a0/overlay.ld.
 */
extern void OvlFunc_964_20080c4(void);
extern void OvlFunc_964_200a3a0(void);

void OvlFunc_964_2009318(void)
{
  __CutsceneStart();
  {
    unsigned int t1 = 9;
    unsigned int t2 = 0x26;
    __Func_8010704(0x49, 0x26, 5, 5, t1, t2);
  }
  OvlFunc_964_20080c4();
  OvlFunc_964_200a3a0();
  __CutsceneEnd();
}
