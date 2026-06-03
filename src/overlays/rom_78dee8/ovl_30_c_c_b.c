/* Cluster OvlFunc_895_200879c..OvlFunc_895_200879c extracted from goldensun/asm/overlays/rom_78dee8/ovl_30_c_c.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78dee8/ovl_30_c_c_a.o and asm/overlays/rom_78dee8/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_78dee8/overlay.ld.
 */
extern unsigned char *iwram_3001ebc;

unsigned int OvlFunc_895_200879c(unsigned int arg0, unsigned int arg1)
{
    unsigned int *base;
    unsigned int *r2;
    unsigned int i;
    unsigned int *p;

    base = (unsigned int *)iwram_3001ebc;
    i = 8;
    r2 = (unsigned int *)((char *)base + 0x34);
    do {
        p = (unsigned int *)*r2;
        r2++;
        if (arg0 == ((int)*(unsigned int *)((char *)p + 8) >> 20)) {
            if (arg1 == ((int)*(unsigned int *)((char *)p + 0x10) >> 20))
                return (unsigned int)p;
        }
        i++;
    } while (i <= 0x41);
    return 0;
}
