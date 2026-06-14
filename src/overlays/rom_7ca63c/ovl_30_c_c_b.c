/* Cluster OvlFunc_944_2009130..OvlFunc_944_2009130 extracted from goldensun/asm/overlays/rom_7ca63c/ovl_30_c_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ca63c/ovl_30_c_c_a.o and asm/overlays/rom_7ca63c/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7ca63c/overlay.ld.
 */
extern unsigned int OvlFunc_944_200915c(unsigned int);

unsigned int OvlFunc_944_2009130(void)
{
    unsigned int r6;
    unsigned int r5;

    r6 = OvlFunc_944_200915c(0);
    r6 += OvlFunc_944_200915c(2);
    r5 = OvlFunc_944_200915c(1);
    r5 += OvlFunc_944_200915c(3);
    return r6 - r5;
}
