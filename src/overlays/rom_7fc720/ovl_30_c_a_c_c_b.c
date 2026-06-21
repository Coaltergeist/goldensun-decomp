/* Cluster OvlFunc_973_20080a0..OvlFunc_973_20080a0 extracted from goldensun/asm/overlays/rom_7fc720/ovl_30_c_a_c_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7fc720/ovl_30_c_a_c_c_a.o and asm/overlays/rom_7fc720/ovl_30_c_a_c_c_c.o in
 * goldensun/overlays/rom_7fc720/overlay.ld.
 */
void OvlFunc_973_20080a0(int r0, int r1) {
    int r5, r6;
    unsigned char *unit;
    r5 = r0;
    r6 = r1;
    unit = __GetUnit(r5);
    __SetMinLevel(r5, unit[0xf] + r6);
    __CalcStats(r5);
}
