/* Cluster OvlFunc_901_2008b9c..OvlFunc_901_2008b9c extracted from goldensun/asm/overlays/rom_797990/ovl_314_c_c_a_a_c_c_c_c.s.
 *
 * Total .text for this TU = 92 bytes (= 0x5c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_797990/ovl_314_c_c_a_a_c_c_c_c_a.o and asm/overlays/rom_797990/ovl_314_c_c_a_a_c_c_c_c_c.o in
 * goldensun/overlays/rom_797990/overlay.ld.
 */
extern unsigned char L1798[] __asm__(".L1798");
extern void OvlFunc_901_2008a80(int, int, int);
extern void *__MapActor_GetActor(int);
extern void __PlaySound(int);
extern void __Func_8010560(unsigned char *, int, int);
extern void __Func_8010704(int, int, int, int, int, int);
struct Actor901
{
unsigned char pad[0x23];
unsigned char f23;
unsigned char pad2[0x50 - 0x24];
unsigned char *sprite;
};

void OvlFunc_901_2008b9c(void)
{
  struct Actor901 *actor;
  unsigned char *sprite;
  int s1;
  int s2;

  actor = (struct Actor901 *) __MapActor_GetActor(0);
  sprite = actor->sprite;
  __PlaySound(0x9e);
  __Func_8010560(L1798, 0x31, 0xa);
  s1 = 0x12;
  s2 = 0xa;
  __Func_8010704(0x21, 0x14, 1, 3, s1, s2);
  actor->f23 = actor->f23 & 0xfe;
  sprite[9] = sprite[9] | 0xc;
  OvlFunc_901_2008a80(0x94 << 1, 0xb0, 9);
}
