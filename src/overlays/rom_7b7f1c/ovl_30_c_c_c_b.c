// fakematch
/* Cluster OvlFunc_930_2009144..OvlFunc_930_2009144 extracted from goldensun/asm/overlays/rom_7b7f1c/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b7f1c/ovl_30_c_c_c_a.o and asm/overlays/rom_7b7f1c/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_7b7f1c/overlay.ld.
 */
void OvlFunc_930_2009144(void)
{
  unsigned char *p;

  __CutsceneStart();
  {
    register unsigned int t1 __asm__("r3") = 0x15;
    register unsigned int t2 __asm__("r2") = 0xb;
    __Func_8010704(0xe, 6, 1, 2, t1, t2);
  }
  p = (unsigned char *)__MapActor_GetActor(0xf);
  p[0x59] = 0xfe;
  __SetFlag(0x201);
  __CutsceneEnd();
}
