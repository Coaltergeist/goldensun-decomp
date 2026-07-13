/* Cluster OvlFunc_959_20094cc..OvlFunc_959_20094cc extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_a_a_c_a.s.
 *
 * Total .text for this TU = 92 bytes (= 0x5c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_a_a_c_a_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_a_a_c_a_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
unsigned int OvlFunc_959_20094cc(void) {
    int *p;
    int a, b;

    p = (int *)__MapActor_GetActor(0);
    a = p[4] / 0x100000;
    b = p[2] / 0x100000;
    if ((b >= 0x29 && b <= 0x2c && a > 0x19 && a <= 0x1c) ||
        (b == 0x29 && a > 0x25 && a <= 0x29))
        return 1;
    if (b >= 0x36 && b <= 0x38 && a > 0x1e && a <= 0x28)
        return 1;
    return 0;
}
