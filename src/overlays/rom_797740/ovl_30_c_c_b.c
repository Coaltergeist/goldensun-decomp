/* Cluster OvlFunc_900_20081d0..OvlFunc_900_20081d0 extracted from goldensun/asm/overlays/rom_797740/ovl_30_c_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_797740/ovl_30_c_c_a.o and asm/overlays/rom_797740/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_797740/overlay.ld.
 */
extern void __PlaySound(int);
extern void __Func_8091e9c(int);

void OvlFunc_900_20081d0(void) {
    __PlaySound(0x7b);
    __Func_8091e9c(1);
}
