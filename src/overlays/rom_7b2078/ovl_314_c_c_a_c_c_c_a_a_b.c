/* Cluster OvlFunc_926_20092e0..OvlFunc_926_20092e0 extracted from goldensun/asm/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_a_a.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_a_a_a.o and asm/overlays/rom_7b2078/ovl_314_c_c_a_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_7b2078/overlay.ld.
 */
extern void OvlFunc_926_2008bf4(void);
extern void OvlFunc_926_2008cd4(void);
extern void OvlFunc_926_2009160(void);
extern void OvlFunc_926_200902c(int arg0);

void OvlFunc_926_20092e0(void)
{
  int actor;

  __CutsceneStart();
  actor = __MapActor_GetActor(0);
  if (*(unsigned short *)(actor + 6) > 0x4000 &&
      (actor = __MapActor_GetActor(0), *(unsigned short *)(actor + 6) < 0xc000))
  {
    OvlFunc_926_2008bf4();
  }
  else
  {
    OvlFunc_926_2008cd4();
  }
  if (__GetFlag(0x898) != 0)
  {
    OvlFunc_926_2009160();
  }
  else
  {
    OvlFunc_926_200902c(0);
  }
  __CutsceneEnd();
}
