/* Cluster OvlFunc_900_200806c..OvlFunc_900_200806c extracted from goldensun/asm/overlays/rom_797740/ovl_30_c_c_a_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_797740/ovl_30_c_c_a_a_a.o and asm/overlays/rom_797740/ovl_30_c_c_a_a_c.o in
 * goldensun/overlays/rom_797740/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
typedef struct { unsigned char _bytes[24]; } MapEntrance;
extern GlobalState gState;
extern MapEntrance MapEntrance_ARRAY_937__020084a0[2];
extern unsigned char L3ec[] __asm__(".L3ec");

unsigned int OvlFunc_900_200806c(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 10) {
        return (unsigned int)MapEntrance_ARRAY_937__020084a0;
    }
    return (unsigned int)L3ec;
}
