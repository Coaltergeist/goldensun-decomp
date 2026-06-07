/* Cluster OvlFunc_common2_2f4..OvlFunc_common2_2f4 extracted from goldensun/asm/overlays/common/common2_c_c_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/common/common2_c_c_c_a.o and asm/overlays/common/common2_c_c_c_c.o in
 * goldensun/overlays/rom_7bf5a8/overlay.ld.
 */
unsigned int OvlFunc_common2_2f4(int *p)
{
    unsigned int result;
    result = 0;
    if (*p == 2)
        result = 1;
    return result;
}
