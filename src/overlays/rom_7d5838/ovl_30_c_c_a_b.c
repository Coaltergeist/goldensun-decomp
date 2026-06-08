/* Cluster OvlFunc_950_2008064..OvlFunc_950_2008064 extracted from goldensun/asm/overlays/rom_7d5838/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d5838/ovl_30_c_c_a_a.o and asm/overlays/rom_7d5838/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7d5838/overlay.ld.
 */
extern int __GetFlag(int);
extern unsigned char L19d0[] __asm__(".L19d0");
extern unsigned char L1670[] __asm__(".L1670");
extern unsigned char gScript_886__02009310[];

unsigned char *OvlFunc_950_2008064(void)
{
	if (__GetFlag(0x95 << 4))
		return L19d0;
	if (__GetFlag(0x962))
		return L1670;
	return gScript_886__02009310;
}
