/* Cluster OvlFunc_882_2008ec4..OvlFunc_882_2008ec4 extracted from goldensun/asm/overlays/rom_77dd1c/ovl_30_c_c_c_a_c_c_c.s.
 *
 * Total .text for this TU = 116 bytes (= 0x74).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77dd1c/ovl_30_c_c_c_a_c_c_c_a.o and asm/overlays/rom_77dd1c/ovl_30_c_c_c_a_c_c_c_c.o in
 * goldensun/overlays/rom_77dd1c/overlay.ld.
 */
extern void __Func_8010704(int a, int b, int c, int d, int e, int f);

void OvlFunc_882_2008ec4(void)
{
	unsigned int b = 0x15;
	register unsigned int a __asm__("r8") = 0x39;
	unsigned int z;

	__Func_8010704(0x1d, 0x40, 1, 1, b, a);
	z = 0x3a;
	__Func_8010704(0x1d, 0x40, 1, 1, b, z);
	__Func_8010704(0x1d, 0x40, 1, 1, 0x16, z);
	b = 0x14;
	__Func_8010704(0x1d, 0x40, 1, 1, b, z);
	__Func_8010704(0x1c, 0x14, 1, 1, b, a);
}
