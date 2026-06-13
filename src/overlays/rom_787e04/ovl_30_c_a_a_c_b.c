/* Cluster OvlFunc_887_20080b8..OvlFunc_887_20080b8 extracted from goldensun/asm/overlays/rom_787e04/ovl_30_c_a_a_c.s.
 *
 * Total .text for this TU = 96 bytes (= 0x60).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_787e04/ovl_30_c_a_a_c_a.o and asm/overlays/rom_787e04/ovl_30_c_a_a_c_c.o in
 * goldensun/overlays/rom_787e04/overlay.ld.
 */
extern unsigned char L2518[] __asm__(".L2518");
extern unsigned char L2410[] __asm__(".L2410");
extern unsigned char L2338[] __asm__(".L2338");
extern unsigned char L2218[] __asm__(".L2218");
extern unsigned int gState;

unsigned char * OvlFunc_887_20080b8(void) {
    unsigned int r3;
    unsigned int r2;
    unsigned char *r5;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0x13) {
        return L2518;
    }
    if (__GetFlag(0x87a) != 0) {
        r5 = L2410;
    } else if (__GetFlag(0x815) != 0) {
        r5 = L2338;
    } else {
        r5 = L2218;
    }
    __Func_808b868(r5);
    return r5;
}
