// fakematch
/* Cluster OvlFunc_930_2008180..OvlFunc_930_2008180 extracted from goldensun/asm/overlays/rom_7b7f1c/ovl_30_c_c_a_c_c_c_a_a.s.
 *
 * Total .text for this TU = 108 bytes (= 0x6c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b7f1c/ovl_30_c_c_a_c_c_c_a_a_a.o and asm/overlays/rom_7b7f1c/ovl_30_c_c_a_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_7b7f1c/overlay.ld.
 */
extern unsigned char L1788[] __asm__(".L1788");
extern unsigned char *iwram_3001ebc;

void OvlFunc_930_2008180(void)
{
  int pActor;
  int t;

  __PlaySound(0xbc);
  __Func_8010560(L1788, 0x43, 6);
  pActor = __MapActor_GetActor(0);
  *(unsigned char *)(pActor + 0x55) = 0;
  {
    unsigned int v1 = 0xcccc;
    {
      register unsigned int rq __asm__("r0") = 0;
      __asm__ volatile ("" : : "r" (rq));
      {
        unsigned int v2 = 0x6666;
        __MapActor_SetSpeed(rq, v1, v2);
      }
    }
  }
  *(unsigned int *)(iwram_3001ebc + 0x1c0) = 0x100;
  {
    register unsigned int rq __asm__("r0") = 0;
    __asm__ volatile ("" : : "r" (rq));
    __MapActor_SetAnim(rq, 2);
  }
  t = 0x10;
  {
    register int p1 __asm__("r1") = 0;
    __asm__ volatile ("" : : "r" (p1));
    t = -t;
    __MapActor_TravelBy(0, p1, t);
  }
  __CutsceneWait(0x10);
  __Func_8091e9c(2);
}
