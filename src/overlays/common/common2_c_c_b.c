/* Cluster OvlFunc_common2_2e4..OvlFunc_common2_2e4 extracted from goldensun/asm/overlays/common/common2_c_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/common/common2_c_c_a.o and asm/overlays/common/common2_c_c_c.o in
 * goldensun/overlays/rom_7bf5a8/overlay.ld.
 */
unsigned int OvlFunc_common2_2e4(int *p)
{
    unsigned int r2 = 0;
    if (*p == 4)
        r2 = 1;
    return r2;
}
