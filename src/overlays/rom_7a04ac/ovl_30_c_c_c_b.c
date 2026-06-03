/* Cluster OvlFunc_913_200a864..OvlFunc_913_200a864 extracted from goldensun/asm/overlays/rom_7a04ac/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a04ac/ovl_30_c_c_c_a.o and asm/overlays/rom_7a04ac/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_7a04ac/overlay.ld.
 */
extern int __Func_80929d8();
extern unsigned int iwram_3001e40;

unsigned int OvlFunc_913_200a864(int a) {
    if ((iwram_3001e40 >> 1) & 1) {
        __Func_80929d8(a, 10);
    } else {
        __Func_80929d8(a, 7);
    }
    return 0;
}
