/* Cluster OvlFunc_965_20091fc..OvlFunc_965_20091fc extracted from goldensun/asm/overlays/rom_7ef4f4/ovl_30_a_c_c_c_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ef4f4/ovl_30_a_c_c_c_c_a.o and asm/overlays/rom_7ef4f4/ovl_30_a_c_c_c_c_c.o in
 * goldensun/overlays/rom_7ef4f4/overlay.ld.
 */
extern void OvlFunc_965_2009158(void);

void OvlFunc_965_20091fc(void)
{
	__CutsceneStart();
	OvlFunc_965_2009158();
	__Func_8091e9c(0xf);
	__CutsceneEnd();
}
