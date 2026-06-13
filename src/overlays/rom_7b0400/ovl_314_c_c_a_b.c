/* Cluster OvlFunc_925_2008328..OvlFunc_925_2008328 extracted from goldensun/asm/overlays/rom_7b0400/ovl_314_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b0400/ovl_314_c_c_a_a.o and asm/overlays/rom_7b0400/ovl_314_c_c_a_c.o in
 * goldensun/overlays/rom_7b0400/overlay.ld.
 */
extern unsigned char gState[];
extern unsigned char L39d4[] __asm__(".L39d4");

unsigned int OvlFunc_925_2008328(void) {
    unsigned int r3;
    unsigned int r2;
    short val;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    val = *(short *)((char *)r3 + r2);
    if (val != 1) {
        __SetFlag(0x253);
    }
    return (unsigned int)L39d4;
}
