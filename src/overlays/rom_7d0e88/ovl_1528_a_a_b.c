/* Cluster OvlFunc_947_20095cc..OvlFunc_947_20095cc extracted from goldensun/asm/overlays/rom_7d0e88/ovl_1528_a_a.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d0e88/ovl_1528_a_a_a.o and asm/overlays/rom_7d0e88/ovl_1528_a_a_c.o in
 * goldensun/overlays/rom_7d0e88/overlay.ld.
 */
extern unsigned int iwram_3001ad4;
extern unsigned char L372c[] __asm__(".L372c");

void OvlFunc_947_20095cc(void) {
    unsigned int *src;
    unsigned int *dst;
    unsigned short *h;

    src = &iwram_3001ad4;
    dst = (unsigned int *)L372c;
    *dst++ = *src++;
    *dst++ = *src++;
    *dst = *src;

    h = (unsigned short *)L372c;
    *(unsigned short *)((char *)h + 2) += 0xc0;
    *(unsigned short *)((char *)h + 6) += 0xc0;
    *(unsigned short *)((char *)h + 0xa) += 0xc0;
}
