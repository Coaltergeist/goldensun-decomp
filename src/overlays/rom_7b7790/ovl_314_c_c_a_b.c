/* Cluster OvlFunc_929_2008328..OvlFunc_929_2008328 extracted from goldensun/asm/overlays/rom_7b7790/ovl_314_c_c_a.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b7790/ovl_314_c_c_a_a.o and asm/overlays/rom_7b7790/ovl_314_c_c_a_c.o in
 * goldensun/overlays/rom_7b7790/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char L9c8[] __asm__(".L9c8");
extern unsigned char L890[] __asm__(".L890");

unsigned int OvlFunc_929_2008328(void) {
    unsigned int r3;
    unsigned int r2;
    unsigned int r5;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 8) {
        return (unsigned int)L9c8;
    }
    r5 = (unsigned int)L890;
    __Func_808b868(r5);
    return r5;
}
