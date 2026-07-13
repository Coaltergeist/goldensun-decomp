// fakematch
/* Cluster OvlFunc_883_2008cd0..OvlFunc_883_2008cd0 extracted from goldensun/asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_a_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_a_c_a_a.o and asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_a_c_a_c.o in
 * goldensun/overlays/rom_780898/overlay.ld.
 */
void OvlFunc_883_2008cd0(void)
{
  unsigned int a;
  unsigned int b;
  unsigned int c;
  int d;
  int e;
  unsigned int f;
  unsigned int g;
  unsigned int h;
  unsigned int i;

  __CutsceneStart();

  a = 0xc0;
  __asm__ volatile ("" : "+r" (a));
  b = 0xc0;
  c = 0x80;
  b <<= 10;
  c <<= 9;
  a <<= 10;
  __Func_8012330(a, b, c);

  __WaitFrames(10);

  d = 1;
  __asm__ volatile ("" : "+r" (d));
  e = 1;
  e = -e;
  f = 0xe666;
  d = -d;
  __Func_8012330(d, e, f);

  __MessageID(0x1c9a);

  g = 0x11;
  __asm__ volatile ("" : "+r" (g));
  h = 0;
  i = 0x14;
  __Func_8093040(g, h, i);

  {
    register unsigned int p2 __asm__("r2") = 0x14;
    __asm__ volatile ("" : : "r" (p2));
    g = 0x11;
    __asm__ volatile ("" : "+r" (g));
    h = 0;
    __Func_809280c(g, h, p2);
  }

  g = 0x11;
  __asm__ volatile ("" : "+r" (g));
  h = 0;
  __ActorMessage(g, h);

  __CutsceneEnd();
}
