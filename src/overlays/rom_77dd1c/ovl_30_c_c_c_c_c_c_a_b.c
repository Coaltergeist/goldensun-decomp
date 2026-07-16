/* Cluster OvlFunc_882_200c56c..OvlFunc_882_200c56c extracted from goldensun/asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_c_c_a_a.o and asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_c_c_a_c.o in
 * goldensun/overlays/rom_77dd1c/overlay.ld.
 */
extern void OvlFunc_882_200c304(void *actor);
extern unsigned char L57f8[] __asm__(".L57f8");

void OvlFunc_882_200c56c(void) {
  OvlFunc_882_200c304(__MapActor_GetActor(0x20));
  OvlFunc_882_200c304(__MapActor_GetActor(0x21));
  OvlFunc_882_200c304(__MapActor_GetActor(0x1e));
  if (*(int *)L57f8 == 0) {
    OvlFunc_882_200c304(__MapActor_GetActor(0x1d));
  }
}
