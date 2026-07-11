/* Cluster OvlFunc_945_20080d8..OvlFunc_945_20080d8 extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_a_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_a_c_a.o and asm/overlays/rom_7cb2c0/ovl_30_a_c_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
void OvlFunc_945_20080d8(unsigned char *p)
{
    unsigned char *c;
    unsigned int v;

    c = p + 0x62;
    v = *c + 1;
    *c = v;
    if ((v << 24) > (0xa0 << 23)) {
        unsigned short *c2 = (unsigned short *)(p + 0x66);
        *c2 = *c2 + 1;
    }
}
