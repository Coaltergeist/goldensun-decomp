/* Cluster OvlFunc_931_2008338..OvlFunc_931_2008338 extracted from goldensun/asm/overlays/rom_7b8cb0/ovl_30_c_c_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b8cb0/ovl_30_c_c_c_c_c_c_c_c_a.o and asm/overlays/rom_7b8cb0/ovl_30_c_c_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7b8cb0/overlay.ld.
 */
unsigned int OvlFunc_931_2008338(void) {
    unsigned int r0;
    unsigned int r2;
    unsigned int r3;

    r0 = __MapActor_GetActor(0);
    r2 = 0x5fff;
    r3 = *(unsigned short *)((char *)r0 + 6);
    r3 += r2;
    r2 = 0x3ffe0000;
    r3 <<= 16;
    if (r3 <= r2) {
        return 1;
    }
    return 0;
}
