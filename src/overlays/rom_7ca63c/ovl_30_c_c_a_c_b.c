// fakematch
/* Cluster OvlFunc_944_200840c..OvlFunc_944_200840c extracted from goldensun/asm/overlays/rom_7ca63c/ovl_30_c_c_a_c.s.
 *
 * Total .text for this TU = 92 bytes (= 0x5c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ca63c/ovl_30_c_c_a_c_a.o and asm/overlays/rom_7ca63c/ovl_30_c_c_a_c_c.o in
 * goldensun/overlays/rom_7ca63c/overlay.ld.
 */
extern void OvlFunc_944_20084b0(void);

void OvlFunc_944_200840c(void)
{
  int d;
  int e;
  int f;
  unsigned int g;
  unsigned int a;
  unsigned int b;
  unsigned int h;
  unsigned int z;
  unsigned int x;
  int ret;

  __CutsceneStart();

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

  __WaitFrames(1);

  ret = __Func_8093554();

  z = 0;
  do { z = (unsigned short) z; } while (0);
  *(unsigned char *)(ret + 0x55) = z;

  a = 0x80;
  b = 0xa4;
  a <<= 15;
  h = 0x1410000;
  b <<= 16;
  __Func_80933f8(b, a, h, z);

  __Func_800fe9c();

  __WaitFrames(1);

  x = 0;
  do { x = (unsigned short) x; } while (0);
  __MapActor_SetPos(x, 0, 0);

  OvlFunc_944_20084b0();

  __CutsceneEnd();
}
