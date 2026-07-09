/* Cluster OvlFunc_909_2008214..OvlFunc_909_2008214 extracted from goldensun/asm/overlays/rom_79c738/ovl_30_c_c_a_c_a_a.s.
 *
 * Total .text for this TU = 120 bytes (= 0x78).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79c738/ovl_30_c_c_a_c_a_a_a.o and asm/overlays/rom_79c738/ovl_30_c_c_a_c_a_a_c.o in
 * goldensun/overlays/rom_79c738/overlay.ld.
 */
extern unsigned char *iwram_3001ebc;

void OvlFunc_909_2008214(void)
{
    unsigned short *p;
    unsigned long long t2;
    unsigned long v2;

    __CutsceneStart();
    if (__GetFlag(0x202)) {
        __MessageID(0x174b);
    } else if (__GetFlag(0x84e)) {
        __MessageID(0x176e);
    } else {
        __MessageID(0x1432);
        if (__GetFlag(0x84d)) {
            p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
            *p = *p + 1;
        }
    }
    t2 = 0x11;
    do { t2 = (unsigned long) t2; } while (0);
    v2 = t2;
    __ActorMessage(v2, 0);
    __CutsceneEnd();
}
