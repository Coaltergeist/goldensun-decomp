/* Cluster OvlFunc_884_20080b8..OvlFunc_884_20080b8 extracted from goldensun/asm/overlays/rom_784360/ovl_30_c_a_a_a_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_784360/ovl_30_c_a_a_a_c_a_a.o and asm/overlays/rom_784360/ovl_30_c_a_a_a_c_a_c.o in
 * goldensun/overlays/rom_784360/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char L3380[] __asm__(".L3380");
extern unsigned char L3560[] __asm__(".L3560");
extern unsigned char L37d0[] __asm__(".L37d0");
extern unsigned char L3170[] __asm__(".L3170");

unsigned int OvlFunc_884_20080b8(void) {
    unsigned int r3;
    unsigned int r2;
    short *p;

    if (__GetFlag(0x834) != 0) {
        return (unsigned int)L3380;
    }
    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    p = (short *)r3;
    if (*p == 0xc) {
        return (unsigned int)L3560;
    }
    if (__GetFlag(0x87a) != 0) {
        return (unsigned int)L37d0;
    }
    return (unsigned int)L3170;
}
