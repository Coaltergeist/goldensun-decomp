// fakematch
/* Cluster OvlFunc_959_200969c..OvlFunc_959_200969c extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_a_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_a_c_a_a_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_a_c_a_a_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern unsigned char *iwram_3001ebc;
extern GlobalState gState;

void OvlFunc_959_200969c(void)
{
    unsigned char *r5;
    unsigned int r3;
    unsigned int r2;
    int x;

    r5 = iwram_3001ebc;
    if ((({ x = 0x214; __asm__ ("" : "+r" (x)); __GetFlag(x); })) == 0) {
        if (OvlFunc_959_2009660() == 0) {
            r3 = (unsigned int)&gState;
            r2 = 0x93;
            r2 <<= 2;
            r3 += r2;
            if (*(short *)r3 == 0) {
                if (OvlFunc_959_20098e4(0x11) != 0) {
                    __SetFlag(0x215);
                    (({ x = 0x214; __asm__ ("" : "+r" (x)); __SetFlag(x); }));
                }
            }
            if ((({ x = 0x214; __asm__ ("" : "+r" (x)); __GetFlag(x); })) != 0) {
                r3 = 0xc1;
                r3 <<= 1;
                r2 = (unsigned int)(r5 + r3);
                r3 = 0x5e;
                *(unsigned short *)r2 = r3;
            }
        }
    }
}
