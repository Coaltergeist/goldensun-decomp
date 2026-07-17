// fakematch
/* Cluster OvlFunc_974_2008244..OvlFunc_974_2008244 extracted from goldensun/asm/overlays/rom_7fcd20/ovl_30_c_c_a_c_a.s.
 *
 * Total .text for this TU = 88 bytes (= 0x58).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7fcd20/ovl_30_c_c_a_c_a_a.o and asm/overlays/rom_7fcd20/ovl_30_c_c_a_c_a_c.o in
 * goldensun/overlays/rom_7fcd20/overlay.ld.
 */
extern unsigned int L1684 __asm__(".L1684");

void OvlFunc_974_2008244(void)
{
  {
    register unsigned int rp __asm__("r0") = 0xc1a;
    __asm__ volatile ("" : : "r" (rp));
    __Func_801776c(rp, 1);
  }
  __SetMinLevel(0, L1684);
  __SetMinLevel(1, L1684);
  __SetMinLevel(3, L1684);
  __SetMinLevel(2, L1684);
  L1684 = L1684 + 10;
  __CalcStats(0);
  __CalcStats(1);
  __CalcStats(3);
  __CalcStats(2);
}
