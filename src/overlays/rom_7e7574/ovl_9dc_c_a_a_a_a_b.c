/* Cluster OvlFunc_959_2009108..OvlFunc_959_2009108 extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_a_a_a_a.s.
 *
 * Total .text for this TU = 72 bytes (= 0x48).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_a_a_a_a_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_a_a_a_a_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
unsigned int OvlFunc_959_2009108(void) {
    int *p;
    int a, b;

    p = (int *)__MapActor_GetActor(0);
    a = p[4] / 0x100000;
    b = p[2] / 0x100000;
    if (a >= 5 && a <= 7 && b <= 0xa)
        return 1;
    if (b >= 8 && b <= 9 && a > 0x16)
        return 1;
    return 0;
}
