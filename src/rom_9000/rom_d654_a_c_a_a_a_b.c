/* Cluster Actor_FindScriptMarker..Actor_FindScriptMarker extracted from goldensun/asm/rom_9000/rom_d654_a_c_a_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_d654_a_c_a_a_a_a.o and asm/rom_9000/rom_d654_a_c_a_a_a_c.o in
 * goldensun/stage1.ld.
 */
int Actor_FindScriptMarker(unsigned int arg0, unsigned int arg1)
{
    unsigned short *addr;
    unsigned short zero;
    unsigned int *r2;
    unsigned int r3;
    int r0;
    int r4;

    addr = (unsigned short *)((char *)arg0 + 0x5e);
    zero = 0;
    *addr = zero;
    if (arg1 == 0) {
        return 0;
    }
    arg1 &= 0xbfffffff;
    r2 = *(unsigned int **)arg0;
    r4 = 0x3ff;
    r0 = 0;
    do {
        r3 = *r2++;
        if (r3 == arg1) {
            return r0 + 1;
        }
        r0++;
    } while (r0 <= r4);
    return 0;
}
