/* Cluster OvlFunc_884_2008158..OvlFunc_884_2008158 extracted from goldensun/asm/overlays/rom_784360/ovl_30_c_a_a_a_c_c_a_a_a.s.
 *
 * Total .text for this TU = 108 bytes (= 0x6c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_784360/ovl_30_c_a_a_a_c_c_a_a_a_a.o and asm/overlays/rom_784360/ovl_30_c_a_a_a_c_c_a_a_a_c.o in
 * goldensun/overlays/rom_784360/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char L3cec[] __asm__(".L3cec");
extern unsigned char L3b3c[] __asm__(".L3b3c");
extern unsigned char L3b30[] __asm__(".L3b30");
extern unsigned char L3a64[] __asm__(".L3a64");
extern unsigned char gOvl_0200b938[];

unsigned int OvlFunc_884_2008158(void) {
    short *p;
    unsigned int r2;

    if (__GetFlag(0x87a) != 0) {
        return (unsigned int)L3cec;
    } else if (__GetFlag(0x815) != 0) {
        return (unsigned int)L3b3c;
    } else {
        r2 = 0xe1;
        r2 <<= 1;
        p = (short *)((char *)&gState + r2);
        if (*p == 0xc) {
            return (unsigned int)L3b30;
        } else if (__GetFlag(0x834) != 0) {
            return (unsigned int)L3a64;
        } else {
            return (unsigned int)gOvl_0200b938;
        }
    }
}
