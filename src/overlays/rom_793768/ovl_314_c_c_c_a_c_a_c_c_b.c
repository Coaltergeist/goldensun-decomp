/* Cluster OvlFunc_898_2009010..OvlFunc_898_2009010 extracted from goldensun/asm/overlays/rom_793768/ovl_314_c_c_c_a_c_a_c_c.s.
 *
 * Total .text for this TU = 92 bytes (= 0x5c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_c_c_a_c_a_c_c_a.o and asm/overlays/rom_793768/ovl_314_c_c_c_a_c_a_c_c_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern unsigned char L2880[] __asm__(".L2880");
extern void OvlFunc_898_2008ef4(int, int, int);
extern void __Func_8010560(unsigned char *, int, int);
extern void __Func_8010704(int, int, int, int, int, int);

void OvlFunc_898_2009010(void)
{
  unsigned char *actor;
  unsigned char *sprite;
  int s1;
  int s2;

  actor = (unsigned char *) __MapActor_GetActor(0);
  sprite = *(unsigned char **)(actor + 0x50);
  __PlaySound(0x9e);
  __Func_8010560(L2880, 0x31, 0xa);
  s1 = 0x12;
  s2 = 0xa;
  __Func_8010704(0x21, 0x14, 1, 3, s1, s2);
  actor += 0x23;
  *actor = *actor & 0xfe;
  sprite[9] = sprite[9] | 0xc;
  OvlFunc_898_2008ef4(0x94 << 1, 0xb0, 9);
}
