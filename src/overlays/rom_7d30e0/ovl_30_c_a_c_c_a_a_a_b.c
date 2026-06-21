/* Cluster OvlFunc_948_2008aa8..OvlFunc_948_2008aa8 extracted from goldensun/asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_a_a.o and asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_a_c.o in
 * goldensun/overlays/rom_7d30e0/overlay.ld.
 */
int OvlFunc_948_2008aa8(int arg0) {
    int r5, r2, r3;
    r5 = arg0;
    r2 = __MapActor_GetActor(0);
    r3 = *(int *)((char *)r5 + 0x10);
    *(short *)((char *)r5 + 6) = __atan2(*(int *)((char *)r2 + 0x10) - r3, *(int *)((char *)r2 + 8) - *(int *)((char *)r5 + 8));
    return 0;
}
