/* Cluster OvlFunc_898_2008f8c..OvlFunc_898_2008f8c extracted from goldensun/asm/overlays/rom_793768/ovl_314_c_c_c_a_c_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_c_c_a_c_a_a.o and asm/overlays/rom_793768/ovl_314_c_c_c_a_c_a_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern unsigned char L2854[] __asm__(".L2854");
extern void OvlFunc_898_2008ef4(int, int, int);

void OvlFunc_898_2008f8c(void)
{
  __PlaySound(0x9e);
 do { } while (0);
  __Func_8010560(L2854, 0x2c, 0x11);
  OvlFunc_898_2008ef4(0xd8, 0x90 << 1, 7);
}
