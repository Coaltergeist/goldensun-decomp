/* Cluster OvlFunc_968_200996c..OvlFunc_968_200996c extracted from goldensun/asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_c_a.o and asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_c_c.o in
 * goldensun/overlays/rom_7f2f14/overlay.ld.
 */
extern void OvlFunc_968_2008374(void);
extern void OvlFunc_968_20098f8(void);

void OvlFunc_968_200996c(void)
{
  __CutsceneStart();
  {
    unsigned int t1 = 0xc;
    unsigned int t2 = 0x2c;
    __Func_8010704(0x13, 0x2c, 4, 1, t1, t2);
  }
  OvlFunc_968_2008374();
  OvlFunc_968_20098f8();
  __CutsceneEnd();
}
