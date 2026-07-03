/* Cluster OvlFunc_944_200807c..OvlFunc_944_200807c extracted from goldensun/asm/overlays/rom_7ca63c/ovl_30_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ca63c/ovl_30_a_a_a.o and asm/overlays/rom_7ca63c/ovl_30_a_a_c.o in
 * goldensun/overlays/rom_7ca63c/overlay.ld.
 */
unsigned int __Random(unsigned int seed);

unsigned int OvlFunc_944_200807c(unsigned char *arg0)
{
    unsigned int v;
    unsigned int t;

    v = (__Random((unsigned int)arg0) << 6) >> 16;
    if (v == 6) {
        t = 0xd0;
        *(unsigned short *)(arg0 + 6) = t << 8;
    } else if (v == 9) {
        t = 0xb0;
        *(unsigned short *)(arg0 + 6) = t << 8;
    }
    return 1;
}
