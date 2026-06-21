/* Cluster OvlFunc_897_2008f30..OvlFunc_897_2008f30 extracted from goldensun/asm/overlays/rom_791794/ovl_30_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_791794/ovl_30_c_a_a.o and asm/overlays/rom_791794/ovl_30_c_a_c.o in
 * goldensun/overlays/rom_791794/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern int OvlFunc_897_2008054(void);

int OvlFunc_897_2008f30(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0xa) {
        __StartEarthquake();
        OvlFunc_897_2008054();
    }
    return 0;
}
