/* Cluster OvlFunc_940_200804c..OvlFunc_940_200804c extracted from goldensun/asm/overlays/rom_7c5974/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c5974/ovl_30_c_c_a_a.o and asm/overlays/rom_7c5974/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7c5974/overlay.ld.
 */
extern unsigned char Lc98[] __asm__(".Lc98");
extern unsigned char La64[] __asm__(".La64");
extern unsigned char L824[] __asm__(".L824");
extern int gState;

unsigned int OvlFunc_940_200804c(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0xa) {
        return (unsigned int)Lc98;
    } else if (__GetFlag(0x941) != 0) {
        return (unsigned int)La64;
    } else {
        return (unsigned int)L824;
    }
}
