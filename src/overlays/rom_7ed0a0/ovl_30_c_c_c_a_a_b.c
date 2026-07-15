// fakematch
/* Cluster OvlFunc_964_200a300..OvlFunc_964_200a300 extracted from goldensun/asm/overlays/rom_7ed0a0/ovl_30_c_c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ed0a0/ovl_30_c_c_c_a_a_a.o and asm/overlays/rom_7ed0a0/ovl_30_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_7ed0a0/overlay.ld.
 */
extern void OvlFunc_964_20080c4(void);
extern void OvlFunc_964_200a0a4(void);

void OvlFunc_964_200a300(void)
{
  __CutsceneStart();
  {
    register unsigned int t1 __asm__("r3") = 0x13;
    register unsigned int t2 __asm__("r2") = 0x2d;
    __Func_8010704(0x53, 0x2d, 0xb, 8, t1, t2);
  }
  OvlFunc_964_20080c4();
  OvlFunc_964_200a0a4();
  __CutsceneEnd();
}
