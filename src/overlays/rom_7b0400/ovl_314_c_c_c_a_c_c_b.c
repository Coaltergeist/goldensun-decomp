// fakematch
/* Cluster OvlFunc_925_200aeb8..OvlFunc_925_200aeb8 extracted from goldensun/asm/overlays/rom_7b0400/ovl_314_c_c_c_a_c_c.s.
 *
 * Total .text for this TU = 96 bytes (= 0x60).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b0400/ovl_314_c_c_c_a_c_c_a.o and asm/overlays/rom_7b0400/ovl_314_c_c_c_a_c_c_c.o in
 * goldensun/overlays/rom_7b0400/overlay.ld.
 */
void OvlFunc_925_200aeb8(void)
{
  unsigned int a;
  unsigned int b;
  unsigned int h0;
  unsigned int z;
  unsigned int c;
  unsigned int r2val;
  unsigned int r0val;
  unsigned int h1;
  unsigned int h2;
  int d;
  int e;
  int f;
  unsigned int g;

  __CutsceneStart();

  a = 0x80;
  __asm__ volatile ("" : "+r" (a));
  b = 0x80;
  __asm__ volatile ("" : "+r" (b));
  h0 = 0;
  __asm__ volatile ("" : "+r" (h0));
  a <<= 8;
  b <<= 7;
  __MapActor_SetSpeed(h0, a, b);

  z = 0;
  __asm__ volatile ("" : "+r" (z));
  __Func_80921c4(z, 0x68, 0x98);

  c = 0x80;
  __asm__ volatile ("" : "+r" (c));
  r2val = 0x3c;
  __asm__ volatile ("" : "+r" (r2val));
  r0val = 0;
  __asm__ volatile ("" : "+r" (r0val));
  c <<= 7;
  __Func_8092adc(r0val, c, r2val);

  h1 = 0x11;
  __asm__ volatile ("" : "+r" (h1));
  __Func_8092b08(h1, 0);

  h2 = 0x12;
  __asm__ volatile ("" : "+r" (h2));
  __Func_8092b08(h2, 0);

  OvlFunc_925_200b208();

  d = 1;
  __asm__ volatile ("" : "+r" (d));
  e = 1;
  __asm__ volatile ("" : "+r" (e));
  f = 1;
  __asm__ volatile ("" : "+r" (f));
  e = -e;
  f = -f;
  g = 0;
  d = -d;
  __Func_80933f8(d, e, f, g);

  __Func_8091e9c(1);

  __CutsceneEnd();
}
