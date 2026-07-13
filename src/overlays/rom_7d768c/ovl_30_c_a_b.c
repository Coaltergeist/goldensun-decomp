// fakematch
/* Cluster OvlFunc_952_200bdf8..OvlFunc_952_200bdf8 extracted from goldensun/asm/overlays/rom_7d768c/ovl_30_c_a.s.
 *
 * Total .text for this TU = 72 bytes (= 0x48).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d768c/ovl_30_c_a_a.o and asm/overlays/rom_7d768c/ovl_30_c_a_c.o in
 * goldensun/overlays/rom_7d768c/overlay.ld.
 */
extern unsigned char L4550[] __asm__(".L4550");

void OvlFunc_952_200bdf8(void)
{
  unsigned short v;
  int t;

  __CutsceneStart();
  __MapActor_SetSpeed(0, 0x8000, 0x4000);
  __PlaySound(0x9e);
  v = 0xa;
  do { v = (unsigned short) v; } while (0);
  __Func_8010560(L4550, 0x24, v);
  t = 0x10;
  {
    register int p1 __asm__("r1") = 2;
    __asm__ volatile ("" : : "r" (p1));
    t = -t;
    __Func_8092208(0, p1, t);
  }
  __CutsceneWait(0x10);
  __Func_8091e9c(2);
  __CutsceneEnd();
}
