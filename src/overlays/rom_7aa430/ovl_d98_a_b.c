/* Cluster OvlFunc_923_2008e3c..OvlFunc_923_2008e3c extracted from goldensun/asm/overlays/rom_7aa430/ovl_d98_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7aa430/ovl_d98_a_a.o and asm/overlays/rom_7aa430/ovl_d98_a_c.o in
 * goldensun/overlays/rom_7aa430/overlay.ld.
 */
/* OvlFunc_923_2008e3c  [asm/overlays/rom_7aa430/ovl_d98_a.s]
 * Byte-identical twin of OvlFunc_924_2008dfc (keep in sync); zero 7 palette
 * u16s walking down from 0x50000de; pooled zero + branch-over-pool.
 */

void OvlFunc_923_2008e3c(void)
{
    unsigned int i = 0;
    unsigned int j = 0;

    do {
        i++;
        *(unsigned short *)(0x50000de - j * 2) = 0;
        j++;
    } while (i <= 6);
}
