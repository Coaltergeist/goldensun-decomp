/* Cluster OvlFunc_930_2008054..OvlFunc_930_2008054 extracted from goldensun/asm/overlays/rom_7b7f1c/ovl_30_a_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b7f1c/ovl_30_a_c_a.o and asm/overlays/rom_7b7f1c/ovl_30_a_c_c.o in
 * goldensun/overlays/rom_7b7f1c/overlay.ld.
 */
int OvlFunc_930_2008054(char *arg0) {
    char *r5 = arg0;
    int actor = __MapActor_GetActor(0xa);
    *(short *)(r5 + 6) = __atan2(*(int *)(actor + 0x10) - *(int *)(r5 + 0x10), *(int *)(actor + 8) - *(int *)(r5 + 8));
    return 0;
}
