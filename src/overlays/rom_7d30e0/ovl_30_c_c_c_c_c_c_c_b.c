/* Cluster OvlFunc_948_2009ec0..OvlFunc_948_2009ec0 extracted from goldensun/asm/overlays/rom_7d30e0/ovl_30_c_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d30e0/ovl_30_c_c_c_c_c_c_c_a.o and asm/overlays/rom_7d30e0/ovl_30_c_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7d30e0/overlay.ld.
 */
void OvlFunc_948_2009ec0(void) {
    unsigned int r4;
    unsigned int r3;
    unsigned int r2;
    unsigned int r1;

    r4 = __MapActor_GetActor(9);
    r3 = 0x80;
    r2 = *(unsigned int *)((char *)r4 + 0x10);
    r3 <<= 9;
    r1 = *(unsigned int *)((char *)r4 + 8);
    r2 += r3;
    __Func_808edac(0x6b, r1, r2);
}
