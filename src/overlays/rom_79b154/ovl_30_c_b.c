/* Cluster OvlFunc_907_2008d80..OvlFunc_907_2008d80 extracted from goldensun/asm/overlays/rom_79b154/ovl_30_c.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79b154/ovl_30_c_a.o and asm/overlays/rom_79b154/ovl_30_c_c.o in
 * goldensun/overlays/rom_79b154/overlay.ld.
 */
extern unsigned int iwram_3001ebc;

unsigned int OvlFunc_907_2008d80(unsigned int arg0, unsigned int arg1)
{
    unsigned int *base;
    unsigned char *r2;
    unsigned int i;

    base = (unsigned int *)iwram_3001ebc;
    i = 8;
    r2 = (unsigned char *)base + 0x34;
    for (; i <= 0x41; i++) {
        unsigned int *p = *(unsigned int **)r2;
        r2 += 4;
        if (arg0 == ((int)*(unsigned int *)((char *)p + 8) >> 20) &&
            arg1 == ((int)*(unsigned int *)((char *)p + 0x10) >> 20))
            return (unsigned int)p;
    }
    return 0;
}
