/* Cluster OvlFunc_935_2008134..OvlFunc_935_2008134 extracted from goldensun/asm/overlays/rom_7bf5a8/ovl_30_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bf5a8/ovl_30_c_a.o and asm/overlays/rom_7bf5a8/ovl_30_c_c.o in
 * goldensun/overlays/rom_7bf5a8/overlay.ld.
 */
extern unsigned int iwram_3001ebc;

unsigned int OvlFunc_935_2008134(unsigned int arg0, unsigned int arg1)
{
    unsigned int *base;
    unsigned int *r2;
    unsigned int i;

    i = 8;
    base = (unsigned int *)iwram_3001ebc;
    r2 = (unsigned int *)((char *)base + 0x34);
    do {
        unsigned char *r0;
        r0 = (unsigned char *)*r2;
        r2++;
        if ((int)arg0 == ((int)*(unsigned int *)(r0 + 8) >> 20) &&
            (int)arg1 == ((int)*(unsigned int *)(r0 + 0x10) >> 20) &&
            *(unsigned char *)(r0 + 0x59) != 0)
            return (unsigned int)r0;
        i++;
    } while (i <= 0x41);
    return 0;
}
