/* Cluster OvlFunc_948_2009e94..OvlFunc_948_2009e94 extracted from goldensun/asm/overlays/rom_7d30e0/ovl_30_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d30e0/ovl_30_c_c_c_c_c_c_a.o and asm/overlays/rom_7d30e0/ovl_30_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7d30e0/overlay.ld.
 */
void OvlFunc_948_2009e94(void) {
    unsigned int r5;
    unsigned int r0;
    unsigned int r3;
    unsigned int r2;

    r5 = __MapActor_GetActor(0xe);
    r0 = __MapActor_GetActor(9);
    r3 = 0x80;
    r3 <<= 14;
    *(unsigned int *)((char *)r5 + 0xc) = r3;
    r3 = *(unsigned int *)((char *)r0 + 8);
    *(unsigned int *)((char *)r5 + 8) = r3;
    r2 = 0x80;
    r3 = *(unsigned int *)((char *)r0 + 0x10);
    r2 <<= 9;
    r3 += r2;
    *(unsigned int *)((char *)r5 + 0x10) = r3;
}
