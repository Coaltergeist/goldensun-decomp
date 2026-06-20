/* Cluster OvlFunc_968_200894c..OvlFunc_968_200894c extracted from goldensun/asm/overlays/rom_7f2f14/ovl_30_a_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f2f14/ovl_30_a_c_a.o and asm/overlays/rom_7f2f14/ovl_30_a_c_c.o in
 * goldensun/overlays/rom_7f2f14/overlay.ld.
 */
void OvlFunc_968_200894c(unsigned int *arg0)
{
    int r5;
    r5 = 0x3c;
    while (r5 != 0) {
        __WaitFrames(1);
        if (*(unsigned int *)((char *)arg0 + 0x28) == 0)
            break;
        r5--;
    }
}
