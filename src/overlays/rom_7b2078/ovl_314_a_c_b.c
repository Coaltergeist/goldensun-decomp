/* Cluster OvlFunc_926_2008324..OvlFunc_926_2008324 extracted from goldensun/asm/overlays/rom_7b2078/ovl_314_a_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b2078/ovl_314_a_c_a.o and asm/overlays/rom_7b2078/ovl_314_a_c_c.o in
 * goldensun/overlays/rom_7b2078/overlay.ld.
 */
int OvlFunc_926_2008324(int arg0) {
    int actor = (int)__MapActor_GetActor(0);
    *(unsigned short *)(arg0 + 6) = __atan2(
        *(int *)(actor + 16) - *(int *)(arg0 + 16),
        *(int *)(actor + 8) - *(int *)(arg0 + 8));
    return 0;
}
