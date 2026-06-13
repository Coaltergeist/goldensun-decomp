/* Cluster OvlFunc_968_2009628..OvlFunc_968_2009628 extracted from goldensun/asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_c.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_a.o and asm/overlays/rom_7f2f14/ovl_30_c_a_c_a_c_c.o in
 * goldensun/overlays/rom_7f2f14/overlay.ld.
 */
extern void OvlFunc_968_2008374(void);
extern void OvlFunc_968_20094f4(void);

void OvlFunc_968_2009628(void)
{
	__CutsceneStart();
	OvlFunc_968_2008374();
	__CutsceneWait(0x14);
	__CutsceneEnd();
	OvlFunc_968_20094f4();
}
