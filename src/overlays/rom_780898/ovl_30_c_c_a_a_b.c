/* Cluster OvlFunc_883_2008aa4..OvlFunc_883_2008aa4 extracted from goldensun/asm/overlays/rom_780898/ovl_30_c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_780898/ovl_30_c_c_a_a_a.o and asm/overlays/rom_780898/ovl_30_c_c_a_a_c.o in
 * goldensun/overlays/rom_780898/overlay.ld.
 */
extern int __GetFlag(int id);
extern unsigned char L7334[] __asm__(".L7334");
extern unsigned char L7100[] __asm__(".L7100");
extern unsigned char L6f38[] __asm__(".L6f38");

unsigned char *OvlFunc_883_2008aa4(void)
{
	if (__GetFlag(0x87a))
		return L7334;
	if (__GetFlag(0x815))
		return L7100;
	return L6f38;
}
