/* Cluster OvlFunc_901_2008b18..OvlFunc_901_2008b18 extracted from goldensun/asm/overlays/rom_797990/ovl_314_c_c_a_a_c_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_797990/ovl_314_c_c_a_a_c_c_a.o and asm/overlays/rom_797990/ovl_314_c_c_a_a_c_c_c.o in
 * goldensun/overlays/rom_797990/overlay.ld.
 */
extern int gOvl_0200976c;
extern void OvlFunc_901_2008a80(int, int, int);

void OvlFunc_901_2008b18(void)
{
  __PlaySound(0x9e);
 do { } while (0);
  __Func_8010560(&gOvl_0200976c, 0x2c, 0x11);
  OvlFunc_901_2008a80(0xd8, 0x90 << 1, 7);
}
