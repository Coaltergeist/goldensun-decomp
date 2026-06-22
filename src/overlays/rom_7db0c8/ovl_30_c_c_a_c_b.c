/* Cluster OvlFunc_954_2008954..OvlFunc_954_2008954 extracted from goldensun/asm/overlays/rom_7db0c8/ovl_30_c_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7db0c8/ovl_30_c_c_a_c_a.o and asm/overlays/rom_7db0c8/ovl_30_c_c_a_c_c.o in
 * goldensun/overlays/rom_7db0c8/overlay.ld.
 */
extern int OvlFunc_common1_21c8(void);
extern void OvlFunc_954_2008238(void);

void OvlFunc_954_2008954(void)
{
	if (OvlFunc_common1_21c8() == 0)
		__Func_8093c00();
	else
		OvlFunc_954_2008238();
}
