/* Cluster OvlFunc_948_2009a48..OvlFunc_948_2009a48 extracted from goldensun/asm/overlays/rom_7d30e0/ovl_30_c_c_a_a_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d30e0/ovl_30_c_c_a_a_c_a.o and asm/overlays/rom_7d30e0/ovl_30_c_c_a_a_c_c.o in
 * goldensun/overlays/rom_7d30e0/overlay.ld.
 */
void OvlFunc_948_2009a48(void) {
    void *r0;
    __Func_8010704(0x3a, 0x29, 1, 1, 0x2a, 0x2a);
    r0 = __MapActor_GetActor(8);
    *(unsigned char *)((char *)r0 + 0x23) = 2;
}
