// fakematch
/* Cluster OvlFunc_964_2009374..OvlFunc_964_2009374 extracted from goldensun/asm/overlays/rom_7ed0a0/ovl_30_a_c_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ed0a0/ovl_30_a_c_a_a_c_a.o and asm/overlays/rom_7ed0a0/ovl_30_a_c_a_a_c_c.o in
 * goldensun/overlays/rom_7ed0a0/overlay.ld.
 */
extern void OvlFunc_964_20080c4(void);
extern void OvlFunc_964_200a410(void);

void OvlFunc_964_2009374(void)
{
  __CutsceneStart();
  {
    register unsigned int t1 __asm__("r3") = 0x1d;
    register unsigned int t2 __asm__("r2") = 0x1e;
    __Func_8010704(0x5d, 0x1e, 6, 5, t1, t2);
  }
  OvlFunc_964_20080c4();
  OvlFunc_964_200a410();
  __CutsceneEnd();
}
