/* Cluster OvlFunc_888_2008030..OvlFunc_888_2008030 extracted from goldensun/asm/overlays/rom_7892c8/ovl_30_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7892c8/ovl_30_a_a_a.o and asm/overlays/rom_7892c8/ovl_30_a_a_c.o in
 * goldensun/overlays/rom_7892c8/overlay.ld.
 */
int OvlFunc_888_2008030(int arg0) {
    int *r2;
    int r3;

    r2 = (int *)__MapActor_GetActor(*(short *)((char *)arg0 + 0x64));
    r3 = *(int *)((char *)arg0 + 0x10);
    *(short *)((char *)arg0 + 6) = __atan2(
        *(int *)((char *)r2 + 0x10) - r3,
        *(int *)((char *)r2 + 8) - *(int *)((char *)arg0 + 8));
    return 0;
}
