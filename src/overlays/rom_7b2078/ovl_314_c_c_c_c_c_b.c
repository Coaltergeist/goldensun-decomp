/* Cluster OvlFunc_926_200a764..OvlFunc_926_200a764 extracted from goldensun/asm/overlays/rom_7b2078/ovl_314_c_c_c_c_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b2078/ovl_314_c_c_c_c_c_a.o and asm/overlays/rom_7b2078/ovl_314_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7b2078/overlay.ld.
 */
extern void __PlaySound(int);
extern void __Func_8091e9c(int);

void OvlFunc_926_200a764(void) {
    __PlaySound(0x7b);
    __Func_8091e9c(1);
}
