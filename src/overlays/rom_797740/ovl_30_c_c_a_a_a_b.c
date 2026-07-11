/* Cluster OvlFunc_900_2008044..OvlFunc_900_2008044 extracted from goldensun/asm/overlays/rom_797740/ovl_30_c_c_a_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_797740/ovl_30_c_c_a_a_a_a.o and asm/overlays/rom_797740/ovl_30_c_c_a_a_a_c.o in
 * goldensun/overlays/rom_797740/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char L3bc[] __asm__(".L3bc");
extern unsigned char gOvl_0200835c[];

unsigned int OvlFunc_900_2008044(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 10) {
        return (unsigned int)L3bc;
    }
    return (unsigned int)gOvl_0200835c;
}
