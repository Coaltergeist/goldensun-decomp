/* Cluster OvlFunc_968_200c030..OvlFunc_968_200c030 extracted from goldensun/asm/overlays/rom_7f2f14/ovl_30_c_c_a_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f2f14/ovl_30_c_c_a_c_a.o and asm/overlays/rom_7f2f14/ovl_30_c_c_a_c_c.o in
 * goldensun/overlays/rom_7f2f14/overlay.ld.
 */
extern void OvlFunc_968_200c048(unsigned int);

void OvlFunc_968_200c030(void)
{
	unsigned int stack_buf[3];

	stack_buf[0] = 1;
	stack_buf[2] = 0;
	OvlFunc_968_200c048((unsigned int)stack_buf);
}
