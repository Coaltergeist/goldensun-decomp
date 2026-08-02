/* Cluster OvlFunc_898_2008fb4..OvlFunc_898_2008fb4 extracted from goldensun/asm/overlays/rom_793768/ovl_314_c_c_c_a_c_a_c.s.
 *
 * Total .text for this TU = 92 bytes (= 0x5c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_c_c_a_c_a_c_a.o and asm/overlays/rom_793768/ovl_314_c_c_c_a_c_a_c_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern unsigned char L286a[] __asm__(".L286a");
extern void OvlFunc_898_2008ef4(int arg0, int arg1, int arg2);
extern void __Func_8010560(unsigned char *arg0, int arg1, int arg2);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);

void OvlFunc_898_2008fb4(void)
{
  unsigned int actor;
  unsigned char *sprite;
  unsigned int s1;
  unsigned int s2;

  actor = __MapActor_GetActor(0);
  sprite = *(unsigned char **)(actor + 0x50);
  __PlaySound(0x9e);
  __Func_8010560(L286a, 0x36, 0xd);
  s1 = 0x17;
  s2 = 0xc;
  __Func_8010704(0x21, 0x14, 1, 3, s1, s2);
  *(unsigned char *)(actor + 0x23) &= 0xfe;
  *(sprite + 9) |= 0xc;
  OvlFunc_898_2008ef4(0xbc << 1, 0xe0, 8);
}
