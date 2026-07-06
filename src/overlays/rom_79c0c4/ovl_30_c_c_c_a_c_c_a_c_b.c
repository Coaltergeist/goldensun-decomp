/* Cluster OvlFunc_908_2008430..OvlFunc_908_2008430 extracted from goldensun/asm/overlays/rom_79c0c4/ovl_30_c_c_c_a_c_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79c0c4/ovl_30_c_c_c_a_c_c_a_c_a.o and asm/overlays/rom_79c0c4/ovl_30_c_c_c_a_c_c_a_c_c.o in
 * goldensun/overlays/rom_79c0c4/overlay.ld.
 */
// fakematch
extern void __CutsceneStart(void);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __Func_809280c(int, int, int);
extern void __Func_8092adc(int, int, int);
extern void __CutsceneEnd(void);

void OvlFunc_908_2008430(void)
{
  register int r1v __asm__("r1");
  register int r0v __asm__("r0");
  register int r2v __asm__("r2");
  __CutsceneStart();
  __MessageID(0x1705);
  __ActorMessage(0x17, 0);
  __Func_809280c(0x17, 0, 0);
  __ActorMessage(0x17, 0);
  r1v = 0xc0;
  __asm__ volatile ("" : : "r" (r1v));
  r0v = 0x17;
  __asm__ volatile ("" : : "r" (r0v));
  r1v = r1v << 8;
  __asm__ volatile ("" : : "r" (r1v));
  r2v = 10;
  __asm__ volatile ("" : : "r" (r2v));
  __Func_8092adc(r0v, r1v, r2v);
  __CutsceneEnd();
}
