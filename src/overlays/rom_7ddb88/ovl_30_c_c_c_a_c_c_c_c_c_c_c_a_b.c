/* Cluster OvlFunc_955_20088ec..OvlFunc_955_20088ec extracted from goldensun/asm/overlays/rom_7ddb88/ovl_30_c_c_c_a_c_c_c_c_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ddb88/ovl_30_c_c_c_a_c_c_c_c_c_c_c_a_a.o and asm/overlays/rom_7ddb88/ovl_30_c_c_c_a_c_c_c_c_c_c_c_a_c.o in
 * goldensun/overlays/rom_7ddb88/overlay.ld.
 */
// fakematch
extern void OvlFunc_955_2008714(void);
extern unsigned int L4838[] __asm__(".L4838");
extern unsigned int L4834[] __asm__(".L4834");
extern void __MapActor_SetAnim(int, int);

void OvlFunc_955_20088ec(void)
{
  unsigned int w, z;

  L4838[0] = 0;
  L4834[0] = 0;
  __StopTask(OvlFunc_955_2008714);

  w = 0xea;
  z = 0xd8;
  {
    register unsigned int rq __asm__("r0") = 0x16;
    __asm__ volatile ("" : : "r" (rq));
    w <<= 18;
    __asm__ volatile ("" : "+r" (w));
    z <<= 16;
    __MapActor_SetPos(rq, w, z);
  }

  w = 0xf2;
  z = 0xd8;
  {
    register unsigned int rq __asm__("r0") = 0x17;
    __asm__ volatile ("" : : "r" (rq));
    w <<= 18;
    __asm__ volatile ("" : "+r" (w));
    z <<= 16;
    __MapActor_SetPos(rq, w, z);
  }

  w = 0xfa;
  z = 0xd8;
  {
    register unsigned int rq __asm__("r0") = 0x18;
    __asm__ volatile ("" : : "r" (rq));
    w <<= 18;
    __asm__ volatile ("" : "+r" (w));
    z <<= 16;
    __MapActor_SetPos(rq, w, z);
  }

  w = 0x81;
  z = 0xd8;
  {
    register unsigned int rq __asm__("r0") = 0x19;
    __asm__ volatile ("" : : "r" (rq));
    w <<= 19;
    __asm__ volatile ("" : "+r" (w));
    z <<= 16;
    __MapActor_SetPos(rq, w, z);
  }

  __MapActor_SetAnim(0x1f, 10);
}
