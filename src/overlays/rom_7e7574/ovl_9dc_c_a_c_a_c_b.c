// fakematch
/* Cluster OvlFunc_959_200975c..OvlFunc_959_200975c extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_a_c_a_c.s.
 *
 * Total .text for this TU = 96 bytes (= 0x60).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_a_c_a_c_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_a_c_a_c_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern unsigned int iwram_3001ebc;
extern GlobalState gState;
extern int OvlFunc_959_20098e4(int);
extern void OvlFunc_959_20097bc(void);

void OvlFunc_959_200975c(void)
{
    unsigned int r3;
    unsigned int r2;
    unsigned char *r5;
    int r0;
    int x;

    r5 = (unsigned char *)iwram_3001ebc;
    r0 = ({ x = 0x225; __asm__("" : "+r"(x)); __GetFlag(x); });
    if (r0 == 0) {
        r0 = OvlFunc_959_20098e4(0xd);
        if (r0 != 0) {
            r3 = (unsigned int)&gState;
            r2 = 0x93;
            r2 <<= 2;
            r3 += r2;
            if (*(short *)r3 == 0) {
                __SetFlag(0x225);
                __StopTask(OvlFunc_959_200975c);
                __StopTask(OvlFunc_959_20097bc);
                r3 = 0xc1;
                r3 <<= 1;
                r2 = (unsigned int)r5 + r3;
                r3 = 0x60;
                *(unsigned short *)r2 = r3;
            }
        }
    }
}
