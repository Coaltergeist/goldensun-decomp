/* Cluster OvlFunc_902_20082fc..OvlFunc_902_20082fc extracted from goldensun/asm/overlays/rom_7987ac/ovl_30_c_c_a_a_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7987ac/ovl_30_c_c_a_a_c_c_c_c_a.o and asm/overlays/rom_7987ac/ovl_30_c_c_a_a_c_c_c_c_c.o in
 * goldensun/overlays/rom_7987ac/overlay.ld.
 */
// fakematch
extern void OvlFunc_902_200811c(void);

void OvlFunc_902_20082fc(void)
{
  __CutsceneStart();
  __Func_80925cc(0x10, 1);
  __CutsceneEnd();
  *((unsigned char *)__MapActor_GetActor(0x10) + 0x5b) = 1;
  OvlFunc_902_200811c();
  {
    register unsigned char *p __asm__("r0");
    register unsigned char z __asm__("r5");
    p = (unsigned char *)__MapActor_GetActor(0x10);
    __asm__ volatile ("" : : "r" (p));
    z = 0;
    __asm__ volatile ("" : : "r" (z));
    p[0x5b] = z;
  }
  __MapActor_SetBehavior(0x10, 2);
}
