/* Cluster OvlFunc_882_20081d0..OvlFunc_882_20081d0 extracted from goldensun/asm/overlays/rom_77dd1c/ovl_30_c_c_a_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77dd1c/ovl_30_c_c_a_c_a.o and asm/overlays/rom_77dd1c/ovl_30_c_c_a_c_c.o in
 * goldensun/overlays/rom_77dd1c/overlay.ld.
 */
extern void __PlaySound(int);
extern void OvlFunc_882_200815c(int);

void OvlFunc_882_20081d0(void) {
    __PlaySound(0x7b);
    OvlFunc_882_200815c(1);
}
