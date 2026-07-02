/* Cluster OvlFunc_931_200884c..OvlFunc_931_200884c extracted from goldensun/asm/overlays/rom_7b8cb0/ovl_30_c_c_c_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b8cb0/ovl_30_c_c_c_c_c_c_c_c_c_a.o and asm/overlays/rom_7b8cb0/ovl_30_c_c_c_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7b8cb0/overlay.ld.
 */
void OvlFunc_931_200884c(void) {
    int r3;
    r3 = *(int *)((char *)__MapActor_GetActor(0x13) + 8);
    if ((r3 >> 20) == 0x16) {
        __SetFlag(0x906);
    } else {
        __ClearFlag(0x906);
    }
}
