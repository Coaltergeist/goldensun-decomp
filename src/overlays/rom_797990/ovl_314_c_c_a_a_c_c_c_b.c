/* Cluster OvlFunc_901_2008b40..OvlFunc_901_2008b40 extracted from goldensun/asm/overlays/rom_797990/ovl_314_c_c_a_a_c_c_c.s.
 *
 * Total .text for this TU = 92 bytes (= 0x5c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_797990/ovl_314_c_c_a_a_c_c_c_a.o and asm/overlays/rom_797990/ovl_314_c_c_a_a_c_c_c_c.o in
 * goldensun/overlays/rom_797990/overlay.ld.
 */
extern void *__MapActor_GetActor(unsigned int);
extern void __PlaySound(unsigned int);
extern void __Func_8010560(void *, unsigned int, unsigned int);
extern void __Func_8010704(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);
extern void OvlFunc_901_2008a80(int, int, int);
extern unsigned char L1782[] __asm__(".L1782");

void OvlFunc_901_2008b40(void)
{
  unsigned char *actor;
  unsigned char *sprite;
  unsigned int s5;
  unsigned int s6;

  actor = (unsigned char *) __MapActor_GetActor(0);
  sprite = *(unsigned char **) (actor + 0x50);
  __PlaySound(0x9e);
  __Func_8010560(L1782, 0x36, 0xd);
  s5 = 0x17;
  s6 = 0xc;
  __Func_8010704(0x21, 0x14, 1, 3, s5, s6);
  actor[0x23] = actor[0x23] & 0xfe;
  sprite[9] = sprite[9] | 0xc;
  OvlFunc_901_2008a80(0x178, 0xe0, 8);
}
