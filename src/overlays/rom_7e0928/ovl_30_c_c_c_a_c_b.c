/* Cluster OvlFunc_956_2008d84..OvlFunc_956_2008d84 extracted from goldensun/asm/overlays/rom_7e0928/ovl_30_c_c_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e0928/ovl_30_c_c_c_a_c_a.o and asm/overlays/rom_7e0928/ovl_30_c_c_c_a_c_c.o in
 * goldensun/overlays/rom_7e0928/overlay.ld.
 */
extern int OvlFunc_common1_21c8(void);
extern void OvlFunc_956_200857c(void);

void OvlFunc_956_2008d84(void)
{
	if (OvlFunc_common1_21c8() == 0)
		__Func_8093c00();
	else
		OvlFunc_956_200857c();
}
