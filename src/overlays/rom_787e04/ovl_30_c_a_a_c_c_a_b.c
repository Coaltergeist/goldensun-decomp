/* Cluster OvlFunc_887_2008160..OvlFunc_887_2008160 extracted from goldensun/asm/overlays/rom_787e04/ovl_30_c_a_a_c_c_a.s.
 *
 * Total .text for this TU = 128 bytes (= 0x80).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_787e04/ovl_30_c_a_a_c_c_a_a.o and asm/overlays/rom_787e04/ovl_30_c_a_a_c_c_a_c.o in
 * goldensun/overlays/rom_787e04/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char L2c5c[] __asm__(".L2c5c");
extern unsigned char L2b9c[] __asm__(".L2b9c");
extern unsigned char L25a8[] __asm__(".L25a8");
extern unsigned char L2980[] __asm__(".L2980");
extern unsigned char L2800[] __asm__(".L2800");
extern unsigned char L26b0[] __asm__(".L26b0");

unsigned int OvlFunc_887_2008160(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0x13) {
        if (__GetFlag(0x950) != 0) {
            return (unsigned int)L2c5c;
        } else {
            return (unsigned int)L2b9c;
        }
    } else if (__GetFlag(0x834) != 0) {
        return (unsigned int)L25a8;
    } else if (__GetFlag(0x87a) != 0) {
        return (unsigned int)L2980;
    } else if (__GetFlag(0x815) != 0) {
        return (unsigned int)L2800;
    } else {
        return (unsigned int)L26b0;
    }
}
