/* Cluster OvlFunc_956_2008a84..OvlFunc_956_2008a84 extracted from goldensun/asm/overlays/rom_7e0928/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e0928/ovl_30_c_c_a_a.o and asm/overlays/rom_7e0928/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7e0928/overlay.ld.
 */
extern unsigned char L5480[] __asm__(".L5480");
extern void OvlFunc_956_200804c(void);

void OvlFunc_956_2008a84(void) {
  int v;

  __Func_809ad90(0x1c);
  __SetFlag(0x361);
  __WaitFrames(10);
  v = *(int *)L5480;
  while (v != 1 && v != 3) {
    __WaitFrames(1);
    v = *(int *)L5480;
  }
  __WaitFrames(1);
  __StopTask(OvlFunc_956_200804c);
}
