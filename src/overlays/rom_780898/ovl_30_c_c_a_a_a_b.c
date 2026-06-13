/* Cluster OvlFunc_883_20089f0..OvlFunc_883_20089f0 extracted from goldensun/asm/overlays/rom_780898/ovl_30_c_c_a_a_a.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_780898/ovl_30_c_c_a_a_a_a.o and asm/overlays/rom_780898/ovl_30_c_c_a_a_a_c.o in
 * goldensun/overlays/rom_780898/overlay.ld.
 */
extern unsigned char L6e48[] __asm__(".L6e48");
extern unsigned char L6cc8[] __asm__(".L6cc8");
extern unsigned char L6ab8[] __asm__(".L6ab8");
extern unsigned char L68a8[] __asm__(".L68a8");
extern int gState;

unsigned char * OvlFunc_883_20089f0(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0x10) {
        return L6e48;
    }
    if (__GetFlag(0x87a) != 0) {
        return L6cc8;
    }
    if (__GetFlag(0x815) != 0) {
        return L6ab8;
    }
    return L68a8;
}
