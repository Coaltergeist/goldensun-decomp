/* Cluster OvlFunc_945_20080b0..OvlFunc_945_20080b0 extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_a_a.o and asm/overlays/rom_7cb2c0/ovl_30_a_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
extern unsigned int __Func_8004458(unsigned int);

unsigned int OvlFunc_945_20080b0(unsigned char *arg0) {
    unsigned int v;
    unsigned int t;
    v = (__Func_8004458((unsigned int)arg0) << 6) >> 16;
    if (v == 6) {
        t = 0xc0;
        *(unsigned short *)(arg0 + 6) = t << 6;
    } else if (v == 9) {
        t = 0xa0;
        *(unsigned short *)(arg0 + 6) = t << 7;
    }
    return 1;
}
