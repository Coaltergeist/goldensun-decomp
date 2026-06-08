/* Cluster OvlFunc_922_2008ec0..OvlFunc_922_2008ec0 extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_c_c_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_c_c_c_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_c_c_c_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern void __MapActor_SetAnim(int arg0, int arg1);

void OvlFunc_922_2008ec0(void)
{
	__MapActor_SetAnim(0xb, 1);
	__MapActor_SetAnim(0xb, 2);
}
