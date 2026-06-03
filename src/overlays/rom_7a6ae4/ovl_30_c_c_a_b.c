/* Cluster OvlFunc_920_20087c4..OvlFunc_920_20087c4 extracted from goldensun/asm/overlays/rom_7a6ae4/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a6ae4/ovl_30_c_c_a_a.o and asm/overlays/rom_7a6ae4/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7a6ae4/overlay.ld.
 */
extern unsigned char iwram_3001ebc;

unsigned int OvlFunc_920_20087c4(unsigned int arg0, unsigned int arg1)
{
    unsigned int *base;
    unsigned char *r2;
    unsigned int i;

    base = (unsigned int *)*(unsigned int *)&iwram_3001ebc;
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
