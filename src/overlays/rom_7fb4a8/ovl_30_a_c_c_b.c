/* Cluster OvlFunc_971_2008060..OvlFunc_971_2008060 extracted from goldensun/asm/overlays/rom_7fb4a8/ovl_30_a_c_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7fb4a8/ovl_30_a_c_c_a.o and asm/overlays/rom_7fb4a8/ovl_30_a_c_c_c.o in
 * goldensun/overlays/rom_7fb4a8/overlay.ld.
 */
extern short gState[];
extern unsigned char gScript_887__02009c04[];
extern unsigned char L19f4[] __asm__(".L19f4");

unsigned char *OvlFunc_971_2008060(void)
{
	int v;
	v = gState[0xe1];
	if (v == 0xb || v == 9)
		return gScript_887__02009c04;
	return L19f4;
}
