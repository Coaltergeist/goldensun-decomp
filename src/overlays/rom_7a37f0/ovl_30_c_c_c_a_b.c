/* Cluster OvlFunc_916_20083c0..OvlFunc_916_20083c0 extracted from goldensun/asm/overlays/rom_7a37f0/ovl_30_c_c_c_a.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a37f0/ovl_30_c_c_c_a_a.o and asm/overlays/rom_7a37f0/ovl_30_c_c_c_a_c.o in
 * goldensun/overlays/rom_7a37f0/overlay.ld.
 */
extern unsigned int iwram_3001ad4[];
extern unsigned int L20d0[] __asm__(".L20d0");

void OvlFunc_916_20083c0(void) {
    unsigned int *src;
    unsigned int *dst;
    unsigned short *h;

    src = iwram_3001ad4;
    dst = L20d0;
    *dst++ = *src++;
    *dst++ = *src++;
    *dst = *src;

    h = (unsigned short *)L20d0;
    h[1] += 0xb0;
    h[3] += 0xb0;
    h[5] += 0xb0;
}
