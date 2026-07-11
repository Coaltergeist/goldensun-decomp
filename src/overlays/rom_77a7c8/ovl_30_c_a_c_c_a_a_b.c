/* Cluster OvlFunc_881_20086b4..OvlFunc_881_20086b4 extracted from goldensun/asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_a_a.o and asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_a_c.o in
 * goldensun/overlays/rom_77a7c8/overlay.ld.
 */
void OvlFunc_881_20086b4(void) {
    if (__GetFlag(0x85a) == 0) {
        __Func_8091e9c(0x65);
    } else {
        __PlaySound(0x7b);
        __Func_8091e9c(3);
    }
}
