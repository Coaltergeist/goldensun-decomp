/* Cluster OvlFunc_910_200845c..OvlFunc_910_200845c extracted from goldensun/asm/overlays/rom_79dd90/ovl_30_c_c_c_c_a.s.
 *
 * Total .text for this TU = 96 bytes (= 0x60).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79dd90/ovl_30_c_c_c_c_a_a.o and asm/overlays/rom_79dd90/ovl_30_c_c_c_c_a_c.o in
 * goldensun/overlays/rom_79dd90/overlay.ld.
 */
// fakematch
extern unsigned char *iwram_3001ebc;

void OvlFunc_910_200845c(void)
{
  int t;
  unsigned int w, z;

  __CutsceneStart();
  if (__GetFlag(0x200) == 0) {
    OvlFunc_910_20088e8();
  }
  w = 0x80;
  z = 0x80;
  {
    register unsigned int rq __asm__("r0") = 0;
    __asm__ volatile ("" : : "r" (rq));
    w <<= 8;
    __asm__ volatile ("" : "+r" (w));
    z <<= 7;
    __MapActor_SetSpeed(rq, w, z);
  }
  *(unsigned int *)(iwram_3001ebc + 0x1c0) = 0x100;
  {
    register unsigned int rq __asm__("r0") = 0;
    __asm__ volatile ("" : : "r" (rq));
    __MapActor_SetAnim(rq, 2);
  }
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
