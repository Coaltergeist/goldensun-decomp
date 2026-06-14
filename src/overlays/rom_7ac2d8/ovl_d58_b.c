/* Cluster OvlFunc_924_2008dfc..OvlFunc_924_2008dfc extracted from goldensun/asm/overlays/rom_7ac2d8/ovl_d58.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ac2d8/ovl_d58_a.o and asm/overlays/rom_7ac2d8/ovl_d58_c.o in
 * goldensun/overlays/rom_7ac2d8/overlay.ld.
 */
/* OvlFunc_924_2008dfc  [asm/overlays/rom_7ac2d8/ovl_d58.s]
 * Zero 7 palette u16s walking down from 0x50000de. ROM has a POOLED zero
 * (ldr r1,=0) and the early branch-over-pool; same artifact family as
 * Func_80b09fc. Byte-identical twin: OvlFunc_923_2008e3c (keep in sync).
 */

void OvlFunc_924_2008dfc(void)
{
    unsigned int i = 0;
    unsigned int j = 0;

    do {
        i++;
        *(unsigned short *)(0x50000de - j * 2) = 0;
        j++;
    } while (i <= 6);
}
